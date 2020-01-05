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

module "pipeline" {
  source = "../modules/pipeline"

  environment       = var.env_name
  
  github_owner      = var.github_owner
  github_repository = var.github_repository
  github_branch     = var.github_branch

  build_spec = "./aws/build/specs/buildSpec.yml"
}