Instance: location-locmailaddress
InstanceOf: SearchParameter
Usage: #definition
Title: "Location Postal Address Search Parameter"
Description: "Search for Location resources by postal address components."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/location-locmailaddress"
* name = "SearchParameterLocationPostalAddress"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #locmailaddress
* base = #Location
* type = #string
* modifier[0] = #contains
* expression = "Location.extension.where(url = 'http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address').value.ofType(Address).text | Location.extension.where(url = 'http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address').value.ofType(Address).city | Location.extension.where(url = 'http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address').value.ofType(Address).state | Location.extension.where(url = 'http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address').value.ofType(Address).line | Location.extension.where(url = 'http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address').value.ofType(Address).postalCode"
* target = #Location