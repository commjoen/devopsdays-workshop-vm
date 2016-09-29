
set -e

echo "Provision user profile..."

cp -r /vagrant/intellij/dotIdeaIC2016.2 ~vagrant/.IdeaIC2016.2

echo "Installing plugins..."

mkdir -p ~vagrant/.IdeaIC2016.2/config/plugins
cd ~vagrant/.IdeaIC2016.2/config/plugins
wget -O idea-fitnesse.zip "https://plugins.jetbrains.com/plugin/download?pr=idea&updateId=27503"
unzip -o idea-fitnesse.zip
wget -O cucumber.zip "https://plugins.jetbrains.com/plugin/download?pr=&updateId=25772"
unzip -o cucumber.zip
wget -O cucumber-java.zip "https://plugins.jetbrains.com/plugin/download?pr=idea&updateId=25773"
unzip -o cucumber-java.zip

mkdir -p ~vagrant/academy-day

cd ~vagrant/academy-day
git clone https://github.com/amolenaar/test-automation-training.git

( cd test-automation-training && ./gradlew idea; )
