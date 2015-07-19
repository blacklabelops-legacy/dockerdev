#!/bin/bash

#Install gcloud
sudo yum install -y unzip
sudo wget --no-check-certificate --directory-prefix=/opt/ https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.zip
sudo unzip /opt/google-cloud-sdk.zip -d /opt/
sudo rm /opt/google-cloud-sdk.zip
sudo chown -R vagrant:vagrant /opt/google-cloud-sdk/
/opt/google-cloud-sdk/install.sh --usage-reporting=true --path-update=true --bash-completion=true --rc-path=/home/vagrant/.bashrc --disable-installation-options
