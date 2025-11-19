Instance: example-healthconnect-virtual-telehealth-service-1
InstanceOf: HCLocation
Usage: #example
Title: "Health Connect - Example Virtual Telehealth Service"
Description: "An example of a virtual Location (telehealth service) that conforms to the Health Connect Location profile. This is a virtual/telehealth service and therefore does not include a physical address that conforms to [HealthConnect Location - location](StructureDefinition-hc-location.html) profile."

* meta.lastUpdated = "2025-09-01T14:45:30Z"

* identifier[+].type = $v2-0203#LSPN "Location Specific Practice Number"
* identifier[=].type.text = "LSPN"
* identifier[=].system = "http://ns.electronichealth.net.au/id/location-specific-practice-number"
* identifier[=].value = "565656"

* name = "Virtual Telehealth Service"
* alias = "Ye Old Virtual Telehealth Service"

// Telehealth contact points
* telecom[phone].value = "+61 2 8000 0000"
* telecom[phone].use = #work

* telecom[email].value = "telehealth-support@mockhealth.au"
* telecom[email].use = #work

* telecom[+].system = #url
* telecom[=].value = "https://telehealth.mockservice.au/session/virtual-123"
* telecom[=].use = #work

* telecom[+].system = #url
* telecom[=].value = "https://telehealth.mockservice.au/consult"
* telecom[=].use = #work

* managingOrganization = Reference(example-healthconnect-organization-1)

* type = http://terminology.hl7.org.au/CodeSystem/location-type#VI "Virtual"
