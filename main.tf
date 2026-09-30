terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_task3_bucket" {
  bucket = "saimv-task3-unique-bucket-name" 
  
  tags = {
    Name        = "Task 3 S3 Bucket"
    Environment = "Dev"
  }
}
