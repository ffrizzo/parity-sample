resource "aws_s3_bucket" "pipeline_bucket" {
  bucket = "${var.env_name}-setup"
  acl    = "private"
}