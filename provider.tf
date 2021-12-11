provider "aws" {
    region = "us-east-1"  
}


terraform {
  backend "s3" {
    bucket = "jjtech-ssm-agbere-ec2-sanitycheck"
    key    = "statefile/terraform.tfstate"
    region = "us-east-2"
  }
}