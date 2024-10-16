#!/bin/bash

cd /home/ubuntu/mjlsi
#!/bin/bash

# sudo git reset --hard

# sudo git pull

cd Code/FrontEnd

sudo rm package-lock.json
sudo npm i -f
sudo ng build  --configuration=swcc --base-href  /app/
sudo cp -a  dist/* /var/www/html/app

