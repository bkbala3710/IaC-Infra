variable "env" {
    type        = string
    description = "type of environment" 
}

variable "vpc_cidr" {
    type        = string
    description = "cdir of vpc" 
}

variable "subnet_cidr" {
    type        = string
    description = "cdir of subnet" 
}

variable "subnet_az"{
    type        = string
    description = "availability zone" 
}
