terraform {
  backend "s3" {
    profile = "parity"
    bucket  = "terraform-ffrizzo"
    key     = "states/parity-sample/packer/terraform.tfstate"
    region  = "us-east-1"
  }
}