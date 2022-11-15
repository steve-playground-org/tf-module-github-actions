resource "aws_s3_bucket" "this" {
  bucket = "my-tf-test-bucket-ops-guru-123"
  #tfsec:ignore:aws-s3-enable-bucket-encryption tfsec:ignore:aws-s3-encryption-customer-key tfsec:ignore:aws-s3-block-public-policy tfsec:ignore:aws-s3-ignore-public-acls tfsec:ignore:aws-s3-no-public-buckets tfsec:ignore:aws-s3-enable-bucket-logging tfsec:ignore:aws-s3-enable-versioning  tfsec:ignore:aws-s3-block-public-acls

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# resource "aws_s3_bucket_public_access_block" "this" {
#   bucket = aws_s3_bucket.this.id
#   block_public_acls = true
# }