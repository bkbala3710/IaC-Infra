variable "vpc_id" {
  type = string
}

variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "subnet_id_PuA" {
  type = string
}

variable "subnet_id_PuB" {
  type = string
}
