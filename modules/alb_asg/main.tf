resource "aws_launch_template" "web_template" {
  name_prefix   = "web-template"
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  vpc_security_group_ids = var.presentation_ec2_sg_id

  user_data = base64encode(<<EOF
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Welcome from ASG instance" > /var/www/html/index.html
EOF
  )
}
