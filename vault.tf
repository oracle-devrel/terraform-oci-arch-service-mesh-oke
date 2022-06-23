## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_kms_key" "test_key" {
    count            = var.create_new_kms_vault ? 1 : 0
    provider         = oci.homeregion
    compartment_id   = var.compartment_ocid
    display_name     = var.key_display_name
    key_shape {
        algorithm = var.key_key_shape_algorithm
        length = var.key_key_shape_length
    }
    protection_mode  = var.key_key_protection_mode
    management_endpoint = oci_kms_vault.test_vault[count.index].management_endpoint
    defined_tags        = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}

resource "oci_kms_vault" "test_vault" {
    count          = var.create_new_kms_vault ? 1 : 0
    provider       = oci.homeregion
    compartment_id = var.compartment_ocid
    display_name   = var.vault_display_name
    vault_type     = var.vault_type[0]
    defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}
