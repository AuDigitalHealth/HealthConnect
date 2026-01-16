Instance: practitionerrole-roletype
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner's Role Type Search Parameter"
Description: "Search a PractitionerRole record by their role type."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/practitionerrole-roletype"
* name = "SearchParameterPractitionerRoleType"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #roletype
* base = #PractitionerRole
* type = #string
* modifier[0] = #contains
* modifier[1] = #exact
* expression = "PractitionerRole.code.coding.display"
* target = #PractitionerRole