Invariant: inv-01-qualification-registration-required
Description: "At least one professional registration must be present in qualifications (Ahpra or other professional registration)"
Expression: "qualification.identifier.where(type.coding.where(code = 'AHPRA').exists()).exists() or qualification.identifier.where(type.coding.where(code = 'PRN').exists()).exists()"
Severity: #error

Profile: HCPractitioner
Parent: AUCorePractitioner
Id: hc-practitioner
Title: "HC Practitioner"
Description: "This profile defines Healthcare Provider Individual details who is delivering health related services."
* ^status = #draft
* ^experimental = false
* . ^short = "Healthcare Provider Individual"
* . ^definition = "The practitioner is an individual who provides healthcare or healthcare related services and is
registered by a registration authority as a member of a health profession and/or is a member of a
healthcare professional association that relates to healthcare, and who has been assigned a
healthcare identifier (HPI-I)."

* obeys inv-01-qualification-registration-required

* extension[recordedSexOrGender] 1..1 MS
* extension[recordedSexOrGender] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[recordedSexOrGender] ^extension[=].extension[+].url = "code"
* extension[recordedSexOrGender] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* extension[recordedSexOrGender] ^extension[=].extension[+].url = "actor"
* extension[recordedSexOrGender] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* extension[recordedSexOrGender] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[recordedSexOrGender] ^extension[=].extension[+].url = "code"
* extension[recordedSexOrGender] ^extension[=].extension[=].valueCode = #SHOULD:handle
* extension[recordedSexOrGender] ^extension[=].extension[+].url = "actor"
* extension[recordedSexOrGender] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"

* extension[genderIdentity] 0..1 MS
* extension[genderIdentity] ^binding.strength = #preferred
* extension[genderIdentity] ^binding.valueSet = "http://ns.electronichealth.net.au/hc/ValueSet/HCGenderIdentityVs"
* extension[genderIdentity] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[genderIdentity] ^extension[=].extension[+].url = "code"
* extension[genderIdentity] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* extension[genderIdentity] ^extension[=].extension[+].url = "actor"
* extension[genderIdentity] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* extension[genderIdentity] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[genderIdentity] ^extension[=].extension[+].url = "code"
* extension[genderIdentity] ^extension[=].extension[=].valueCode = #SHOULD:handle
* extension[genderIdentity] ^extension[=].extension[+].url = "actor"
* extension[genderIdentity] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"

* identifier 1..* MS
* identifier ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier ^extension[=].extension[+].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* identifier ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* identifier ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier ^extension[=].extension[+].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* identifier ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* identifier[hpii] 1..1 MS
* identifier[hpii] only AUHPII
* identifier[hpii] ^short = "HPI-I identifier"
* identifier[hpii] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[hpii] ^extension[=].extension[+].url = "code"
* identifier[hpii] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[hpii] ^extension[=].extension[+].url = "actor"
* identifier[hpii] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* identifier[hpii] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[hpii] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* identifier[hpii] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[hpii] ^extension[=].extension[+].url = "code"
* identifier[hpii] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[hpii] ^extension[=].extension[+].url = "actor"
* identifier[hpii] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* identifier[hpii] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[hpii] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"

* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* name ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHOULD:handle
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* name ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name contains officialName 1..1 MS and
                preferredName 0..1 MS
