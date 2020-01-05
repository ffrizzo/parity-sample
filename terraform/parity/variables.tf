variable "env_name" {
  type = string
}

variable "key_pair_path" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "region" {
  type    = string
  default = "us-east-1"
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
