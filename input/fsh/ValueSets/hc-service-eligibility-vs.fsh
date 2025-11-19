ValueSet: HCServiceEligibilityValueSet
Id: hc-service-eligibility-vs
Title: "HC Service Eligibility ValueSet"
Description: "The Health Connect value set for service eligibility, modeled after PCA's eligibility value set. Codes represent eligibility requirements for healthcare services."
* ^url = "http://ns.electronichealth.net.au/hc/ValueSet/hc-service-eligibility-vs"
* ^status = #draft
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "Australian Digital Health Agency"
* ^contact[0].name = "Australian Digital Health Agency"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "help@digitalhealth.gov.au"
* ^copyright = "This value set is a derivative of the PCA Service Eligibility ValueSet. Copyright © Australian Digital Health Agency."

* include codes from system http://ns.electronichealth.net.au/hc/CodeSystem/hc-service-eligibility-cs
