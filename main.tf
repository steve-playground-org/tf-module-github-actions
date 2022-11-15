resource "aws_s3_bucket" "this" {
  bucket = "my-tf-test-bucket-ops-guru-123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id
  block_public_acls = true
}