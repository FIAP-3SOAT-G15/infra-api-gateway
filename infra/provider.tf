terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }

  backend "s3" {
    bucket = "fiap-3soat-g15-infra-api-gateway"
    key    = "live/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = var.region
}