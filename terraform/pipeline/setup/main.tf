locals {
  name = "parity-${var.env_name}"

  tags = {
    name        = local.name
    envName     = var.env_name
    description = "Managed By Terraform"
  }

}
