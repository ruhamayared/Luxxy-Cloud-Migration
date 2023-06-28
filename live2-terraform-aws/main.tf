terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}

# Create a simple S3 bucket
resource "aws_s3_bucket" "s3_bucket-app" {
    bucket = "tcb-app-qa-jr233"
  
}

resource "aws_s3_account_public_access_block" "s3_block" {
    bucket = aws_s3_bucket.s3_bucket-app.id
  
}