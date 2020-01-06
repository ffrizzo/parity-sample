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
}


variable "packer_version" {
  type        = string
  description = "Packer version"
  default     = "1.5.1"
}

variable "ansible_version" {
  type        = string
  description = "Ansible version"
  default     = "2.9.2"
}