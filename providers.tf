terraform {
  required_providers {
    tfe = {
      version = "~> 0.68.2"
    }
    turbonomic = {
          source  = "IBM/turbonomic"
                version = "1.3.0"
  }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "turbonomic" {
  hostname   = var.hostname
  username   = var.username
  password   = var.password
  skipverify = true
}