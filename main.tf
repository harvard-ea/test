####################################################
# DO NOT TOUCH BELLOW
####################################################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.49.0"
    }
  }
  required_version = ">= 1.3.7"
  backend "s3" {
    bucket         = "ea-harvard-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
####################################################

module "s3" {
  source = "modules/s3"
  org_prefix = "ea"
  bucket_name = "dkfghejsllg-bucket-blah"
  tags = {
    Environment = "dev"
  }
}
