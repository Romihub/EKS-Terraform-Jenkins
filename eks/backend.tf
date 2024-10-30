terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-eksaws-bucket1"
    region         = "eu-west-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "lock-terra"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
