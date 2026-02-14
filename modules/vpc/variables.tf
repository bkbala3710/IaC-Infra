Skip to content
bkbala3710
IaC-Infra
Repository navigation
Code
Issues
Pull requests
Agents
Actions
Projects
Wiki
Security
Insights
Settings
IaC-Infra/modules/vpc
/variables.tf
Go to file
t
bkbala3710
bkbala3710
Update variables.tf
6e77544
 · 
now
IaC-Infra/modules/vpc
/variables.tf

Code

Blame
variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

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
 
