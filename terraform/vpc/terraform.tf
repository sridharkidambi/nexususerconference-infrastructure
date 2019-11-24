# terraform {
#   backend "s3" {
#     encrypt = "true"
#     bucket  = "terraform-state-nexus-user-conference"
#     region  = "us-east-1"
#     key     = "vpc/terraform.tfstate"
#     shared_credentials_file = "~/.aws/credentials"
#   }
# }

provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "${var.aws_profile}"
}
