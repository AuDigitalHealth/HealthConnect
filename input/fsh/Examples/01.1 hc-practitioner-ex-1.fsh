Instance: example-healthconnect-practitioner-1
InstanceOf: HCPractitioner
Usage: #example
Title: "HC Practitioner Example: Alex Smith"
Description: "An example Practitioner (Alex Smith) conforming to the HC Practitioner profile."

* meta.lastUpdated = "2025-08-25T14:30:00+10:00"

* extension[recordedSexOrGender].extension[value].valueCodeableConcept = $administrative-gender#female "Female"

* extension[genderIdentity].extension[value].valueCodeableConcept = $sct#446141000124107 "Identifies as female gender"

* identifier[hpii].value = "8003619900015717"

* qualification.identifier[ahpraregistrationnumber].system = "http://hl7.org.au/id/ahpra-registration-number"
* qualification.identifier[ahpraregistrationnumber].value = "MED0000932945"
* qualification.code.text = "Medical Practitioner"
* qualification.issuer.display = "Ahpra"

* name[officialName].use = #official
* name[officialName].family = "Smith"
* name[officialName].given = "Alex"
* name[officialName].prefix = "Dr"
* name[preferredName].use = #usual
* name[preferredName].family = "Smith"
* name[preferredName].given = "Alex"

* telecom[personalPhoneNumber].system = #phone
* telecom[personalPhoneNumber].use = #home
* telecom[personalPhoneNumber].value = "+61412345678"

* telecom[personalEmailAddress].system = #email
* telecom[personalEmailAddress].use = #home
* telecom[personalEmailAddress].value = "alex.smith@example.com"