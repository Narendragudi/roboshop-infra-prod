terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "daws76-state-dev"
    key            = "cdn"
    region         = "us-east-1"
    dynamodb_table = "daws76-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}