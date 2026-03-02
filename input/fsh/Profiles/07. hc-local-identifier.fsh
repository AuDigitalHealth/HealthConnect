Profile: HCLocalIdentifier
Parent: Identifier
Id: hc-local-identifier
Title: "HC Local Identifier (HC-LI)"
Description: "This profile of Identifier defines a HC Local Identifier (HC-LI) used for system reference and internal business logic."
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
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License."
* . ^short = "HC Local Identifier (HC-LI)"
* . ^definition = "Local Identifier for HC Location."
* type 1..
* type = $v2-0203-int#XX
* system 1..
* system = "http://digitalhealth.gov.au/fhir/hcpd/id/hc-local-identifier" (exactly)
* value 1..
* system ^short = "HC Local Identifier system"
* system ^definition = "Canonical system for HC Local Identifiers (HC-LI)."
* value 1..1
* value ^short = "HC-LI"