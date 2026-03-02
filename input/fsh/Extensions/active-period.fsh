Extension: ActivePeriod
Id: active-period
Title: "Active Period"
Description: "The period during which the HealthcareService is considered active in the Health Connect Provider Directory Responder. Patterned after PCA Active Period."
* ^url = "http://digitalhealth.gov.au/fhir/cc/StructureDefinition/active-period"
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
* value[x] only Period
* valuePeriod ^short = "The period during which the HealthcareService is active."
* valuePeriod ^definition = "The time period during which the HealthcareService is considered active in the Health Connect Provider Directory Responder."