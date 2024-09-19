variable "region" {
  default = "us-east-1"
}

variable "cidr_vpc" {
  description = "CIDR block for VPC"
  default     = "10.1.0.0/16"
}

variable "cidr_subnet" {
  description = "CIDR block for public subnet"
  default     = "10.1.0.0/24"
}

variable "availability_zone" {
  description = "availability zone for public subnet"
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "AWS EC2 instance"
  default     = "t2.micro"
}

variable "public_key_path" {
  description = "Public key path"
  default     = "<path-to-key>"
}
