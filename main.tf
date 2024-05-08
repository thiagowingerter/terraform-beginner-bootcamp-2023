terraform {
   
   cloud {
    organization = "Wingerter"

    workspaces {
      name = "terra-house-1"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

provider "random" {
  # Configuration options
}

provider "aws" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length = 32
  lower = true
  upper = false
  special = false
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

#  tags = {
 #   Name        = "My bucket"
  #  Environment = "Dev"
  #}
}

output "random_bucket_name" {
    value = random_string.bucket_name.result
}
