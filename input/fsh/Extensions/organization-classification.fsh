Extension: HCOrgClassification
Id: hc-org-classification
Title: "HC Organisation Classification"
Description: "Extension to record whether an organisation's HPIO is a 'seed' or 'network' type in the HI service."
Context: Organization.identifier
* ^status = #draft
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* . ^short = "Indicates whether an organisation is a seed or network"
* . ^definition = "This extension applies to Organization, and indicates whether an organisation is a seed or network in the HI service."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-org-classification"
* ^status = #draft
* value[x] only CodeableConcept
* valueCodeableConcept from HcOrgClassVS (required)
* valueCodeableConcept ^short = "Indicates whether an organisation is a seed or network"
* valueCodeableConcept ^definition = "This extension applies to Organization, and indicates whether an organisation is a seed or network in the HI service."