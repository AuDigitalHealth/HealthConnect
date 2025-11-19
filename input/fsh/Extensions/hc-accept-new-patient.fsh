Extension: HCAcceptNewPatient
Id: hc-accept-new-patient
Title: "HC Accept New Patient"
Description: "Indicates whether the healthcare service is accepting new patients. Patterned after PCA New Patient Availability extension.\n\nContext of Use: HealthcareService"
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-accept-new-patient"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only boolean
* valueBoolean ^short = "Whether the healthcare service is accepting new patients."
* valueBoolean ^definition = "True if the healthcare service is accepting new patients; false otherwise."
