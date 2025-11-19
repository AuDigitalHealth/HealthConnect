Profile: PCAHealthcareServiceIdentifier
Parent: Identifier
Id: pca-hsi
Title: "HC PCA Healthcare Service Identifier (PCA-HSI)"
Description: "Identifier for a healthcare service as allocated by PCA."
* system 1..1
* system = "http://pca.digitalhealth.gov.au/fhir/4.0/StructureDefinition/pca-healthcare-service-identifier" (exactly)
* value 1..1
* system ^short = "PCA-allocated identifier system for healthcare service."
* value ^short = "PCA-allocated identifier value for healthcare service."