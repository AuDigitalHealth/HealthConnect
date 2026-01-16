Instance: example-healthconnect-mobile-unit-coverage-area-1
InstanceOf: HCLocation
Usage: #example
Title: "HC Location Example: Mobile Unit Service Coverage Area"
Description: "A virtual coverage area defining the geographical service boundary for the mobile healthcare unit."

* meta.lastUpdated = "2025-09-01T14:45:30Z"

* identifier[+].type = $v2-0203#LSPN "Location Specific Practice Number"
* identifier[=].type.text = "LSPN"
* identifier[=].system = "http://ns.electronichealth.net.au/id/location-specific-practice-number"
* identifier[=].value = "876543"

* name = "Sydney CBD Mobile Unit Service Area"
* description = "Coverage area served by the Sydney CBD Mobile Healthcare Unit, encompassing the central business district and surrounding areas."

* telecom[phone].value = "(02) 1234 5678"
* telecom[phone].use = #work

* telecom[email].value = "info@sydneycentralmc.com.au"
* telecom[email].use = #work

* managingOrganization = Reference(example-healthconnect-organization-1)

* type = http://terminology.hl7.org.au/CodeSystem/location-type#VI "Virtual"

// This coverage area is served by the mobile healthcare unit
* partOf = Reference(example-healthconnect-mobile-healthcare-unit-1)