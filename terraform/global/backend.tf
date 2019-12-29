terraform {
  backend "s3" {
    profile = "parity"
    bucket = "terraform-ffrizzo"
    key    = "states/parity/global/terraform.tfstate"
    region = "us-east-1"
  }
}