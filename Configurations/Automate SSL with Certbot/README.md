## Automate SSL with Certbot and Apache

Following the tutorial from [Certbot](https://certbot.eff.org/lets-encrypt/ubuntubionic-apache.html)

### Step 1: Install Certbot

```
sudo apt-get update -y
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y certbot python3-certbot-apache
```
### Step 2: Choose how you'd like to run Certbot

#### Either get and install your certificates... 
```
sudo certbot --apache
```

#### Or, just get a certificate 

```
sudo certbot certonly --apache
```

### Step 3: Test automatic renewal

```
sudo certbot renew --dry-run
```

