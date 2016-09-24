
IDEA_ARCHIVE=ideaIC-2016.2.4.tar.gz
IDEA_VERSION=idea-IC-162.2032.8
cd /tmp
wget https://download.jetbrains.com/idea/${IDEA_ARCHIVE}

mkdir -p /opt
tar zxf ${IDEA_ARCHIVE} -C /opt

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

