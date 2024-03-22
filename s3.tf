provider "aws" {
  region = "us-west-2" # specify the AWS region you want to use
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name" # specify a unique name for your bucket

  # Uncomment the below line if you want to enable versioning for the bucket
  # versioning {
  #   enabled = true
  # }

  # Uncomment the below block if you want to configure server-side encryption
  # server_side_encryption_configuration {
  #   rule {
  #     apply_server_side_encryption_by_default {
  #       sse_algorithm = "AES256" # You can also use "aws:kms" for KMS encryption
  #     }
  #   }
  # }

  # Uncomment the below block if you want to configure bucket ACL (Access Control List)
  # acl = "private" # You can use private, public-read, public-read-write, or authenticated-read

  # Uncomment the below block if you want to configure bucket tags
  # tags = {
  #   Name        = "MyS3Bucket"
  #   Environment = "Production"
  # }

  # Uncomment the below block if you want to enable logging for the bucket
  # logging {
  #   target_bucket = "logs-bucket"
  #   target_prefix = "s3-logs/"
  # }
}
