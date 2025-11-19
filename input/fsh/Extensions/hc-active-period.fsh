Extension: HcActivePeriod
Id: hc-active-period
Title: "HC Active Period"
Description: "The period during which the HealthcareService is considered active in the Health Connect directory. Patterned after PCA Active Period."
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-active-period"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only Period
* valuePeriod ^short = "The period during which the HealthcareService is active."
* valuePeriod ^definition = "The time period during which the HealthcareService is considered active in the Health Connect directory."
