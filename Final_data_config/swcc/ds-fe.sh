#!/bin/bash

cd /home/ubuntu/mjlsi-digitalsignature

# sudo git reset --hard

# sudo git pull

cd Code/mjlsi-ds

sudo rm package-lock.json
sudo npm i -f
sudo npm ddp -f
sudo mkdir -p /home/ubuntu/mjlsi-digitalsignature/Code/mjlsi-ds/dist/
sudo chmod -R 777 /home/ubuntu/mjlsi-digitalsignature/Code/mjlsi-ds/dist/
sudo NODE_OPTIONS=--openssl-legacy-provider ng build  --configuration=swcc --base-href  /ds/
sudo cp -R  dist/* /var/www/html/app/ds

