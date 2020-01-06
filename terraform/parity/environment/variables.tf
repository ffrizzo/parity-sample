variable "env_name" {
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
