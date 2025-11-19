Invariant: hc-practitioner-registration-required
Description: "At least one professional registration must be present in qualifications (Ahpra or other professional registration)"
Expression: "qualification.identifier.where(type.coding.code = 'AHPRA').exists() or qualification.identifier.where(type.coding.code = 'PRN').exists()"
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

* obeys hc-practitioner-registration-required

* extension[recordedSexOrGender] 1..1 MS
* extension[genderIdentity] 0..1 MS
* extension[genderIdentity] ^binding.strength = #preferred
* extension[genderIdentity] ^binding.valueSet = "http://ns.electronichealth.net.au/hc/ValueSet/HCGenderIdentityVs"

* identifier 1..* MS

* identifier[hpii] 1..1 MS
* identifier[hpii] only AUHPII
* identifier[hpii] ^short = "HPI-I identifier"

* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains officialName 1..1 MS and
                preferredName 0..1 MS
* name[officialName].use = #official (exactly)
* name[officialName] ^short = "Legal Registered Name"
* name[officialName] ^definition = "The registered name of the Practitioner with the Ahpra board / Professional association / Peak body profession, as obtained from the HI service."
* name[officialName].family 1..1
* name[officialName].family ^short = "Practitioner's family name"
* name[officialName].given 0..1
* name[officialName].given ^short = "Practitioner's given name"
* name[officialName].prefix 0..1
* name[officialName].prefix ^short = "Title"
* name[preferredName].use = #usual (exactly)
* name[preferredName] ^short = "Additional preferred name or alias of a practitioner"
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
* telecom[personalPhoneNumber].value 1..1

* telecom[personalEmailAddress].system = #email (exactly)
* telecom[personalEmailAddress].use = #home (exactly)
* telecom[personalEmailAddress] ^short = "Personal Email address"
* telecom[personalEmailAddress] ^definition = "Personal Email address for the practitioner"
* telecom[personalEmailAddress].value 1..1

* qualification 1.. MS
* qualification ^short = "Certifications, licenses, or training pertaining to the provision of care"
* qualification ^definition = "The official certifications, training, and licenses that authorize or otherwise pertain to the provision of care by the practitioner."

* qualification.identifier 1..1 MS  
* qualification.identifier ^short = "An identifier for this qualification"
* qualification.identifier ^slicing.discriminator.type = #pattern
* qualification.identifier ^slicing.discriminator.path = "type"
* qualification.identifier ^slicing.rules = #open

* qualification.identifier contains 
    ahpraregistrationnumber 0..1 MS and
    professionalRegistration 0..1 MS

* qualification.identifier[ahpraregistrationnumber] only $au-ahpraregistrationnumber
* qualification.identifier[ahpraregistrationnumber] ^short = "Ahpra registration number"

* qualification.identifier[professionalRegistration] only HCProfessionalRegistrationNumber  
* qualification.identifier[professionalRegistration] ^short = "Professional registration number for non-Ahpra practitioners"

* qualification.code MS
* qualification.code ^short = "Profession of the Practitioner."
* qualification.code ^definition = "Profession is to be sent via code.text"