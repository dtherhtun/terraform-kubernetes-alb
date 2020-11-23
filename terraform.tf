terraform {
  required_version = "~> v0.13.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.16.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.13.3"
    }
  }
}
