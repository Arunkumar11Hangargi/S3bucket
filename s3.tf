provider "aws" {
  region = "us-east-1"  # Specify the AWS region you want to use
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Specify a unique name for your bucket
  acl    = "private" 
}
