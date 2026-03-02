Extension: NewPatientAvailability
Id: new-patient-availability
Title: "New Patient Availability"
Description: "Indicates whether the healthcare service is accepting new patients. Patterned after PCA New Patient Availability extension.\n\nContext of Use: HealthcareService"
* ^url = "http://digitalhealth.gov.au/fhir/cc/StructureDefinition/new-patient-availability"
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
* valueCodeableConcept from NewPatientAvailabilityVs (required)
* valueCodeableConcept ^short = "New patient availability status."
* valueCodeableConcept ^definition = "Coded indicator of whether the healthcare service is accepting new patients (bound to IG-local New Patient Availability value set)."
