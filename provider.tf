terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.96.0"
    }
  }
}

provider "oci" {
  # Configuration options
  region = "me-dubai-1"
}