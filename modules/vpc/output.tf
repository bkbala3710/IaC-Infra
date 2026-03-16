############### Subnets 2 public & 6 private output ################
output "subnet_id_PuA" {
  value       = aws_subnet.PuA.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PuB" {
  value       = aws_subnet.PuB.id
  description = "The Subnet which my EC2 will be created"
}

output "subnet_id_PrA" {
  value       = aws_subnet.PrA.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PrB" {
  value       = aws_subnet.PrB.id
  description = "The Subnet which my EC2 will be created"
}

output "subnet_id_PrC" {
  value       = aws_subnet.PrC.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PrD" {
  value       = aws_subnet.PrD.id
  description = "The Subnet which my EC2 will be created"
}

output "subnet_id_PrE" {
  value       = aws_subnet.PrE.id
  description = "The Subnet which my EC2 will be created"
}
output "subnet_id_PrF" {
  value       = aws_subnet.PrF.id
  description = "The Subnet which my EC2 will be created"
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "private_subnet_ids" {
  value = [
    aws_subnet.PrA.id,
    aws_subnet.PrB.id
  ]
}
