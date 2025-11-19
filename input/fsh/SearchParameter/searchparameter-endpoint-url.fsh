Instance: endpoint-url
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint URL Search Parameter"
Description: "Search for Endpoint resources by address (URL)."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/endpoint-url"
* name = "SearchParameterEndpointUrl"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #epurl
* base = #Endpoint
* type = #uri
* expression = "Endpoint.address"
* target = #Endpoint