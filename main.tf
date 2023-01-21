terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }

  backend "s3" {
    bucket = "thadeu-remote-state"
    key    = "aws-bucket-lifecycle/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "thadeu"
      managed-by = "terraform"
    }
  }
}
