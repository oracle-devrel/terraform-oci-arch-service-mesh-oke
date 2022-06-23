## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

data "oci_identity_region_subscriptions" "home_region_subscriptions" {
  tenancy_id = var.tenancy_ocid

  filter {
    name   = "is_home_region"
    values = [true]
  }
}

/*
data "oci_certificates_management_certificate_authorities" "test_certificate_authorities" {
  #Optional
  certificate_authority_id        = oci_certificates_management_certificate_authority.test_certificate_authority.id
  compartment_id                  = var.compartment_ocid
  issuer_certificate_authority_id = oci_certificates_management_certificate_authority.test_certificate_authority.id
  name                            = var.certificate_authority_name
  state                           = var.certificate_authority_state
}

data "oci_certificates_management_certificates" "test_certificates" {
  #Optional
  certificate_id                  = oci_certificates_management_certificate.test_certificate.id
  compartment_id                  = var.compartment_ocid
  issuer_certificate_authority_id = oci_certificates_management_certificate_authority.test_certificate_authority.id
  name                            = var.certificate_name
  state                           = var.certificate_state
}

*/