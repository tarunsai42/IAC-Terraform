terraform {
  required_version = "~> 0.12.0"
  required_providers {
    azurerm = "~> 2.11.0"
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