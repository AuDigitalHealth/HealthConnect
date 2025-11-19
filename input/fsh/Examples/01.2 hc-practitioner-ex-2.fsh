Instance: external-hc-practitioner-record
InstanceOf: HCPractitioner
Usage: #example
Title: "Health Connect - External HC Practitioner Record"
Description: "Example of a practitioner record with PRN type identifier from the HC (Health Connect) system that serves as the source for provenance tracking that conforms to [Health Connect Practitioner - Practitioner](StructureDefinition-hc-practitioner.html) profile."

* extension[recordedSexOrGender].extension[value].valueCodeableConcept = $administrative-gender#male "Male"

* extension[genderIdentity].extension[value].valueCodeableConcept = $sct#446151000124109 "Male gender identity"

* identifier[hpii].value = "8003616566719020"

* name[officialName].use = #official
* name[officialName].family = "Fryer"
* name[officialName].given = "John"
* name[officialName].prefix = "Dr"
* name[preferredName].use = #usual
* name[preferredName].family = "Fryer"
* name[preferredName].given = "John"

// Phone number that was updated in HC from this PCA record
* telecom[+].system = #phone
* telecom[=].value = "+61 2 8555 0199" // This is the phone number sourced from PCA
* telecom[=].use = #work

* telecom[personalPhoneNumber].system = #phone
* telecom[personalPhoneNumber].value = "+61 2 7777 0199" 
* telecom[personalPhoneNumber].use = #home

* qualification.identifier[professionalRegistration].type = $v2-0203-int#PRN
* qualification.identifier[professionalRegistration].type.text = "Professional Registration Number (PRN)"
* qualification.identifier[professionalRegistration].system = "http://ns.electronichealth.net.au/hc/id/prn"
* qualification.identifier[professionalRegistration].value = "PRN-123456"
* qualification.identifier[professionalRegistration].use = #official
* qualification.code.text = "Clinical Hypnotherapist"
* qualification.issuer.display = "Australian Clinical Hypnotherapy Association"

* qualification.identifier.type = $v2-0203-int#PRN
* qualification.identifier.type.text = "Professional Registration Number (PRN)"
* qualification.identifier.system = "http://ns.electronichealth.net.au/hc/id/prn"
* qualification.identifier.value = "PRN-123456"
* qualification.identifier.use = #official
* qualification.code.text = "Pathologist"
* qualification.issuer.display = "RCPA"

// Communication

// Communication
* communication = urn:ietf:bcp:47#it "Italian"