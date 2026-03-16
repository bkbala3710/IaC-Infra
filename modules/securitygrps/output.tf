output "presentation_ec2_sg_id" {
  value = aws_security_group.presentation_ec2_sg.id
}

output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}
