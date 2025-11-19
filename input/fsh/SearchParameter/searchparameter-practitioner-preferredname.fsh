Instance: practitioner-preferredname
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner's Preferred Name Search Parameter"
Description: "Search a Practitioner record by their preferred name."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/practitioner-preferredname"
* name = "SearchParameterPractitionerPreferredname"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #practitionerpreferredname
* base = #Practitioner
* type = #string
* expression = "Practitioner.name.where(use = 'usual').select(iif(given.exists() and family.exists(), given.join(' ') + ' ' + family, iif(given.exists(), given.join(' '), iif(family.exists(), family, ''))))"
* target = #Practitioner