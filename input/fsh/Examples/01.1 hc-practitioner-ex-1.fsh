Instance: example-healthconnect-practitioner-1
InstanceOf: HCPractitioner
Usage: #example
Title: "Health Connect - Helen Mayo"
Description: "An example of practitioner Helen Mayo at Down under hospital that conforms to [Health Connect Practitioner - Practitioner](StructureDefinition-hc-practitioner.html) profile."

* meta.lastUpdated = "2025-08-25T14:30:00+10:00"

* extension[recordedSexOrGender].extension[value].valueCodeableConcept = $administrative-gender#female "Female"

* extension[genderIdentity].extension[value].valueCodeableConcept = $sct#446141000124107 "Female gender identity"

* identifier[hpii].value = "8003616566719020"

* qualification.identifier[ahpraregistrationnumber].system = "http://hl7.org.au/id/ahpra-registration-number"
* qualification.identifier[ahpraregistrationnumber].value = "MED0000932945"
* qualification.code.text = "Medical Practitioner"
* qualification.issuer.display = "Ahpra"

* name[officialName].use = #official
* name[officialName].family = "Mayo"
* name[officialName].given = "Helen"
* name[officialName].prefix = "Dr"
* name[preferredName].use = #usual
* name[preferredName].family = "Mayo"
* name[preferredName].given = "Helen"

* telecom[personalPhoneNumber].system = #phone
* telecom[personalPhoneNumber].use = #home
* telecom[personalPhoneNumber].value = "+61412345678"

* telecom[personalEmailAddress].system = #email
* telecom[personalEmailAddress].use = #home
* telecom[personalEmailAddress].value = "helen.mayo@example.com"