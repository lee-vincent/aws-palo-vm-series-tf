terraform {
  # un-comment to migrate local state remote state in terraform cloud
  # cloud {
  #   organization = "vinnielee-io"
  #   workspaces {
  #     name = "bilh-tf-gh-actions-demo"
  #   }
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.49.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}