terraform {
  required_providers {
    azurerm = "=3.100.0"
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Terraform-IACS"
    workspaces {
      name = "IAC-Terraform"
    }
  }
}

provider "azurerm" {
  # skip provider rego because we are using a service principal with limited access to Azure
  skip_provider_registration = "true"
  features {}
}