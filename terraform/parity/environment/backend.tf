terraform {
  backend "s3" {
    profile = "parity"
    bucket  = "terraform-ffrizzo"
    region  = "us-east-1"
  }
}