* name[officialName].use = #official (exactly)
* name[officialName] ^short = "Legal Registered Name"
* name[officialName] ^definition = "The registered name of the Practitioner with the Ahpra board / Professional association / Peak body profession, as obtained from the HI service."
* name[officialName].family 1..1
* name[officialName].family ^short = "Practitioner's family name"
* name[officialName].family ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[officialName].family ^extension[=].extension[+].url = "code"
* name[officialName].family ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name[officialName].family ^extension[=].extension[+].url = "actor"
* name[officialName].family ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* name[officialName].family ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[officialName].family ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[officialName].family ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[officialName].family ^extension[=].extension[+].url = "code"
* name[officialName].family ^extension[=].extension[=].valueCode = #SHOULD:handle
* name[officialName].family ^extension[=].extension[+].url = "actor"
* name[officialName].family ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* name[officialName].family ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[officialName].family ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[officialName].given 0..1
* name[officialName].given ^short = "Practitioner's given name"
* name[officialName].given ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[officialName].given ^extension[=].extension[+].url = "code"
* name[officialName].given ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name[officialName].given ^extension[=].extension[+].url = "actor"
* name[officialName].given ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* name[officialName].given ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[officialName].given ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[officialName].given ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[officialName].given ^extension[=].extension[+].url = "code"
* name[officialName].given ^extension[=].extension[=].valueCode = #SHOULD:handle
* name[officialName].given ^extension[=].extension[+].url = "actor"
* name[officialName].given ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* name[officialName].given ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[officialName].given ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[officialName].prefix 0..1
* name[officialName].prefix ^short = "Title"
* name[officialName].prefix ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[officialName].prefix ^extension[=].extension[+].url = "code"
* name[officialName].prefix ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name[officialName].prefix ^extension[=].extension[+].url = "actor"
* name[officialName].prefix ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* name[officialName].prefix ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[officialName].prefix ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[officialName].prefix ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[officialName].prefix ^extension[=].extension[+].url = "code"
* name[officialName].prefix ^extension[=].extension[=].valueCode = #SHOULD:handle
* name[officialName].prefix ^extension[=].extension[+].url = "actor"
* name[officialName].prefix ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* name[officialName].prefix ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[officialName].prefix ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[preferredName].use = #usual (exactly)
* name[preferredName] ^short = "Additional preferred name or alias of a practitioner"
* name[preferredName] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[preferredName] ^extension[=].extension[+].url = "code"
* name[preferredName] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name[preferredName] ^extension[=].extension[+].url = "actor"
* name[preferredName] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* name[preferredName] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[preferredName] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[preferredName] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name[preferredName] ^extension[=].extension[+].url = "code"
* name[preferredName] ^extension[=].extension[=].valueCode = #SHOULD:handle
* name[preferredName] ^extension[=].extension[+].url = "actor"
* name[preferredName] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* name[preferredName] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name[preferredName] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* name[preferredName].family 1..1
* name[preferredName].family ^short = "Practitioner's family name"
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.discriminator[+].type = #value
* telecom ^slicing.discriminator[=].path = "use"
* telecom ^slicing.ordered = false
* telecom ^slicing.rules = #open

* telecom contains
    personalPhoneNumber 0..1 MS and
    personalEmailAddress 0..1 MS

* telecom[personalPhoneNumber].system = #phone (exactly)
* telecom[personalPhoneNumber].use = #home (exactly)
* telecom[personalPhoneNumber] ^short = "Personal phone number"
* telecom[personalPhoneNumber] ^definition = "Personal phone number for the practitioner"
* telecom[personalPhoneNumber] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[personalPhoneNumber] ^extension[=].extension[+].url = "code"
* telecom[personalPhoneNumber] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* telecom[personalPhoneNumber] ^extension[=].extension[+].url = "actor"
* telecom[personalPhoneNumber] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* telecom[personalPhoneNumber] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[personalPhoneNumber] ^extension[=].extension[+].url = "code"
* telecom[personalPhoneNumber] ^extension[=].extension[=].valueCode = #SHOULD:handle
* telecom[personalPhoneNumber] ^extension[=].extension[+].url = "actor"
* telecom[personalPhoneNumber] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* telecom[personalPhoneNumber].value 1..1

