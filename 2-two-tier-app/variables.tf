variable "region" {
  default = "us-east-1"
}

variable "cidr_vpc" {
  description = "CIDR block for VPC"
  default     = "10.1.0.0/16"
}

variable "cidr_public_subnet_1" {
  description = "CIDR block for public subnet"
  default     = "10.1.1.0/24"
}

variable "cidr_public_subnet_2" {
  description = "CIDR block for public subnet"
  default     = "10.1.2.0/24"
}

variable "cidr_private_subnet_1" {
  description = "CIDR block for public subnet"
  default     = "10.1.3.0/24"
}

variable "cidr_private_subnet_2" {
  description = "CIDR block for public subnet"
  default     = "10.1.4.0/24"
}

variable "availability_zone_a" {
  description = "availability zone for public subnet"
  default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "availability zone for public subnet"
  default     = "us-east-1b"
}

variable "instance_type" {
  description = "AWS EC2 instance"
  default     = "t2.micro"
}

variable "public_key_path" {
  description = "Public key path"
  default     = "<path-to-key>"
}

variable "rds_database_username" {
  description = "Username"
  default     = "admin"
}

variable "rds_database_password" {
  description = "password"
  default     = "password"
}
