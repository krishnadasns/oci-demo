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
        ssh_authorized_keys = file("~/.ssh/id_rsa.pub")
    } 
    preserve_boot_volume = false
}