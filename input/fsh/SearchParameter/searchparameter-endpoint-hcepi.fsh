Instance: endpoint-hcepi
InstanceOf: SearchParameter
Usage: #definition
Title: "HC Endpoint Identifier Search Parameter"
Description: "Search an Endpoint record by its HC identifier."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/endpoint-hcepi"
* name = "SearchParameterEndpointIdentifierHC"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #hcepi
* base = #Endpoint
* type = #string
* expression = "Endpoint.identifier.where(system='http://ns.electronichealth.net.au/ep/record').value"
* target = #Endpoint