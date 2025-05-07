terraform {
  required_version = ">= 1.6.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "tf-state-store-shreyo"  # <-- Replace with your S3 bucket name
    key    = "s3-file-uploader/terraform.tfstate"
    region = "us-west-2"
    encrypt = true
    dynamodb_table = "tf-state-lock-shreyo"
  }
}

provider "aws" {
  region = var.region
}
