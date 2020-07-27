sudo apt-get update -y
sudo yum update -y
sudo apt-get install -y libapache2-modsecurity
sudo yum install -y mod_security
sudo cp /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf
cd /apache/conf
wget https://github.com/coreruleset/coreruleset/archive/v3.3.0.tar.gz
tar -xvzf v3.3.0.tar.gz
sudo ln -s coreruleset-3.3.0 /apache/conf/crs
cp crs/crs-setup.conf.example crs/crs-setup.conf
rm v3.3.0.tar.gz
sudo systemctl restart apache2
sudo systemctl restart httpd.service