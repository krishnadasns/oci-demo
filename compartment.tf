
resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaa5kd25axph5zakcagxyepimrfujo6inw63mmt6mvwlcnozhhuwcfq"
    description = "Compartment for Terraform resources."
    name = "adf-terra-comp"
    enable_delete = true
}
