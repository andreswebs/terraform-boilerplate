variable "aws_profile" {
  type    = string
  default = "default"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

provider "aws" {
  version = "~> 2.0"
  profile = var.aws_profile
  region  = var.aws_region
}
