# Two Tier Architecture in AWS


For this task create:

- A VPC with 2 public subnets and 2 private subnets
- A load balancer that will direct traffic to the public subnets and 1 EC2 instance in each public subnet
- An RDS MySQL instance in one of the private subnets
- Use resources only and not modules


![image](https://www.devopshint.com/wp-content/uploads/2023/11/image-35.png)


At the end of the task, verify that:

- VPC is created with 2 availability zones housing a public and private subnet each
- The RDS instance sits in the private subnet and is not accessible via the internet
- The 2 EC2 instances are accessible via the internet and traffic is controlled by Application Loadbalancer. After stopping one instance, the ALB should direct taffic to other available instance

## Skills Practised

- Configuring a highly available application through the usage of an ALB, target group and listeners
- Securing a database in a private subnet