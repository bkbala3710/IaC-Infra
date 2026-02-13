variable "ami_id" {
    type        = string
    description = "ami id of my ec2"
}

variable "instance_type" {
    type        = string
    description = "instance type of my ec2"
}

variable "subnet_id" {
    type        = string
    description = "subnet ID of my ec2" 
}

variable "ec2_count" {
    type        = string
    description = "no of ec2 to be created" 
}

variable "env" {
    type        = string
    description = "type of environment" 
}
