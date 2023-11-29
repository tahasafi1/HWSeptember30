terraform {
  cloud {
    organization = "024_2023-summer-cloud-t"

    workspaces {
      name = "infra-vpc"
    }
  }

  required_providers {
    tfe = {
      version = "~> 0.50.0"
    }
  }
}