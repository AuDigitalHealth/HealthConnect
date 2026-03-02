Profile: PCAHealthcareServiceIdentifier
Parent: Identifier
Id: pca-hsi
Title: "HC PCA Healthcare Service Identifier (PCA-HSI)"
Description: "Identifier for a healthcare service as allocated by PCA."
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
* system 1..1
* system = "http://pca.digitalhealth.gov.au/fhir/4.0/StructureDefinition/pca-healthcare-service-identifier" (exactly)
* value 1..1
* system ^short = "PCA-allocated identifier system for healthcare service."
* value ^short = "PCA-allocated identifier value for healthcare service."