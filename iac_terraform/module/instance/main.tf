terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
  region = var.region
  assume_role {
    role_arn     = var.arn
    session_name = "TerraformSession"
  }
}

resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    terraform : "True"
    Name = var.name
  }
}
