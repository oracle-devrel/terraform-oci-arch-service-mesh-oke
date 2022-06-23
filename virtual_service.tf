## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
   
resource "oci_service_mesh_virtual_service" "test_virtual_service" {
  #Required
  compartment_id = var.compartment_ocid
  mesh_id        = oci_service_mesh_mesh.test_mesh.id
  name           = local.virtual_service_name

  #Optional
  default_routing_policy {
    #Required
    type = local.virtual_service_default_routing_policy_type
  }
  description   = local.virtual_service_description
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
  hosts         = local.virtual_service_hosts
  
  mtls {
    #Required
    mode = local.virtual_service_mtls_mode

    #Optional
    maximum_validity = local.virtual_service_mtls_maximum_validity
  }
}

data "oci_service_mesh_virtual_service" "test_virtual_service" {
  #Required
  virtual_service_id = oci_service_mesh_virtual_service.test_virtual_service.id
}

data "oci_service_mesh_virtual_services" "test_virtual_services" {
  #Required
  compartment_id = var.compartment_ocid

  #Optional
  mesh_id = oci_service_mesh_mesh.test_mesh.id
}

locals {
  virtual_service_name                        = "test-virtual-service"
  virtual_service_default_routing_policy_type = "UNIFORM" // allowed values are ("UNIFORM", "DENY")
  virtual_service_description                 = "test virtual service description"
  virtual_service_hosts                       = ["test.com"]
  virtual_service_mtls_mode                   = "PERMISSIVE" // allowed values are ("DISABLED", "STRICT", "PERMISSIVE")
  virtual_service_mtls_maximum_validity       = 50 // allowed values between 45 and 90 days
}
