# Database subnet group
resource "aws_db_subnet_group" "db_subnet"  {
    name       = "db-subnet"
    subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
}

# Create database instance
resource "aws_db_instance" "project_db" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "5.7.44"
  instance_class       = "db.t3.micro"
  identifier           = "db-instance"
  db_name              = "project_db"
  username             = var.rds_database_username
  password             = var.rds_database_password
  db_subnet_group_name = aws_db_subnet_group.db_subnet.id
  vpc_security_group_ids = [aws_security_group.private.id]  
  publicly_accessible = false
  skip_final_snapshot  = true
}