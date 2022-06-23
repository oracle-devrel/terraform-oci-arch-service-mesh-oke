## Copyright (c) 2022 Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

resource "oci_certificates_management_certificate_authority" "test_certificate_authority" {
  count    = var.create_new_certificate_authority ? 1 : 0 
  provider = oci.homeregion
  #Required
  certificate_authority_config {
    #Required
    config_type = var.certificate_authority_certificate_authority_config_config_type
    subject {

      #Optional
      common_name                  = var.certificate_authority_certificate_authority_config_subject_common_name
      country                      = var.certificate_authority_certificate_authority_config_subject_country
      distinguished_name_qualifier = var.certificate_authority_certificate_authority_config_subject_distinguished_name_qualifier
      domain_component             = var.certificate_authority_certificate_authority_config_subject_domain_component
      generation_qualifier         = var.certificate_authority_certificate_authority_config_subject_generation_qualifier
      given_name                   = var.certificate_authority_certificate_authority_config_subject_given_name
      initials                     = var.certificate_authority_certificate_authority_config_subject_initials
      locality_name                = var.certificate_authority_certificate_authority_config_subject_locality_name
      organization                 = var.certificate_authority_certificate_authority_config_subject_organization
      organizational_unit          = var.certificate_authority_certificate_authority_config_subject_organizational_unit
      pseudonym                    = var.certificate_authority_certificate_authority_config_subject_pseudonym
      serial_number                = var.certificate_authority_certificate_authority_config_subject_serial_number
      state_or_province_name       = var.certificate_authority_certificate_authority_config_subject_state_or_province_name
      street                       = var.certificate_authority_certificate_authority_config_subject_street
      surname                      = var.certificate_authority_certificate_authority_config_subject_surname
      title                        = var.certificate_authority_certificate_authority_config_subject_title
      #user_id                      = oci_identity_user.test_user.id
      user_id                      = var.user_ocid
    }

    #Optional
    #issuer_certificate_authority_id = oci_certificates_management_certificate_authority.test_certificate_authority.id
    signing_algorithm               = var.certificate_authority_certificate_authority_config_signing_algorithm
    #validity {

      #Optional
      #time_of_validity_not_after  = var.certificate_authority_certificate_authority_config_validity_time_of_validity_not_after
      #time_of_validity_not_before = var.certificate_authority_certificate_authority_config_validity_time_of_validity_not_before
    #}
    version_name = var.certificate_authority_certificate_authority_config_version_name
  }

  compartment_id = var.compartment_ocid
  kms_key_id     = var.create_new_kms_vault ? oci_kms_key.test_key[0].id : var.kms_key_ocid
  name           = "${var.certificate_authority_name}-${random_id.tag.hex}"

  #Optional
  certificate_authority_rules {
    #Required
    rule_type = var.certificate_authority_certificate_authority_rules_rule_type

    #Optional
    certificate_authority_max_validity_duration = var.certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration
    leaf_certificate_max_validity_duration      = var.certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration
  }
  certificate_revocation_list_details {
    #Required
    object_storage_config {
      #Required
      object_storage_bucket_name        = oci_objectstorage_bucket.test_bucket.name
      object_storage_object_name_format = var.certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format

      #Optional
      object_storage_namespace = oci_objectstorage_bucket.test_bucket.namespace
    }

    #Optional
    custom_formatted_urls = var.certificate_authority_certificate_revocation_list_details_custom_formatted_urls
  }
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
  description   = var.certificate_authority_description
}

