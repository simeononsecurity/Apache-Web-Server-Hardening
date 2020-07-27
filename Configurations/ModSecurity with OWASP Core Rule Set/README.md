## Installing ModSecurity with OWASP Core Rule Set

### Step 1: Update Repositories
**On Ubuntu/ Debian:**
```
sudo apt-get update -y
```
**On CentOS/RHEL:**
``` 
sudo yum update -y
```

### Step 2: Installing ModSecurity for Apache
**On Ubuntu/ Debian:**
```
sudo apt-get install -y libapache2-modsecurity
sudo systemctl restart apache2
```
**On CentOS/RHEL:**
``` 
sudo yum install -y mod_security
sudo systemctl restart httpd.service
```

### Step 3: Configure ModSecurity

ModSecurity by default is only configured to log events from the default rules. We'll have to edit the configuration file to modify the rules to detect and block malicious traffic.

**Copy and rename the file:**
```
sudo cp /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf
```
**Change the ModSecurity detection mode by editing the configuration file:**
```
sudo nano /etc/modsecurity/modsecurity.conf
```
Change "DetectionOnly" to "On"
```
SecRuleEngine DetectionOnly
```
```
SecRuleEngine On
```
If you're using nano you may hit **CTRL+X**, then **Y** and **Enter** to save and exit.

**Restart Apache**

On Ubuntu\ Debian:
```
sudo systemctl restart apache2
```

On CentOS\ RHEL:
```
sudo systemctl restart httpd.service
```
### Step 4: Downloading and Installing OWASP ModSecurity Core Rule Set

```
cd /apache/conf
wget https://github.com/coreruleset/coreruleset/archive/v3.3.0.tar.gz
tar -xvzf v3.3.0.tar.gz
sudo ln -s coreruleset-3.3.0 /apache/conf/crs
cp crs/crs-setup.conf.example crs/crs-setup.conf
rm v3.3.0.tar.gz
```
**Restart Apache**

On Ubuntu\ Debian:
```
sudo systemctl restart apache2
```

On CentOS\ RHEL:
```
sudo systemctl restart httpd.service
```
### Step 5: Additional Reading Material

**Additional installation instructions:**

[Install OWASP ModSecurity Core Rule Set](https://owasp.org/www-project-modsecurity-core-rule-set/)


[Install ModSecurity](https://phoenixnap.com/kb/setup-configure-modsecurity-on-apache)
