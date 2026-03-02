ValueSet: IARLevelsOfCareVs
Id: iar-levels-of-care-vs
Title: "IAR Levels of Care ValueSet"
Description: "All codes from the IAR Levels of Care CodeSystem are for use in the context of the iar-levels-of-care extension. This resource includes material that is based on Commonwealth of Australia material."
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/ValueSet/iar-levels-of-care-vs"
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
* include codes from system http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/iar-levels-of-care
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"