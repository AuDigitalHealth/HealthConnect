ValueSet: HcOrgClassVS
Id: hc-org-classification-vs
Title: "HC Organization Classification ValueSet"
Description: "The Health Connect ValueSet referencing the HC Organization Classification CodeSystem (seed, network)."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/ValueSet/hc-org-classification-vs"
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
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* include codes from system http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/hc-org-classification-cs