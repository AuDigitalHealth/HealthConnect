Invariant: hc-practitionerrole-practitioner-registration-required
Description: "Either Ahpra or PRN identifier shall exist, and the total count shall be exactly 1"
Expression: "(identifier.where(type.coding.code.contains('AHPRA')).exists() or identifier.where(type.coding.code.contains('PRN')).exists()) and (identifier.where(type.coding.code.contains('AHPRA')).count() + identifier.where(type.coding.code.contains('PRN')).count()) = 1"
Severity: #error

Invariant: hc-practitionerrole-registration-match
Description: "PractitionerRole registration identifiers must match with the referenced Practitioner's registration identifiers in qualifications"
Expression: "practitioner.resolve().qualification.identifier.where(type.coding.code = 'AHPRA').value.intersect(identifier.where(type.coding.code = 'AHPRA').value).exists() or practitioner.resolve().qualification.identifier.where(type.coding.code = 'PRN').value.intersect(identifier.where(type.coding.code = 'PRN').value).exists()"
Severity: #error

Profile: HCPractitionerRole
Parent: AUCorePractitionerRole
Id: hc-practitionerrole
Title: "HC PractitionerRole"
Description: "This profile defines a practitioner in role for an organisation at a location providing a healthcare service."
* ^status = #draft
* ^experimental = false
* . ^definition = "Directory entry for a provider at a location for an organisation."

* obeys hc-practitionerrole-practitioner-registration-required
* obeys hc-practitionerrole-registration-match

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on identifier system: must include at least one HC Location Identifier known to this profile"
* identifier ^slicing.ordered = false
* identifier 1..* MS
* identifier[medicareProvider] 0..1 MS
* identifier[medicareProvider] ^short = "Medicare provider number"

* identifier contains professionalregistrationnumber 0..1 MS
* identifier[professionalregistrationnumber] only HCProfessionalRegistrationNumber
* identifier[professionalregistrationnumber] ^short = "Professional association / Peak body association (for non-Ahpra registered practitioners), as recorded against the HPI-I record"

* identifier contains ahpraregistrationnumber 0..1 MS
* identifier[ahpraregistrationnumber] only $au-ahpraregistrationnumber
* identifier[ahpraregistrationnumber] ^short = "Ahpra Registration Number"

* period 1..1 MS
* period ^short = "The period during which the practitioner is active in this role."
* practitioner 1.. 
* practitioner only Reference(HCPractitioner)
* practitioner ^short = "Practitioner in the role"
* practitioner ^definition = "Australian practitioner directory entry in this role."
* organization 1.. 
* organization only Reference(HCOrganization)
* organization ^short = "Organisation providing this role. Reference to be the same organisation as the referenced HealthcareService for this role."
* organization ^definition = "Australian organisation directory entry providing this role."
* code 1..1 MS
* code ^short = "The primary role of the practitioner"
* location 1..1 MS
* location only Reference(HCLocation) 
* location ^short = "Location at which this role is provided. Reference to be the same Location as the referenced HealthcareService for this role."
* location ^definition = "Location details describing where the role is being provided."
* healthcareService 1..1 MS
* healthcareService only Reference(HCHealthcareService)
* healthcareService ^short = "Healthcare service at which this role is provided."
* healthcareService ^definition = "Healthcare details describing where the role is being provided."
* telecom 
* telecom ^short = "Contact details for the practitioner in this role."
* telecom ^definition = "Details for contacting the practitioner in this role."
* availableTime 0..* MS
* availableTime ^short = "Times that the practitioner provides the healthcare service in this role at this location."
* availableTime ^definition = "Times that the practitioner provides the healthcare service in this role at this location."
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* endpoint 0..1 MS
* endpoint only Reference(HCEndpoint)
* endpoint ^short = "Technical endpoints for this practitioner role."
* endpoint ^definition = "Details for service based communication with the practitioner in this role. This can include web services, messaging profiles and other protocol based communication."
* extension 0..*
* extension contains HcPractitionerRoleCommunication named hc-practitioner-role-communication 0..* MS
* extension[HcPractitionerRoleCommunication] ^short = "Practitioner role communication preferences"
* extension[HcPractitionerRoleCommunication] ^definition = "Communication preferences and available modes for a practitioner in this role."
* extension contains http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-name named hc-preferred-name 0..1 MS
* extension[hc-preferred-name] ^short = "Preferred name for this practitioner role"
* extension[hc-preferred-name] ^definition = "Name by which a practitioner chooses to be known in the context of the delivery of a specific healthcare service."
