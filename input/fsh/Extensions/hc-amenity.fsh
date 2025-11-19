Extension: HCAmenity
Id: hc-amenity
Title: "HC Amenity"
Description: "Physical features or amenities available within, or in close proximity of, a location. Patterned after PCA Amenity."
* ^context.type = #element
* ^context.expression = "Location"
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-amenity"
* value[x] only CodeableConcept
* valueCodeableConcept from HCAmenityVs (required)
* valueCodeableConcept ^short = "Amenities or facilities available at or near the location."
* valueCodeableConcept ^definition = "Physical features or amenities available within, or in close proximity of, a location."