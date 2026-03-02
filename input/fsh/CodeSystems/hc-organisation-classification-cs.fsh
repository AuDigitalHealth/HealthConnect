CodeSystem: HcOrgClassCS
Id: hc-org-classification-cs
Title: "HC Organization Classification CodeSystem"
Description: "Internal code system that describes whether an organisation is a 'seed' or 'network' type used by Health Connect."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/hc-org-classification-cs"
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
* ^caseSensitive = true
* ^compositional = false
* ^versionNeeded = true
* ^content = #complete
* ^version = "1.0.0"
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* #seed "Seed" "The organisation is a 'seed' in the HI Service"
* #network "Network" "The organisation is a 'network' in the HI Service"
