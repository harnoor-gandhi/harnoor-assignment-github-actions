resource "aws_s3_bucket" "bucket_har" {
  bucket = "harnoor-bucket-1"

  tags = {
    owner   = var.owner
    name    = var.name
    purpose = var.purpose
  }

  acl    = "private"
} 

resource "aws_s3_bucket_public_access_block" "access_block" {
  bucket = aws_s3_bucket.bucket1.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}