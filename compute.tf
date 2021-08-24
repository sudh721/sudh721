provider "oci" {
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaxwleb3axlux7rt64piobv3bnwf3lp7llwr7z4o7yfsxdxm3mhsia"
  user_ocid = "ocid1.user.oc1..aaaaaaaaac6jqhuwvvcnryuk2jcfmzyj3pd3zwwfcjgybvhwbkj2ge44zfiq" 
  private_key_path = "/Users/ssinghpatel/Downloads/terraform_1.0.4_windows_amd64/.oci/myKey.pem"
  fingerprint = "5b:30:33:5f:e3:14:2c:26:ba:7c:c4:d9:96:ab:e1:1f"
  region = "ap-mumbai-1"
}

resource "oci_core_instance" "first_terraform_instance" {
    # Required
    availability_domain = "ap-mumbai-1"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaagbozcglbeffbh5u3dcrjopxp3yjnfxfaxrfbdyal7qfsskpvspdq"
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaalsm2sac6m57q5uloutt2yyk7ewdsvcywhxigb7gstg4ck4p7pgpq"
        source_type = "image"
    }

    # Optional
    display_name = "first_terraform_instance"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaai3vrr3u2lkxxhjtqxa2irjhkb5zxsbiuamrazkzn4hbbm4amnatq"
    }
    metadata = {
        ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsrrTwu6hhoz3Fgr3I2Nhdkkf0nPqz/eVa2GAwu1Q75DTblNbIJm5+cFC5fkyMrD6/xNJyhCY9WR8SbYrMnr70QoroQaGN3TVMisOUZ2dyeCpzYYMvd/YsagheZ/CUeO2h7SSiX9l8dDIBDkM+htDlDj5ay38AA+ggzZKF88NzDie9kkqfclX9TydLPf6EvKuNqbbLZThmfM3hQ8MZv+TVHwTSOcTEAC/FdYXpSUsvzqt4AlDVM2z6h7sgezuOXS1j4kgl+A3ZyV/bY/zTO044+kH9eRLS+iM6ZUXdQWZYpQxSOUEGvzbpqOT5SOUJpj0Dvaib+10oBxSS7ykGzENh mysshKey"
    } 
    preserve_boot_volume = false
}    
