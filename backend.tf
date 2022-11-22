terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 1.1.4"
    }
  }
  required_version = ">= 1.1.4"
  backend "s3" {
    region = "eu-west-3"
    # dynamodb_table = "infra-ci-state-lock"
    bucket = "lab-opsguru-stv-io-tfstate"
    acl    = "bucket-owner-full-control"
    key    = "tf-module-github-actions/ci.tfstate"
    # role_arn = "arn:aws:iam::1234:role/some-role"
  }
}