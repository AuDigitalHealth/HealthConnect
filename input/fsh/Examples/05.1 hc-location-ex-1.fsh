Instance: example-healthconnect-Physical-location-with-wheelchair-access-1
InstanceOf: HCLocation
Usage: #example
Title: "Health Connect - Example Physical location with wheelchair access"
Description: "An example of Location that conforms to [Health Connect Location - location](StructureDefinition-hc-location.html) profile."

* meta.lastUpdated = "2025-09-01T14:45:30Z"

* identifier[+].type = $v2-0203#NATAS "NATA Site Number"
* identifier[=].type.text = "NATA Site Number"
* identifier[=].system = "http://hl7.org.au/id/nata-site"
* identifier[=].value = "162899"

* identifier[+].type = $v2-0203#LSPN "Location Specific Practice Number"
* identifier[=].type.text = "LSPN"
* identifier[=].system = "http://ns.electronichealth.net.au/id/location-specific-practice-number"
* identifier[=].value = "123333"

* name = "Physical location with wheelchair access"
* alias = "Ye Old Physical location with wheelchair access"
* address.extension.url = "http://hl7.org.au/fhir/StructureDefinition/address-identifier"
* address.extension.valueIdentifier.type = $v2-0203#GNAF "Geocoded National Address File Identifier"
* address.extension.valueIdentifier.type.text = "G-NAF"
* address.extension.valueIdentifier.system = "http://hl7.org.au/id/gnafidentifier"
* address.extension.valueIdentifier.value = "GANSW718473771"
* address.type = #physical
* address.text = "Shop 8, 151 Castlereagh Street, SYDNEY NSW 2000"
* address.line[0] = "Shop 8"
* address.line[+] = "147-153 Castlereagh Street"
* address.city = "SYDNEY"
* address.state = "NSW"
* address.postalCode = "2000"
* address.country = "AU"

* extension[+].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address"
* extension[=].valueAddress.use = #work
* extension[=].valueAddress.type = #postal
* extension[=].valueAddress.text = "PO Box 123, SYDNEY NSW 2000"
* extension[=].valueAddress.line = "PO Box 123"
* extension[=].valueAddress.city = "SYDNEY"
* extension[=].valueAddress.state = "NSW"
* extension[=].valueAddress.postalCode = "2000"
* extension[=].valueAddress.country = "AU"

* extension[+].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-amenity"
* extension[=].valueCodeableConcept = HCAmenity-cs#wheelchairAccess "Wheelchair Access"
* telecom[phone].value = "(02) 1234 5678"
* telecom[phone].use = #work

* telecom[email].value = "info@location.com.au"
* telecom[email].use = #work

* telecom[+].system = #url
* telecom[=].value = "https://www.mocklocation.com.au"
* telecom[=].use = #work

* telecom[+].system = #fax
* telecom[=].value = "+61 2 9999 8888"
* telecom[=].use = #work

* managingOrganization = Reference(example-healthconnect-organization-1)

* type.coding[0] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MOBL "Mobile Unit"
* type.coding[+] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PTRES "Patient's Residence"