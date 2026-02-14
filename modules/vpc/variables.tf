variable "PuA" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PuB" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "subnet_cidr_PuA" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_cidr_PuB" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_az_PuA" {
  type        = string
  description = "AZ of the Subnet"
}

variable "subnet_az_PuB" {
  type        = string
  description = "AZ of the Subnet"
}
