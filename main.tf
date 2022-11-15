resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-ops-guru-123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}