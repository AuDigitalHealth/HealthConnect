Instance: external-hc-practitioner-record
InstanceOf: HCPractitioner
Usage: #example
Title: "HC Practitioner Example: External Record (PRN)"
Description: "An external practitioner record example (PRN identifier) conforming to the HC Practitioner profile."

* extension[recordedSexOrGender].extension[value].valueCodeableConcept = $administrative-gender#male "Male"

* extension[genderIdentity].extension[value].valueCodeableConcept = $sct#446151000124109 "Identifies as male gender"

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

* qualification[0].identifier[peakbodyregistrationnumber].type = $v2-0203-int#PRN
* qualification[0].identifier[peakbodyregistrationnumber].type.text = "Professional Registration Number (PRN)"
* qualification[0].identifier[peakbodyregistrationnumber].system = "http://example.org/fhir/identifier/acha-prn"
* qualification[0].identifier[peakbodyregistrationnumber].value = "PRN-123456"
* qualification[0].identifier[peakbodyregistrationnumber].use = #official
* qualification[0].code.text = "Clinical Hypnotherapist"
* qualification[0].issuer.display = "Australian Clinical Hypnotherapy Association"

* qualification[1].identifier[peakbodyregistrationnumber].type = $v2-0203-int#PRN
* qualification[1].identifier[peakbodyregistrationnumber].type.text = "Professional Registration Number (PRN)"
* qualification[1].identifier[peakbodyregistrationnumber].system = "http://example.org/fhir/identifier/rcpa-prn"
* qualification[1].identifier[peakbodyregistrationnumber].value = "PRN-2468"
* qualification[1].identifier[peakbodyregistrationnumber].use = #official
* qualification[1].code.text = "Pathologist"
* qualification[1].issuer.display = "RCPA"

// Communication

// Communication
* communication = urn:ietf:bcp:47#it "Italian"