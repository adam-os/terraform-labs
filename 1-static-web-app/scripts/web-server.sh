 #!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
echo "Hello World!" > /var/www/html/index.html