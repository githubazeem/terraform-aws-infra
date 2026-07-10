terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "terraform-state-590703363311"
    key            = "aws-quick/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

############################
# VPC
############################

resource "aws_vpc" "az-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "quick-vpc"
  }
}
