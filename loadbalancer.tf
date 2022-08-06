resource "aws_lb_target_group" "app-lb-target" {
  name     = "app-lb"
  port     = "3000"
  protocol = "HTTP"
  vpc_id   = module.network.cide_vpc
}

#target group attachment
resource "aws_lb_target_group_attachment" "app-target-attach" {
  target_group_arn = aws_lb_target_group.app-lb-target.arn
  target_id        = aws_instance.application_tf.id
  port             = "3000"
}


# create an application load balancer
resource "aws_lb" "app-lb" {
  name                       = "app-lb"
  internal                   = false
  security_groups            = [aws_security_group.sg-all.id]
  subnets                    = [module.network.subnet_public2_cidr, module.network.subnet_public1_cidr]
  ip_address_type            = "ipv4"
  enable_deletion_protection = false
}

# to attach targetg to loadbalancer
resource "aws_alb_listener" "app-lb-listener" {  
  load_balancer_arn =  aws_lb.app-lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {    
    target_group_arn = aws_lb_target_group.app-lb-target.arn
    type             = "forward"  
  }
}