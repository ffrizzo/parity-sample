terraform {
  backend "s3" {
    profile = "parity"
    bucket  = "terraform-ffrizzo"
    key     = "states/parity-sample/parity/vpc/terraform.tfstate"
    region  = "us-east-1"
  }
}