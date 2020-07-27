## Apache Self Signed SSL Certificates

Following the instructions from [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-16-04)

For this tutorial, I'm assuming you're going to be using the **example.com.conf** file from the repository.

### Step 1: Create the SSL certificate
```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
```

**Fill out the prompts appropriately. The most important line is the one that requests the Common Name (e.g. server FQDN or YOUR name). You need to enter the domain name associated with your server or, more likely, your server’s public IP address.**
If using for the IP access only certificate in the example.com.conf please use **"NA"** for all values where posible.

#### Perfect Forward Secrecy Configuration
```
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 4096
```

