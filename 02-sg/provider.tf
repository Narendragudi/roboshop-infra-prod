terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "daws.76-state-prod"
    key            = "sg"
    region         = "us-east-1"
    dynamodb_table = "daws.76-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}