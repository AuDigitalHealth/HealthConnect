ValueSet: NewPatientAvailabilityVs
Id: new-patient-availability-vs
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/ValueSet/new-patient-availability-vs"
* ^title = "New Patient Availability ValueSet"
* ^description = "IG-local value set mirroring NHSD new patient availability codes."
* ^status = #draft
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* ^experimental = false
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"

* include codes from system http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/new-patient-availability-cs
