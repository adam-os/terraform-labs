[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# Terraform Labs

Welcome to **Terraform Labs**, a comprehensive collection of labs designed to teach Terraform from the ground up. Whether you're new to infrastructure as code (IaC) or looking to deepen your understanding of real-world cloud applications, this repository will guide you through the essentials and beyond.


## Structure

The repository is organised into two main sections:

1. **Beginner Labs**:  
   - Start here if you’re new to Terraform. These labs provide a solid foundation, covering essential Terraform commands and configurations.
   - Topics include: 
     - Writing your first configuration file
     - Managing state
     - Using variables and outputs
     - Working with modules

2. **Project Labs**:  
   - Move on to this section after mastering the basics. Here, you’ll find hands-on projects that reflect real-life cloud infrastructure use cases.
   - Projects include:
     - Setting up a two-tier architecture in AWS
     - Hosting a web app on an EC2 instance
     - And more...

## Getting Started

1. **Clone the repository**:
    ```bash
    git@github.com:adam-os/terraform-labs.git
    ```

2. **Navigate to the lab directory** of your choice:
    ```bash
    cd terraform-labs/0-terraform-basics
    ```

3. **Follow the instructions** in the README file of each lab to get started.

## Prerequisites

Before diving into the labs, make sure you have the following installed:

- [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-prereq)
- A `default` AWS CLI profile (see doc [here](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-profiles))

```bash
aws configure # Configure your AWS CLI profile
```

## Deploying Infrastructure

```bash
terraform init # Initialises Terraform
terraform apply # Deploys AWS stack
terraform destroy # Destroys AWS stack
```

## Contributing

We welcome contributions! If you’d like to add new labs, improve the existing content, or report any issues, feel free to open a pull request or create an issue.

## License

This project is licensed under the Apache License. See the [License](https://opensource.org/licenses/Apache-2.0) file for more details.

