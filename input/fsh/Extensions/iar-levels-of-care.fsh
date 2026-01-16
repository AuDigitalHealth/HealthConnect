Extension: IARLevelsOfCareExtension
Id: iar-levels-of-care
Title: "IAR Levels of Care"
Description: "Indicates the IAR (Initial Assessment and Referral) Levels of Care for a healthcare service.\n\nContext of Use: HealthcareService\n\nCodes from: http://ns.electronichealth.net.au/hc/CodeSystem/hc-iar-levels-of-care"
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/iar-levels-of-care"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "IAR Levels of Care for the healthcare service."
* valueCodeableConcept ^definition = "The Initial Assessment and Referral (IAR) Levels of Care for the healthcare service."
* valueCodeableConcept from IARLevelsOfCareVs (required)