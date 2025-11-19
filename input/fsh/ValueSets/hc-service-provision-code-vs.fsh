ValueSet: HCServiceProvisionCodeValueSet
Id: hc-service-provision-code-vs
Title: "HC Service Provision Code"
Description: "The HC Service Provision Code value set includes values that may be used to identify the service provision condition of a healthcare service in HC."
* ^url = "http://ns.electronichealth.net.au/hc/ValueSet/hc-service-provision-code-vs"
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^contact[+].telecom.system = #email
* ^contact[=].telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2024 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#BBO
* include http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#FAP
* include http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#NFE

* include codes from system http://ns.electronichealth.net.au/hc/CodeSystem/hc-service-provision-code-cs