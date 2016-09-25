
set -e

IDEA_ARCHIVE=ideaIC-2016.2.4.tar.gz
IDEA_VERSION=idea-IC-162.2032.8


mkdir -p /opt
wget -O "/tmp/${IDEA_ARCHIVE}" "https://download.jetbrains.com/idea/${IDEA_ARCHIVE}"

tar zxf ${IDEA_ARCHIVE} -C /opt
rm "/tmp/${IDEA_ARCHIVE}"

cat > /usr/share/applications/idea.desktop << EOF
[Desktop Entry]                                                                 
Encoding=UTF-8
Name=IntelliJ IDEA
Comment=IntelliJ IDEA
Exec=/opt/${IDEA_VERSION}/bin/idea.sh
Icon=/opt/${IDEA_VERSION}/bin/idea.png
Terminal=false
StartupNotify=true
Type=Application
EOF

echo "Provision user profile..."

cp -r /vagrant/intellij/dotIdeaIC2016.2 ~vagrant/.IdeaIC2016.2

echo "Installing plugins..."

mkdir -p ~vagrant/.IdeaIC2016.2/system/plugins
cd ~vagrant/.IdeaIC2016.2/system/plugins
wget -O idea-fitnesse.zip "https://plugins.jetbrains.com/plugin/download?pr=idea&updateId=27503"
unzip idea-fitnesse.zip
wget -O cucumber-java.zip "https://plugins.jetbrains.com/plugin/download?pr=idea&updateId=25773"
unzip cucumber-java.zip


chown -R vagrant:vagrant ~vagrant/.IdeaIC2016.2
