terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}
#provide authentication here also but security problem valla access keys ikkada ivvakudadhu
provider "aws" {
  region = "us-east-1"
}