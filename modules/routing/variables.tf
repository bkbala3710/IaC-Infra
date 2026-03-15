variable "vpc_id" {
  type = string
}

variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "subnet_id-PuA" {
  type = string
}

variable "subnet_id-PuB" {
  type = string
}
