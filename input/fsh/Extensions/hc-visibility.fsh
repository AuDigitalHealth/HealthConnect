Extension: HCSuppressed
Id: hc-suppressed
Title: "HC Suppressed"
Context: PractitionerRole, Organization, Practitioner
Description: "Indicates whether the parent resource should be hidden from display in the Provider Directory. A value of TRUE indicates that the resource should be hidden."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-suppressed"
* ^status = #draft
* ^experimental = false
* ^context.type = #element
* . ^short = "Hide Practitioner Role in Directory"
* . ^definition = "A boolean value indicating whether the parent resource should be hidden from display in the Provider Directory"
* value[x] only boolean
* value[x] ^short = "True if the parent resource should be hidden"
* value[x] ^definition = "A boolean value indicating whether the parent resource should be hidden from display in the Provider Directory. A value of TRUE indicates that the resource should be hidden."