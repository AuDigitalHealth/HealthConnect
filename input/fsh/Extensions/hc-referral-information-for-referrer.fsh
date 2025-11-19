Extension: HcReferralInformationForReferrer
Id: hc-referral-information-for-referrer
Title: "HC Referral Information for Referrer"
Description: "Referral instructions and information for healthcare service providers that may wish to refer patients / clients to the healthcare service. Modeled after PCA but for Health Connect context."
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-referral-information-for-referrer"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only markdown
* valueMarkdown ^short = "Referral information for referrer"
* valueMarkdown ^definition = "Information for referrers about referral requirements for this healthcare service."
