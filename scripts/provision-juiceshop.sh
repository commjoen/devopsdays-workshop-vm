echo "Provisioning juice-shop..."

cd Documents
cd workspace
git clone https://github.com/bkimminich/juice-shop.git

sudo chown vagrant:vagrant juice-shop -R
