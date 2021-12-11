# resource "aws_launch_template" "Web-LT" {
#   name_prefix   = "Web-LT"
#   image_id      = "ami-0ed9277fb7eb570c9"
#   key_name = "jjtech-nova-keypair"
#   instance_type = "t2.micro"  
# }

# resource "aws_autoscaling_group" "Web-ASG" {
#   availability_zones = ["us-east-1a","us-east-1b"]
#   desired_capacity   = 2
#   max_size           = 2
#   min_size           = 2
#   target_group_arns  = [aws_lb.S2S_ELB.arn]

#   launch_template {
#     id      = aws_launch_template.Web-LT.id
#     version = "$Latest"
#   }
# }