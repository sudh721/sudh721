resource "oci_core_instance" "first_terraform_instance" {
    # Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaagbozcglbeffbh5u3dcrjopxp3yjnfxfaxrfbdyal7qfsskpvspdq"
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaalsm2sac6m57q5uloutt2yyk7ewdsvcywhxigb7gstg4ck4p7pgpq"
        source_type = "image"
    }
