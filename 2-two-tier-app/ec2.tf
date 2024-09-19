resource "aws_instance" "web_1" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.public.id]
  subnet_id              = aws_subnet.public_subnet_1.id
  user_data              = file("./scripts/web-server-1.sh")
  key_name               = aws_key_pair.ec2_key.key_name
  availability_zone      = var.availability_zone_a
  tags = {
    Name = "EC2_instance"
  }
}

resource "aws_instance" "web_2" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.public.id]
  subnet_id              = aws_subnet.public_subnet_2.id
  user_data              = file("./scripts/web-server-2.sh")
  key_name               = aws_key_pair.ec2_key.key_name
  availability_zone      = var.availability_zone_b
  tags = {
    Name = "EC2_instance"
  }
}


resource "aws_key_pair" "ec2_key" {
  key_name   = "my-pub-key"
  public_key = file(var.public_key_path)
}