terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket       = "MON-BUCKET-TFSTATE"
    key          = "eks/terraform.tfstate"
    region       = "eu-west-3"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}
