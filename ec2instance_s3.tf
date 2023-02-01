terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

# resource "aws_instance" "ec2" {
#   ami           = "ami-002070d43b0a4f171"
#   instance_type = "t2.micro"
#    tags = {
#     Name = "tfserver"
#   }
# }

resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket-feb"

  tags = {
    Name        = "bucket"
    Environment = "Dev"
  }
}
