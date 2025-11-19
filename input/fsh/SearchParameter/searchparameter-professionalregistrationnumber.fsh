Instance: ProfessionalRegistrationNumber
InstanceOf: SearchParameter
Usage: #definition
Title: "Professional Registration Number Search Parameter"
Description: "Search a Practitioner record by their Professional Registration Number."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/ProfessionalRegistrationNumber"
* name = "SearchParameterProfessionalRegistrationNumber"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #prn
* base = #Practitioner
* type = #token
* description = "Search for Practitioner by Professional Registration Number (PRN)."
* expression = "identifier.where(type.coding.code = 'PRN').value"