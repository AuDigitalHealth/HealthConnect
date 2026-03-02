ValueSet: HCServiceProvisionCodeValueSet
Id: hc-service-provision-code-vs
Title: "HC Service Provision Code"
Description: "The HC Service Provision Code value set includes values that may be used to identify the service provision condition of a healthcare service in HC."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/ValueSet/hc-service-provision-code-vs"
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
* ^version = "1.0.0"
* ^copyright = "Copyright © 2024 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"

* include http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#BBO
* include http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#FAP
* include http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#NFE

* include codes from system http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/hc-service-provision-code-cs