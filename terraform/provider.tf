# terraform/provider.tf

terraform {
  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = "0.33.0"
    }
  }
}

provider "mgc" {
  access_key = var.mgc_access_key
  secret_key = var.mgc_secret_key
}