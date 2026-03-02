Instance: location-amenities
InstanceOf: SearchParameter
Usage: #definition
Title: "Location Amenities Search Parameter"
Description: "Search for Location resources by amenities."
* url = "http://digitalhealth.gov.au/fhir/hcpd/SearchParameter/location-amenities"
* name = "SearchParameterLocationAmenities"
* status = #draft
* experimental = false
* publisher = "Australian Digital Health Agency"
* code = #locationamenities
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-amenity')"
* target = #Location