# resource "aws_launch_template" "Web-Instance-LT" {
#   name_prefix   = "Web-Instance-LT"
#   image_id      = "ami-0ed9277fb7eb570c9"
#   instance_type = "t2.micro"
# }

# resource "aws_autoscaling_group" "Web-ASG" {
#   availability_zones = ["us-east-1a", "us-east-1b"]
#   desired_capacity   = 2
#   max_size           = 4
#   min_size           = 2

#   launch_template {
#     id      = aws_launch_template.Web-Instance-LT.id
#     version = "$Latest"
#   }
# }