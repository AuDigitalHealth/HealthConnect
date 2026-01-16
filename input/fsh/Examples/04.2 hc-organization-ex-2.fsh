Instance: example-healthconnect-organization-2
InstanceOf: HCOrganization
Usage: #example
Title: "HC Organization Example: Home Care Support Service"
Description: "A Home Care Support Service example conforming to the HC Organization profile with HSP-O identifier."

* meta.lastUpdated = "2025-09-15T14:20:00Z"

* active = true
* partOf = Reference(example-healthconnect-organization-1)
* identifier[hspo].value = "8003640000000003"
* identifier[hspo].extension[HCOrgClassification].valueCodeableConcept.coding = $hc-org-class-cs#seed "Seed"
* identifier[abn].system = "http://hl7.org.au/id/abn"
* identifier[abn].type.text = "ABN"
* identifier[abn].value = "98765432109"
* identifier[acn].system = "http://hl7.org.au/id/acn"
* identifier[acn].type.text = "ACN"
* identifier[acn].value = "987654321"

* name = "Caring Hands Home Support"
* alias = "Caring Hands"
* alias = "CHHS"

* telecom[+].system = #phone
* telecom[=].value = "(02) 9555 1200"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(02) 9555 1201"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "admin@caringhands.com.au"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "support@caringhands.com.au"
* telecom[=].use = #work

* telecom[+].system = #url
* telecom[=].value = "https://www.caringhands.com.au"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "+61 2 9555 1299"
* telecom[=].use = #work

// Physical/Registered Address - Required may be physical or both
* address[physical].type = #physical
* address[physical].line = "Suite 15, 88 Liverpool Street"
* address[physical].city = "Sydney"
* address[physical].state = "NSW"
* address[physical].postalCode = "2000"
* address[physical].country = "AU"

// Postal/Mailing Address - Optional
* address[postal].type = #postal
* address[postal].line = "PO Box 5678"
* address[postal].city = "Sydney"
* address[postal].state = "NSW"
* address[postal].postalCode = "1234"
* address[postal].country = "AU"