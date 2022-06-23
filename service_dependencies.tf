## Copyright (c) 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
   
resource "oci_certificates_management_ca_bundle" "test_ca_bundle" {
  #Required
  ca_bundle_pem  = local.ca_bundle_ca_bundle_pem
  compartment_id = var.compartment_ocid
  name           = local.ca_bundle_name
  defined_tags   = { "${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}

locals {
  ca_bundle_name          = "mesh-ca-bundle-${random_id.tag.hex}"
  ca_bundle_ca_bundle_pem = "-----BEGIN CERTIFICATE-----\nMIICwjCCAaqgAwIBAgICEAAwDQYJKoZIhvcNAQELBQAwFzEVMBMGA1UEAwwMdGVz\ndC1yb290LWNhMB4XDTIwMDkxMTIyMjczMFoXDTIxMDkxMTIyMjczMFowHzEdMBsG\nA1UEAwwUdGVzdC1pbnRlcm1lZGlhdGUtY2EwggEiMA0GCSqGSIb3DQEBAQUAA4IB\nDwAwggEKAoIBAQDoGijYmLa6P+2C2hcXV7DNBuZ0K+1x41lC8emin9d6wsxsWYJn\nUzthLgJ28eol9CsDQlgRt+rGfYzKgfG7y7Wg7WYQXFHYZt1ANRB0OEVJYm7xurMA\nw6T68gBBctbLCcsk2WmWKp50Js7bwMKGGpCuDQ3YGWb1Bn1cu1qC9eWxl+VXV7RU\nMug1CtloLLrUlZt3FjbKBZEhhq4L6ukKTfNUzAofu4Q0ACxWht7ueuJMWaAaOUR2\nHu5KuGjkiJLvW/wRFeN55+rtuh9Bw/fKnhEq5/q9VCmw4g9sfNO0wIUqBhYx8etF\nYsGww1FWOEtGdUDv8NazYowPdpDwZzWA9UaPAgMBAAGjEDAOMAwGA1UdEwQFMAMB\nAf8wDQYJKoZIhvcNAQELBQADggEBAIrr04h+LmTM/JXEE/7kD8sB77YQhkbaWZPV\nuOwgdwVldAaGJkp4nyFPgcm+W7AXuoMMCq1ONNQuic2voopGU3EFng/tGODdYxiR\nedHyRPX23tJF19MSIJebJ7PNu2LtUU7tQspf4yqt4sBxW0nwjjSNyxPIZdnjNgFG\nHqpGgfIS9rSm89A6XRhwLSiudsQV/bfdHOgYUNuaPZn5LiyxHvHAorsZ1rpymNa6\nL78Mn4YLEBIT6XftA67z9g9N963FhGM0Il2iUVXm4HU/XqM26s94ZHlCIVJnV5xQ\nmjUvxEKNZMc7CRgz1Mr0Am898gQQZZrySHpDNvhpP50OeYH9/mU=\n-----END CERTIFICATE-----`, Update: `-----BEGIN CERTIFICATE-----\n\nMIICwTCCAamgAwIBAgIJAMz8Puud7CUcMA0GCSqGSIb3DQEBCwUAMBcxFTATBgNV\nBAMMDHRlc3Qtcm9vdC1jYTAeFw0yMDA5MTEyMjI3MzBaFw0zMDA5MDkyMjI3MzBa\nMBcxFTATBgNVBAMMDHRlc3Qtcm9vdC1jYTCCASIwDQYJKoZIhvcNAQEBBQADggEP\nADCCAQoCggEBALQql3DFigzMMlTXGJlz4ulZJx3kPmCySwl2rzZ+jZhMF8Oy/5xn\n99ToHgbj+Pp/7XWuogtwkfoZYmU1BTHyjZlaNccTLwkP/4SkjZ7cKsv4TTCN0q/4\nZF6dVoQOom/owREX4YEnISUgN4U5vpZkzkr3NOpiULAmimrROq52TcC2y52ijui9\nSf7QDmtVW7M4kUFjT+If/2yxX/g1dsbKxh+cuZimLWypD3TmhWehglgEZRiDnXJL\n7davAG0DOeO2scnglOY0JAOyM6po4WALmBf6OBxl2jiYpwWgkXMhgGf5u3ID6IDP\nJ2ZeYb9PZ2Z5jYGxUDLRVaaXr0a4a4UbvuECAwEAAaMQMA4wDAYDVR0TBAUwAwEB\n/zANBgkqhkiG9w0BAQsFAAOCAQEATqNEMvk7NUi6M9tv743CVGZa9JLdpdD9ZCbY\nvH6qEl5nVVAiUiKCRSnntDNtUkFd9tVQGk5Hgp2aMm1epq6kC3N0K4Dbsg1dWU4O\nYRG47CSv+sBI4VpDqRjtOS3+FlmMlm237ahs7YcwHNUqqGKbl9QZACxXZeCArYhZ\nt6xDqLb0gKON5gKlhnUqhYTT4+CcBan2nnr7sbdZhwtOmFgrowvs4OVh6WwdbI9m\nSdNKzy7AXAlcodkXAfjIoODeOQdEK6/Ine1K+W4sOk9e+oymoD0KnzhDLI3MDB3V\nGKIiVcct3DMHGI+y04/kcuasqUo4l6lrjt2wJF1pHbaxKIcyGQ==\n-----END CERTIFICATE-----"
}
