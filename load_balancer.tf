# resource "aws_lb_target_group" "S2S-TG" {
#   name     = "S2S-TG"
#   port     = 80
#   protocol = "HTTP"
#   vpc_id   = aws_vpc.S2S.id
# }

# resource "aws_lb_target_group_attachment" "S2S-TG-Attach" {
#   target_group_arn = aws_lb_target_group.S2S-TG.arn
#   target_id        = aws_lb.S2S_ELB.arn
#   port             = 80
# }


# # Create a new load balancer
# resource "aws_lb" "S2S_ELB" {
#   name               = "web-S2S-elb"
#   internal           =  false
# #   load_balancer_type = "application"
#   subnets            = [aws_subnet.AZ1PUB1.id, aws_subnet.AZ2PUB1.id]
# #   availability_zones = ["us-east-1a", "us-east-1b"]

# #   access_logs {
# #     bucket        = "foo"
# #     bucket_prefix = "bar"
# #     interval      = 60
# #   }

# #   listener {
# #     instance_port     = 8000
# #     instance_protocol = "http"
# #     lb_port           = 80
# #     lb_protocol       = "http"
# #   }

# #   listener {
# #     instance_port      = 8000
# #     instance_protocol  = "http"
# #     lb_port            = 443
# #     lb_protocol        = "https"
# #     ssl_certificate_id = "arn:aws:acm:us-east-1:602170357372:certificate/987990a9-beb6-4539-98c2-4a77ce1d9bf0"
# #   }

# #   health_check {
# #     healthy_threshold   = 2
# #     unhealthy_threshold = 2
# #     timeout             = 3
# #     target              = "HTTP:8000/"
# #     interval            = 30
# #   }

# #   instances                   = [aws_autoscaling_group.Web-ASG]
# #   cross_zone_load_balancing   = true
# #   idle_timeout                = 400
# #   connection_draining         = true
# #   connection_draining_timeout = 400

#   tags = {
#     Name = "S2S_ELB"
#   }
# }

