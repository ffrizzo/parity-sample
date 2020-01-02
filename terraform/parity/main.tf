locals {
  name = "parity-${var.env_name}"

  tags = {
    name        = local.name
    envName     = var.env_name
    description = "Managed By Terraform"
  }

}

resource "aws_key_pair" "key_pair" {
  key_name   = local.name
  public_key = file(var.key_pair_path)
}