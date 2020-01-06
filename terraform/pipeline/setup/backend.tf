terraform {
  backend "s3" {
    profile = "parity"
    bucket  = "terraform-ffrizzo"
    key     = "states/parity-sample/pipeline/setup/terraform.tfvars"
    region  = "us-east-1"
  }
}