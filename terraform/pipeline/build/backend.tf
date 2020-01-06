terraform {
  backend "s3" {
    profile = "parity"
    bucket  = "terraform-ffrizzo"
    key     = "states/parity-sample/pipeline/build/terraform.tfvars"
    region  = "us-east-1"
  }
}