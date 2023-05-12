variable "aws_region" {
    type    = string
    default = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
    bucket = "my-bucket-test-19951"
    force_destroy = true  
    acl = "public-read-write"

    tags = {
    Name        = "My bucket"
    }
}

output "bucket_name" {
    value = aws_s3_bucket.bucket.bucket
}

provider "aws" {
    region  = var.aws_region
}

