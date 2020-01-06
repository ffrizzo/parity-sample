data "aws_ami" "parity" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["parity-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terraform-ffrizzo"
    key    = "states/parity-sample/parity/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}