## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "compartment_ocid" {}

variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "1.0"
}

variable "create_new_certificate_authority" {
  default = false
}

variable "certificate_authority_ocid" {
  default = ""
}

variable "certificate_ocid" {
  default = ""
}

variable "certificate_authority_certificate_authority_config_config_type" {
  default = "ROOT_CA_GENERATED_INTERNALLY"
}

variable "certificate_authority_certificate_authority_config_signing_algorithm" {
  default = "SHA512_WITH_RSA"
}

variable "certificate_authority_certificate_authority_config_subject_common_name" {
  default = "Sample_CA"
}

variable "certificate_authority_certificate_authority_config_subject_country" {
  default = "IE"
}

variable "certificate_authority_certificate_authority_config_subject_distinguished_name_qualifier" {
  default = "distinguishedNameQualifier"
}

variable "certificate_authority_certificate_authority_config_subject_domain_component" {
  default = "domainComponent"
}

variable "certificate_authority_certificate_authority_config_subject_generation_qualifier" {
  default = "Sr."
}

variable "certificate_authority_certificate_authority_config_subject_given_name" {
  default = "givenName"
}

variable "certificate_authority_certificate_authority_config_subject_initials" {
  default = "LI"
}

variable "certificate_authority_certificate_authority_config_subject_locality_name" {
  default = "Dublin"
}

variable "certificate_authority_certificate_authority_config_subject_organization" {
  default = "Company Ltd."
}

variable "certificate_authority_certificate_authority_config_subject_organizational_unit" {
  default = "R&D"
}

variable "certificate_authority_certificate_authority_config_subject_pseudonym" {
  default = "pseudonym"
}

variable "certificate_authority_certificate_authority_config_subject_serial_number" {
  default = "rvZ6gMLf4Pc3hoGu"
}

variable "certificate_authority_certificate_authority_config_subject_state_or_province_name" {
  default = "Leinster"
}

variable "certificate_authority_certificate_authority_config_subject_street" {
  default = "Suffolk St"
}

variable "certificate_authority_certificate_authority_config_subject_surname" {
  default = "surname"
}

variable "certificate_authority_certificate_authority_config_subject_title" {
  default = "title"
}

variable "certificate_authority_certificate_authority_config_subject_user_id" {
  default = "user_id"
}

variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_after" {
  default = "2031-07-05T21:10:29.999Z"
}

variable "certificate_authority_certificate_authority_config_validity_time_of_validity_not_before" {
  default = "2022-05-30T12:03:06.793Z"
}

variable "certificate_authority_certificate_authority_config_version_name" {
  default = "versionName"
}

variable "certificate_authority_certificate_authority_rules_certificate_authority_max_validity_duration" {
  default = "P1825D"
}

variable "certificate_authority_certificate_authority_rules_leaf_certificate_max_validity_duration" {
  default = "P365D"
}

variable "certificate_authority_certificate_authority_rules_rule_type" {
  default = "CERTIFICATE_AUTHORITY_ISSUANCE_EXPIRY_RULE"
}

variable "certificate_authority_certificate_revocation_list_details_custom_formatted_urls" {
  default = []
}

variable "certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_namespace" {
  default = "example-namespace"
}

variable "certificate_authority_certificate_revocation_list_details_object_storage_config_object_storage_object_name_format" {
  default = "versionName{}.crl"
}

variable "certificate_authority_defined_tags_value" {
  default = "value"
}

variable "certificate_authority_description" {
  default = "My Example CA"
}

variable "certificate_authority_freeform_tags" {
  default = { "bar-key" = "value" }
}

variable "certificate_authority_name" {
  default = "mesh-cert-ca"
}

variable "certificate_authority_state" {
  default = "ACTIVE"
}

variable "certificate_certificate_config_certificate_profile_type" {
  default = "TLS_SERVER_OR_CLIENT"
}

variable "certificate_certificate_config_config_type" {
  default = "ISSUED_BY_INTERNAL_CA"
}

variable "certificate_certificate_config_csr_pem" {
  default = "-----BEGIN CERTIFICATE REQUEST-----<var>&lt;csrcontent&gt;</var>n-----END CERTIFICATE REQUEST-----"
}

variable "certificate_certificate_config_key_algorithm" {
  default = "RSA2048"
}

variable "certificate_certificate_config_signature_algorithm" {
  default = "SHA256_WITH_RSA"
}

variable "certificate_certificate_config_subject_common_name" {
  default = "Sample_Cert"
}

variable "certificate_certificate_config_subject_country" {
  default = "IE"
}

variable "certificate_certificate_config_subject_distinguished_name_qualifier" {
  default = "distinguishedNameQualifier"
}

variable "certificate_certificate_config_subject_domain_component" {
  default = "domainComponent"
}

variable "certificate_certificate_config_subject_generation_qualifier" {
  default = "Sr."
}

variable "certificate_certificate_config_subject_given_name" {
  default = "givenName"
}

variable "certificate_certificate_config_subject_initials" {
  default = "LI"
}

variable "certificate_certificate_config_subject_locality_name" {
  default = "Dublin"
}

variable "certificate_certificate_config_subject_organization" {
  default = "Company Ltd."
}

variable "certificate_certificate_config_subject_organizational_unit" {
  default = "R&D"
}

variable "certificate_certificate_config_subject_pseudonym" {
  default = "pseudonym"
}

variable "certificate_certificate_config_subject_serial_number" {
  default = "rvZ6gMLf4Pc3hoGu"
}

variable "certificate_certificate_config_subject_state_or_province_name" {
  default = "Leinster"
}

variable "certificate_certificate_config_subject_street" {
  default = "Suffolk St"
}

variable "certificate_certificate_config_subject_surname" {
  default = "surname"
}

variable "certificate_certificate_config_subject_title" {
  default = "title"
}

variable "certificate_certificate_config_subject_alternative_names_type" {
  default = "DNS"
}

variable "certificate_certificate_config_subject_alternative_names_value" {
  default = "value"
}

variable "certificate_certificate_config_validity_time_of_validity_not_after" {
  default = "2022-10-10T02:50:29.396Z"
}

variable "certificate_certificate_config_validity_time_of_validity_not_before" {
  default = "2022-05-30T11:49:53.387Z"
}

variable "certificate_certificate_config_version_name" {
  default = "myCertVersion"
}

variable "certificate_certificate_rules_advance_renewal_period" {
  default = "P60D"
}

variable "certificate_certificate_rules_renewal_interval" {
  default = "P365D"
}

variable "certificate_certificate_rules_rule_type" {
  default = "CERTIFICATE_RENEWAL_RULE"
}

variable "certificate_defined_tags_value" {
  default = "value"
}

variable "certificate_description" {
  default = "description"
}

variable "certificate_freeform_tags" {
  default = { "Department" = "Finance" }
}

variable "certificate_name" {
  default = "mesh-cert"
}

variable "certificate_state" {
  default = "ACTIVE"
}

variable "create_new_kms_vault" {
  default = false
}

variable "kms_key_ocid" {
  default = ""
}

variable "key_display_name" {
    default = "kms_key"
}

variable "key_key_shape_algorithm" {
    default = "RSA"
}

variable "key_key_shape_length" {
    default = "256"
}

variable "key_key_protection_mode" {
  default = "HSM"
}

variable "vault_display_name" {
    default = "kms_vault"
}

variable "vault_type" {
  type    = list(string)
  default = ["DEFAULT", "VIRTUAL_PRIVATE"]
}

