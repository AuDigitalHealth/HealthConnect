CodeSystem: HCServiceProvisionCodeCodeSystem
Id: hc-service-provision-code-cs
Title: "HC Service Provision Code"
Description: "The HC Service Provision Code code system defines a concept (in addition to those defined in [Service Provision Conditions Australian Concepts](https://hl7.org.au/fhir/4.1.0/CodeSystem-service-provision-conditions.html) that may be used to identify the service provision condition of a healthcare service in HC."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/hc-service-provision-code-cs"
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."
* ^caseSensitive = true
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* ^count = 1
* ^version = "1.0.0"
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"

* #MIX "Mixed Billing" "Bulk billing available with conditions, fees may apply"