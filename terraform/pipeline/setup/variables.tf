variable "env_name" {
  type = string
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "github_owner" {
  type        = string
  description = "GitHub Owner"
}

variable "github_repository" {
  type        = string
  description = "GitHub Repository"
}

variable "github_branch" {
  type        = string
  description = "GitHub Branch"
}

variable "build_spec" {
  description = "BuildSpec in base64"
  default     = "./aws/build/specs/setupSpec.yml"
}


variable "terraform_version" {
  type        = string
  description = "Packer version"
  default     = "0.12.18"
}
