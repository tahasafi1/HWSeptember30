terraform {
  cloud {
    organization = "024_2023-summer-cloud-t"

    workspaces {
      name = "infra-workspaces"
    }
  }

  required_providers {
    tfe = {
      version = "~> 0.50.0"
    }
  }
}

provider "tfe" {
    hostname = "app.terraform.io"
    version = "~> 0.50.0"
}

locals {
    infra-components = [ 
        "vpc", 
        "subnet", 
        "ec2 "]
}

data "tfe_organization" "org" {
  name = "024_2023-summer-cloud-t"
}

resource "tfe_workspace" "test" {
  for_each = toset(local.infra-components)
  name         = "infra-${each.key}"
  organization = data.tfe_organization.org.name
  execution_mode = "local"
}