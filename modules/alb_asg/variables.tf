variable "presentation_ec2_sg_id" {
  type = string
}
variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}
