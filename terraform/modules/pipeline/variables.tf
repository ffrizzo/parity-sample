variable "environment" {
  description = "Set a name for the environment"
}

variable "github_owner" {
  description = "GitHub Owner"
}

variable "github_repository" {
  description = "GitHub Repository"
}

variable "github_branch" {
  description = "GitHub Branch"
}

variable "build_spec" {
  description = "BuildSpec in base64"
}

variable "packer_version" {
  description = "Packer version"
  default     = "1.5.1"
}

variable "ansible_version" {
  description = "Ansible version"
  default     = "2.9.2"
}