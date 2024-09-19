# EC2 web server with VPC 


Your task, should you choose to accept, is to create and deploy a simple EC2 instance housing a web server with a simple html landing page that prints "Hello World!". Make sure you allow hhtp and ssh access to the server. 

Also, create a VPC with a public subnet. The instance should reside in this subnet and should be exposed to the internet via a public ip address. Think about using internet gateway and route table.

You should be greeted with a "Hello World!" message once you access the web server.


## Skills Practised

- Configuring a VPC equipped with a subnet
- Configuring an EC2 instance with a route to the internet



![image](https://www.uturndata.com/wp-content/uploads/2021/02/public-subnet-traffic-1024x630.png)


## Deploy

```bash
terraform init # Initialises Terraform
terraform apply # Deploys AWS stack
terraform destroy # Destroys AWS stack
```

## Generate SSH key pair

```bash
ssh-keygen -t ed25519 -f ~/.ssh/my-key.pub
eval `ssh-agent -s`
ssh-add ~/.ssh/key-example
```

## Connect to EC2 instance

```
chmod 600 ~/.ssh/my-key
ssh -i ~/.ssh/my-key ec2-user@<EC2-PUBLIC-IP>
```

