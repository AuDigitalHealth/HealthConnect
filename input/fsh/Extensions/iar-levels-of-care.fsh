Extension: IARLevelsOfCareExtension
Id: iar-levels-of-care
Title: "IAR Levels of Care"
Description: "Indicates the IAR (Initial Assessment and Referral) Levels of Care for a healthcare service.\n\nContext of Use: HealthcareService\n\nCodes from: http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/hc-iar-levels-of-care"
* ^url = "http://digitalhealth.gov.au/fhir/cc/StructureDefinition/iar-levels-of-care"
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
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "IAR Levels of Care for the healthcare service."
* valueCodeableConcept ^definition = "The Initial Assessment and Referral (IAR) Levels of Care for the healthcare service."
* valueCodeableConcept from IARLevelsOfCareVs (required)