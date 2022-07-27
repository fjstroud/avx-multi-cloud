terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.22.0"
    }
   /* aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "2.22.2"
    }
    */
    
  }
}
terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "cloudsilverlining"
    workspaces {
      tags = ["avx-multi-cloud"]
    }
  }
}


provider "aws" {
  region = "ap-southeast-2"
}

