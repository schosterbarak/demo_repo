resource "aws_s3_bucket" "acme-s3-bucket" {
  bucket = var.bucket_name
  tags = {
    Environment = "Production"
  }
}
