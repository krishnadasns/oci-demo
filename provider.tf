terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.96.0"
    }
  }
}

variable "private_key" {}

provider "oci" {
  # Configuration options
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa5kd25axph5zakcagxyepimrfujo6inw63mmt6mvwlcnozhhuwcfq"
  user_ocid = "ocid1.user.oc1..aaaaaaaamg2zw77cb5zlfh35tfqtwhmrcixj6wlf6t6qyivnjlruuyhxmota" 
  private_key = var.private_key
  fingerprint = "ee:51:80:b4:7e:87:99:91:b1:09:5f:96:63:48:75:f7"
  region = "me-dubai-1"
}