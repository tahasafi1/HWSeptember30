terraform {
  cloud {
    organization = "024_2023-summer-cloud-t"

    workspaces {
      name = "ec2"
    }
  }

  required_providers {
    tfe = {
      version = "~> 0.50.0"
    }
  }
}