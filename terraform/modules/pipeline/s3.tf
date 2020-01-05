resource "aws_s3_bucket" "pipeline_bucket" {
  bucket = "${var.environment}-pipeline"
  acl    = "private"
}