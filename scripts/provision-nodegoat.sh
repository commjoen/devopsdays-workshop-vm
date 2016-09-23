echo "Provisioning NodeGoat..."

config.vm.provider "virtualbox" do |v|
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
end

cd Documents
mkdir workspace
cd workspace
git clone https://github.com/OWASP/NodeGoat.git

cd NodeGoat

echo "--- Installing Grunt and Bower ---"
sudo npm install -g grunt@0.4.5 grunt-cli bower

sudo add-apt-repository ppa:chris-lea/node.js
$MONGOCONFIG="db: \"mongodb://localhost:27017/nodegoat\""
sed -i '2i\'"$MONGOCONFIG" ./config/env/development.js


npm install

npm install chromedriver

grunt db-reset:development

cd test
mkdir workshop
echo "#Here we create our testfile" > ./workshop/e2etest.js
cd ..
sudo chown vagrant:vagrant NodeGoat -R
