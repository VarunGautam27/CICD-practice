terraform {
  required_version = ">= 1.5.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }

  # state file path is passed at "terraform init" time
  # so it lives outside the repo and survives checkouts
  backend "local" {}
}

provider "docker" {
  host = var.docker_host
}
