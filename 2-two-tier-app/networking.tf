resource "aws_vpc" "default" {
  cidr_block = var.cidr_vpc
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              = var.cidr_public_subnet_1
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_a
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              = var.cidr_public_subnet_2
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_b
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              = var.cidr_private_subnet_1
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_a
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              = var.cidr_private_subnet_2
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_b
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.default.id
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "route_table_association_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "route_table_association_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.route_table.id
}