terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 5.82.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  profile = "demo"      #add profile name from .aws/credentails file (configured when setting up aws cli)
}