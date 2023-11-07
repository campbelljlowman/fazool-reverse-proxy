# fazool-reverse-proxy
Reverse proxy for fazool apis

# For generating ssl certificates
Since domain is hosted by google, we can use their free certificate authority
Follow the guide here: https://support.google.com/domains/answer/7630973?authuser=0&hl=en#zippy=%2Chttps-from-web-hosts%2Cget-an-ssltls-certificate-from-a-certificate-authority

The certbot commands need to be ran on the server running nginx/pointed to by dns. Account creation only needs to be done once

certbot certonly -d <YOUR_DOMAIN> --server "https://dv.acme-v02.api.pki.goog/directory" --standalone