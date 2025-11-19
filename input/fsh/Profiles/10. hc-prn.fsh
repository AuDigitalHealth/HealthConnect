Profile: HCProfessionalRegistrationNumber
Parent: Identifier
Id: hc-prn
Title: "HC Professional Registration Number (HC-PRN)"
Description: "This identifier profile defines a professional registration number allocated to a healthcare practitioner, in a Health Connect provider directory context."
* ^status = #draft
* . ^short = "Professional Registration Number"
* . ^definition = "Professional Registration Number that the practitioner has with Professional association / Peak body association (for non-Ahpra registered practitioners), as recorded against the HPI-I record."
* type 1.. MS
* type = $v2-0203-int#PRN
* type ^short = "Coded identifier type for professional registration number"
* system MS
* system ^short = "Professional registration number system."
* system ^definition = "Namespace for the professional registration number."
* value 1.. MS
* value ^short = "Professional registration number value."
* value ^definition = "Professional registration number value."
* assigner MS
* assigner.display MS
* assigner.display ^short = "Text alternative for the Organization"