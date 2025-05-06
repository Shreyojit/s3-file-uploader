terraform {
  required_version = ">= 1.6.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  cloud {
    organization = "awscloudcore-hub"
    workspaces {
      name = "s3-uploader"
    }
  }
}

provider "aws" {
  region = var.region
}
