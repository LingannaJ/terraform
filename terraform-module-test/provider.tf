terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "shivdev-remote-state"
    key    = "terraform-module"
    region = "us-east-1"
    dynamodb_table = "mydynamoDB-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
