terraform {
  required_version = ">= 1.6.1"
  required_providers {
    aws = ">= 4.60.0"
  }
}

provider "aws" {
  region = var.region # Define a região onde os recursos serão criados na AWS
}
