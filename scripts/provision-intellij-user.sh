
set -e

echo "Provision user profile..."

cp -r /vagrant/intellij/dotIdeaIC2016.2 ~vagrant/.IdeaIC2016.2

echo "Installing plugins..."

mkdir -p ~vagrant/.IdeaIC2016.2/config/plugins
cd ~vagrant/.IdeaIC2016.2/config/plugins
wget -O idea-fitnesse.zip "https://plugins.jetbrains.com/plugin/download?pr=idea&updateId=27503"
unzip idea-fitnesse.zip
wget -O cucumber-java.zip "https://plugins.jetbrains.com/plugin/download?pr=idea&updateId=25773"
unzip cucumber-java.zip

mkdir -p ~/.IdeaProjects

cd IdeaProjects
git clone https://github.com/amolenaar/test-automation-training.git

( cd test-automation-training && ./gradlew idea; )
