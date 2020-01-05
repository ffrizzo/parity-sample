terraform {
  backend "s3" {
    profile = "parity"
    bucket  = "terraform-ffrizzo"
    key     = "states/parity/pipeline/terraform.tfvars"
    region  = "us-east-1"
  }
}