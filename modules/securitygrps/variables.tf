variable "vpc_id" {
  type = string
}
variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}
