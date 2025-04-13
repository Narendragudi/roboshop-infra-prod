terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "daws.76s-state-dev"
    key            = "catalogue"
    region         = "us-east-1"
    dynamodb_table = "daws.76-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}