terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  backend "s3" {
    bucket = "12112025"
    key    = "environments/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "12112025dy" 
  }
}

provider "aws" {
  region = var.aws_region
}
