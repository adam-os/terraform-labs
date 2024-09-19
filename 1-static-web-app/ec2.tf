resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.security_group.id]
  subnet_id              = aws_subnet.public.id
  user_data              = file("./scripts/web-server.sh")
  key_name               = aws_key_pair.ec2_key.key_name
  tags = {
    Name = "EC2_instance"
  }
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

resource "aws_key_pair" "ec2_key" {
  key_name   = "my-pub-key"
  public_key = file(var.public_key_path)
}