## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_certificates_management_certificate" "test_certificate" {
  count    = var.create_new_certificate_authority ? 1 : 0  
  provider = oci.homeregion
  #Required
  certificate_config {
    #Required
    config_type = var.certificate_certificate_config_config_type

    #Optional
    certificate_profile_type        = var.certificate_certificate_config_certificate_profile_type
    csr_pem                         = var.certificate_certificate_config_csr_pem
    issuer_certificate_authority_id = oci_certificates_management_certificate_authority.test_certificate_authority[count.index].id
    key_algorithm                   = var.certificate_certificate_config_key_algorithm
    signature_algorithm             = var.certificate_certificate_config_signature_algorithm
    subject {

      #Optional
      common_name                  = var.certificate_certificate_config_subject_common_name
      country                      = var.certificate_certificate_config_subject_country
      distinguished_name_qualifier = var.certificate_certificate_config_subject_distinguished_name_qualifier
      domain_component             = var.certificate_certificate_config_subject_domain_component
      generation_qualifier         = var.certificate_certificate_config_subject_generation_qualifier
      given_name                   = var.certificate_certificate_config_subject_given_name
      initials                     = var.certificate_certificate_config_subject_initials
      locality_name                = var.certificate_certificate_config_subject_locality_name
      organization                 = var.certificate_certificate_config_subject_organization
      organizational_unit          = var.certificate_certificate_config_subject_organizational_unit
      pseudonym                    = var.certificate_certificate_config_subject_pseudonym
      serial_number                = var.certificate_certificate_config_subject_serial_number
      state_or_province_name       = var.certificate_certificate_config_subject_state_or_province_name
      street                       = var.certificate_certificate_config_subject_street
      surname                      = var.certificate_certificate_config_subject_surname
      title                        = var.certificate_certificate_config_subject_title
      #user_id                      = oci_identity_user.test_user.id
      user_id                      = var.user_ocid
    }
    subject_alternative_names {

      #Optional
      type  = var.certificate_certificate_config_subject_alternative_names_type
      value = var.certificate_certificate_config_subject_alternative_names_value
    }
    validity {

      #Optional
      time_of_validity_not_after  = var.certificate_certificate_config_validity_time_of_validity_not_after
      time_of_validity_not_before = var.certificate_certificate_config_validity_time_of_validity_not_before
    }
    version_name = var.certificate_certificate_config_version_name
  }
  compartment_id = var.compartment_ocid
  name           = var.certificate_name

  #Optional
  certificate_rules {
    #Required
    advance_renewal_period = var.certificate_certificate_rules_advance_renewal_period
    renewal_interval       = var.certificate_certificate_rules_renewal_interval
    rule_type              = var.certificate_certificate_rules_rule_type
  }
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
  description    = var.certificate_description
}

