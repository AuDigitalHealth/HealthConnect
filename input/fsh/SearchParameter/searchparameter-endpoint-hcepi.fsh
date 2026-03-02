Instance: endpoint-hcepi
InstanceOf: SearchParameter
Usage: #definition
Title: "HC Endpoint Identifier Search Parameter"
Description: "Search an Endpoint record by its HC identifier."
* url = "http://digitalhealth.gov.au/fhir/hcpd/SearchParameter/endpoint-hcepi"
* name = "SearchParameterEndpointIdentifierHC"
* status = #draft
* experimental = false
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #hcepi
* base = #Endpoint
* type = #token
* description = "Search an Endpoint record by its HC identifier (Resource Identifier type). Uses token matching for exact value matching. Value-only search supported."
* expression = "Endpoint.identifier.where(type.coding.exists(code='RI')).value"
* target = #Endpoint