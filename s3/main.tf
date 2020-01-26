resource "aws_s3_bucket" "acme-s3-bucket" {
  bucket = var.bucket_name
  tags = {
    Environment = "Production"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
      }
    }
  }
}
