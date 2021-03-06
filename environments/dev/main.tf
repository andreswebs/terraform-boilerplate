terraform {

  required_version = ">= 0.14"

  backend "s3" {
    bucket = "infrastructure.terraform.state"
    key    = "environments/dev.tfstate"
    region = "us-east-1"
  }
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

provider "aws" {
  region = var.aws_region
}


