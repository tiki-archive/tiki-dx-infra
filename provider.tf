# Copyright (c) TIKI Inc.
# MIT license. See LICENSE file in root directory.

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.1.0"
    }
  }

  backend "remote" {
    organization = "tiki"

    workspaces {
      name = "infra"
    }
  }
}
