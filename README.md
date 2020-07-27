# Hardening Apache Web Servers
### A collection of example configurations and scripts to aid system administrators in hardening Apache web servers.

Apache, out of the box, is surprisingly insecure. Many best practices and security configurations have to be configured manually before rolling Apache out in a production environment. You may use this GitHub repository as a starting point towards securing your Apache instances.


### ModSecurity
We'll start with one of the most important changes, implementing ModSecurity with OWASP ModSecurity configurations.

Please read [this](https://github.com/simeononsecurity/Apache-Web-Server-Hardening/tree/master/Configurations/ModSecurity%20with%20OWASP%20Core%20Rule%20Set) for instructions.

### SSL Certificates

#### Self Signed
Please read [this](https://github.com/simeononsecurity/Apache-Web-Server-Hardening/tree/master/Configurations/Self-Signed%20SSL%20Certificate) for instructions.

#### Automate with LetsEncrypt and Certbot
Please read [this](https://github.com/simeononsecurity/Apache-Web-Server-Hardening/tree/master/Configurations/Automate%20SSL%20with%20Certbot) for instructions.

