# resource "aws_instance" "WebInstance1" {
#     ami           = "ami-0ed9277fb7eb570c9"
#     instance_type = "t2.micro"
#     associate_public_ip_address = "true"
#     subnet_id   = aws_subnet.AZ1PUB1.id
#     # add iam role
#     iam_instance_profile = "SSM-Role-full-access"
#     key_name = "jjtech-nova-keypair"
#     # vpc_security_group_ids = [aws_security_g3roup.pub_SG_Allow_80_44_22.id]

#     user_data = <<EOF
#         #!/bin/bash
#         sudo su
#         yum update -y
#         yum install httpd -y
#         cd /var/www/html 
#         echo "JJ Tech Inc Disaster Recovery strategy include using Route53 Failover Based Routing" > index.html
#         service httpd start
#         chkconfig httpd on

#     EOF
    

#     tags = {
#         Name = "Web Instance 1"
#     }
# }

# resource "aws_instance" "WebInstance2" {
#     ami           = "ami-0ed9277fb7eb570c9"
#     instance_type = "t2.micro"
#     associate_public_ip_address = "true"
#     subnet_id   = aws_subnet.AZ2PUB1.id
#     # add iam role
#     iam_instance_profile = "SSM-Role-full-access"
#     key_name = "jjtech-nova-keypair"
# #     vpc_security_group_ids = [aws_security_group.pub_SG_Allow_80_443_22.id]

#     user_data = <<EOF
#         #!/bin/bash
#         sudo su
#         yum update -y
#         yum install httpd -y
#         cd /var/www/html 
#         echo "JJ Tech Inc Disaster Recovery strategy include using Route53 Failover Based Routing" > index.html
#         service httpd start
#         chkconfig httpd on

#     EOF

#     tags = {
#         Name = "Web Instance 2"
#     }
# }

# resource "aws_instance" "AppInstance1" {
#     ami           = "ami-0ed9277fb7eb570c9"
#     instance_type = "t2.micro"
#     associate_public_ip_address = "true"
#     subnet_id   = aws_subnet.AZ2PUB1.id
#     # add iam role
#     iam_instance_profile = "SSM-Role-full-access"
#     key_name = "jjtech-nova-keypair"
#  #   vpc_security_group_ids = [aws_security_group.pub_SG_Allow_80_443_22.id]

#     user_data = <<EOF
#         #!/bin/bash
#         sudo su
#         yum update -y
#         yum install httpd -y
#         cd /var/www/html 
#         echo "JJ Tech Inc Disaster Recovery strategy include using Route53 Failover Based Routing" > index.html
#         service httpd start
#         chkconfig httpd on

#     EOF

#     tags = {
#         Name = "App Instance 1"
#     }
# }

# resource "aws_instance" "AppInstance2" {
#     ami           = "ami-0ed9277fb7eb570c9"
#     instance_type = "t2.micro"
#     associate_public_ip_address = "true"
#     subnet_id   = aws_subnet.AZ2PUB1.id
#     # add iam role
#     iam_instance_profile = "SSM-Role-full-access"
#     key_name = "jjtech-nova-keypair"
#  #   vpc_security_group_ids = [aws_security_group.pub_SG_Allow_80_443_22.id]

#     user_data = <<EOF
        # #!/bin/bash
        # sudo su
        # yum update -y
        # yum install httpd -y
        # cd /var/www/html 
        # echo "JJ Tech Inc Disaster Recovery strategy include using Route53 Failover Based Routing" > index.html
        # service httpd start
        # chkconfig httpd on

#     EOF

#     tags = {
#         Name = "App Instance 2"
#     }
# }