* telecom[personalEmailAddress].system = #email (exactly)
* telecom[personalEmailAddress].use = #home (exactly)
* telecom[personalEmailAddress] ^short = "Personal Email address"
* telecom[personalEmailAddress] ^definition = "Personal Email address for the practitioner"
* telecom[personalEmailAddress] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[personalEmailAddress] ^extension[=].extension[+].url = "code"
* telecom[personalEmailAddress] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* telecom[personalEmailAddress] ^extension[=].extension[+].url = "actor"
* telecom[personalEmailAddress] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* telecom[personalEmailAddress] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[personalEmailAddress] ^extension[=].extension[+].url = "code"
* telecom[personalEmailAddress] ^extension[=].extension[=].valueCode = #SHOULD:handle
* telecom[personalEmailAddress] ^extension[=].extension[+].url = "actor"
* telecom[personalEmailAddress] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* telecom[personalEmailAddress].value 1..1

* qualification 1.. MS
* qualification ^short = "Professional registration details of the practitioner"
* qualification ^definition = "Professional registration details of the practitioner."
* qualification ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification ^extension[=].extension[+].url = "code"
* qualification ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* qualification ^extension[=].extension[+].url = "actor"
* qualification ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* qualification ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification ^extension[=].extension[+].url = "code"
* qualification ^extension[=].extension[=].valueCode = #SHOULD:handle
* qualification ^extension[=].extension[+].url = "actor"
* qualification ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"

* qualification.identifier 1..1 MS  
* qualification.identifier ^short = "An identifier for this qualification"
* qualification.identifier ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.identifier ^extension[=].extension[+].url = "code"
* qualification.identifier ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* qualification.identifier ^extension[=].extension[+].url = "actor"
* qualification.identifier ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* qualification.identifier ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.identifier ^extension[=].extension[+].url = "code"
* qualification.identifier ^extension[=].extension[=].valueCode = #SHOULD:handle
* qualification.identifier ^extension[=].extension[+].url = "actor"
* qualification.identifier ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* qualification.identifier ^slicing.discriminator.type = #pattern
* qualification.identifier ^slicing.discriminator.path = "type"
* qualification.identifier ^slicing.rules = #open

* qualification.identifier contains 
    ahpraregistrationnumber 0..1 MS and
    peakbodyregistrationnumber 0..1 MS

* qualification.identifier[ahpraregistrationnumber] only $au-ahpraregistrationnumber
* qualification.identifier[ahpraregistrationnumber] ^short = "Ahpra registration number"
* qualification.identifier[ahpraregistrationnumber] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[+].url = "code"
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[+].url = "actor"
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* qualification.identifier[ahpraregistrationnumber] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[+].url = "code"
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[=].valueCode = #SHOULD:handle
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[+].url = "actor"
* qualification.identifier[ahpraregistrationnumber] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"

* qualification.identifier[peakbodyregistrationnumber] only HCPeakBodyRegistrationNumber  
* qualification.identifier[peakbodyregistrationnumber] ^short = "Peak body, association or societal professional registration number for non-Ahpra practitioners"
* qualification.identifier[peakbodyregistrationnumber] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[+].url = "code"
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[+].url = "actor"
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* qualification.identifier[peakbodyregistrationnumber] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[+].url = "code"
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[=].valueCode = #SHOULD:handle
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[+].url = "actor"
* qualification.identifier[peakbodyregistrationnumber] ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"

* qualification.code MS
* qualification.code ^short = "Profession of the Practitioner."
* qualification.code ^definition = "Profession is to be sent via code.text"
* qualification.code ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.code ^extension[=].extension[+].url = "code"
* qualification.code ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* qualification.code ^extension[=].extension[+].url = "actor"
* qualification.code ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/responder-actor-health-connect"
* qualification.code ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* qualification.code ^extension[=].extension[+].url = "code"
* qualification.code ^extension[=].extension[=].valueCode = #SHOULD:handle
* qualification.code ^extension[=].extension[+].url = "actor"
* qualification.code ^extension[=].extension[=].valueCanonical = "http://ns.electronichealth.net.au/hc/ActorDefinition/requester-actor-health-connect"
* qualification.code.text 1..1 MS
* qualification.code.text ^short = "Text representation of the Practitioner Profession."

* qualification.issuer MS