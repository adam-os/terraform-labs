resource "aws_lb" "aws_lb_ec2" {
  name               = "alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]
  subnets            = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
}

# alb target group
resource "aws_lb_target_group" "target_group" {
  name     = "target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.default.id

}

# alb Target attachments
resource "aws_lb_target_group_attachment" "tg_attach1" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.web_1.id
  port             = 80

  depends_on = [aws_instance.web_1]
}

resource "aws_lb_target_group_attachment" "tg_attach2" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.web_2.id
  port             = 80

  depends_on = [aws_instance.web_2]
}

# alb listener
resource "aws_lb_listener" "listener_lb" {
  load_balancer_arn = aws_lb.aws_lb_ec2.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group.arn
  }
}