Profile: HCEndpointIdentifier
Parent: Identifier
Id: hc-endpoint-identifier
Title: "HC Endpoint Identifier (HC-EPI)"
Description: "This identifier profile defines a unique identifier allocated to a healthcare endpoint, in a Health Connect Provider Directory context."
* ^experimental = false
* ^status = #draft
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* type 1..1
* type = $v2-0203-int#RI
* type ^short = "Coded identifier type for end point identifier"
* system 1..1
* . ^short = "HC Endpoint Identifier system."
* . ^definition = "Assigning system of the HC Endpoint Identifier."
* value 1..1
* value ^short = "HC Endpoint Identifier value."
* value ^definition = "Value of the HC Endpoint Identifier assigned by a publishing system."
* value ^example.label = "HC Endpoint ID"
* value ^example.valueString = "1234567890"