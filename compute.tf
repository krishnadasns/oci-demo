resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaw4jdj47nyhxy3oksi2uzxh3mjtxla7teqsqjytdtd3qkcniczm2a"
    shape = "VM.Standard2.1"
    source_details {
        source_id = "ocid1.image.oc1.me-dubai-1.aaaaaaaaajejnzkrk3fodof5chtoldhnpozleq2wmk5abi5un3trijkxd3qa"
        source_type = "image"
    }

    # Optional
    display_name = "adfTerraVm1"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.me-dubai-1.aaaaaaaapbmijec67hptvpw33mopb5rclb2wbzwi23ag2ppgtky3gymynaiq"
    }
    metadata = {
        ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDo96l/vDWpoS55cTu6M1Dc/yzf6iluWae9LiAYPcUx2LW5t5aJhLQdcgmu9cxECCRTDZV4Tn4Knx7UrCNGZDWJj+9Zth8g1hWVKJsEriUI4WkT1hkGSG/+bp1ddjgj4j/99m06tt8Uv9nM/Bv8ReB3+gSUO0boQ99FacJfTbpumRH9FgIPlNHq7whna+zkUSp3sJODLnzeD8jcrQOWByjszHFaJBZjp9o9k3qoBf55LW+1A+hg9vSzSKoHr4UG9nonYAtn2zI32duFqSHIgLnGaCV792bOkBFkSk1+Pj9VdnUqdHM5L9/bD0o28vD8FQfEsVOeqfkCoFScwNozigpGnuPchIp5tn56eT/1R2NQJlWSFVFcbt8Kd+dcriOYt3dkPNpfCWtk4tESz9AZHBtMg8ucwFOZoGo2QOwlJ70Q+VXOqYajtVYSELJGbOx9a58UAUSJJGlFi7oC6VZH64SQUg0lCu3h2Fl2SAB1vBXR5Q+tU8fuKB+DFdzb8qcfTBM= krishnadas@Adfolks"
    } 
    preserve_boot_volume = false
}