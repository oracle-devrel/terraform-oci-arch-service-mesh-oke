## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_service_mesh_mesh" "test_mesh" {
  #Required
  certificate_authorities {
    #Required
    id = var.create_new_certificate_authority ? oci_certificates_management_certificate_authority.test_certificate_authority[0].id : var.certificate_authority_ocid
  }
  compartment_id = var.compartment_ocid
  display_name   = local.mesh_display_name

  #Optional
  description   = local.mesh_description
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
  
  mtls {
    #Required
    minimum = local.mesh_mtls_minimum
  }
}

data "oci_service_mesh_mesh" "test_mesh" {
  #Required
  mesh_id = oci_service_mesh_mesh.test_mesh.id
}

locals {
  mesh_display_name = "test-mesh"
  mesh_description  = "test mesh description"
  mesh_mtls_minimum = "DISABLED" // allowed values are ("DISABLED", "STRICT", "PERMISSIVE")
  available_state   = "AVAILABLE"
}

