provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "parity"

  # skipping to improve times
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}