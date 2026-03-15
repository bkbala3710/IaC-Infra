############### VPC CIDR ################
variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}
############### Subnets 2 public & 6 private CIDR ################
variable "subnet_cidr_PuA" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_cidr_PuB" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_cidr_PrA" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_cidr_PrB" {
  type        = string
  description = "SUBNET CIDR"
}
variable "subnet_cidr_PrC" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_cidr_PrD" {
  type        = string
  description = "SUBNET CIDR"
}
variable "subnet_cidr_PrE" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_cidr_PrF" {
  type        = string
  description = "SUBNET CIDR"
}
############### Subnet az mapping 2 public & 6 private ################
variable "subnet_az_PuA" {
  type        = string
  description = "AZ of the Subnet"
}

variable "subnet_az_PuB" {
  type        = string
  description = "AZ of the Subnet"
}

variable "subnet_az_PrA" {
  type        = string
  description = "AZ of the Subnet"
}

variable "subnet_az_PrB" {
  type        = string
  description = "AZ of the Subnet"
}
variable "subnet_az_PrC" {
  type        = string
  description = "AZ of the Subnet"
}

variable "subnet_az_PrD" {
  type        = string
  description = "AZ of the Subnet"
}
variable "subnet_az_PrE" {
  type        = string
  description = "AZ of the Subnet"
}

variable "subnet_az_PrF" {
  type        = string
  description = "AZ of the Subnet"
}
#####################################################
variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}
################# tag mapping ####################################
variable "PuA" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PuB" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PrA" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PrB" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PrC" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PrD" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PrE" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "PrF" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}


