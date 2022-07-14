# This script is used to create a SSL certificate that can be used to sign drivers

cd /usr/src/linux-headers-$(uname -r)/certs
sudo openssl req -new -x509 -newkey rsa:2048 -keyout signing_key.pem -outform DER -out signing_key.x509 -nodes -subj "/CN=Owner/"
