Instance: practitioner-officialname
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner's Official Name Search Parameter"
Description: "Search a Practitioner record by their official name."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/practitioner-officialname"
* name = "SearchParameterPractitionerOfficialName"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #practitionername
* base = #Practitioner
* type = #string
* expression = "Practitioner.name.where(use = 'official').select(iif(given.exists() and family.exists(), given.join(' ') + ' ' + family, iif(given.exists(), given.join(' '), iif(family.exists(), family, ''))))"
* target = #Practitioner