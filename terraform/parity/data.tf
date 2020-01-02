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

