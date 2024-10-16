#!/bin/bash

cd /home/ubuntu/mjlsi-digitalsignature

# sudo git reset --hard

# sudo git pull

cd Code/WebAPI

sudo rm appsettings.json
sudo rm appsettings.Development.json  
sudo rm appsettings.sadu.json
sudo rm appsettings.mjlsi.json
sudo rm appsettings.stc.json
sudo rm appsettings.tadqiq.json  
sudo rm appsettings.tadqiq-test.json
sudo rm appsettings.mjlsi-test.json
sudo cp appsettings.swcc.json appsettings.json
sudo dotnet build --configuration Release
sudo dotnet publish --configuration Release
sudo dotnet new tool-manifest
sudo dotnet tool install dotnet-ef --version 6.0.4
sudo dotnet dotnet-ef database update
sudo cp -R  /home/ubuntu/mjlsi-digitalsignature/Code/WebAPI/bin/Release/net6.0/publish/* /var/www/html/app/ds-api
sudo cp -R  /home/ubuntu/mjlsi-digitalsignature/Code/WebAPI/EmailTemplates /var/www/html/app/ds-api
sudo systemctl stop kestrel-ds-api.service
sudo systemctl start kestrel-ds-api.service
sudo mkdir -p /var/www/html/app/ds-api/wwwroot/uploads
sudo mkdir -p /var/www/html/app/ds-api/logs
sudo chmod -R 777 /var/www/html/app/ds-api/wwwroot/uploads /var/www/html/app/ds-api/wwwroot/uploads/ /var/www/html/app/ds-api/logs /var/www/html/app/ds-api/logs/

