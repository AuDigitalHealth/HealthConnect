Extension: HcOrgClassification
Id: hc-org-classification
Title: "HC Organization Classification"
Description: "Extension to record whether an organisation's HPIO is a 'seed' or 'network' type in the HI service."
Context: Organization.identifier
* ^publisher = "Australian Digital Health Agency"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved."
* . ^short = "Indicates whether an organisation is a seed or network"
* . ^definition = "This extension applies to Organization, and indicates whether an organisation is a seed or network in the HI service."
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-org-classification"
* ^status = #draft
* value[x] only CodeableConcept
* valueCodeableConcept from HcOrgClassVS (required)
* valueCodeableConcept ^short = "Indicates whether an organisation is a seed or network"
* valueCodeableConcept ^definition = "This extension applies to Organization, and indicates whether an organisation is a seed or network in the HI service."