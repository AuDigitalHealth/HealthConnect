Instance: location-amenities
InstanceOf: SearchParameter
Usage: #definition
Title: "Location Amenities Search Parameter"
Description: "Search for Location resources by amenities."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/location-amenities"
* name = "SearchParameterLocationAmenities"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #locationamenities
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://ns.electronichealth.net.au/hc/StructureDefinition/hc-amenity')"
* target = #Location