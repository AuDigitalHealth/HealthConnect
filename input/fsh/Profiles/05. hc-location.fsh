Profile: HCLocation
Parent: AUCoreLocation
Id: hc-location
Title: "HC Location"
Description: "This profile defines a healthcare location (can also be referred as 'location') reflects the place, a site of care i.e. a practice, clinic, hospital, or facility at which healthcare services are provided by the healthcare organisation. The healthcare location can be a physical, mobile, or virtual location. In certain cases, a healthcare location can also represent a site of care within the hospital or building premises such as consulting room, operating room, outpatient room, unit, ward (e.g. maternity ward), department (e.g. emergency department) etc."
* ^status = #draft
* ^experimental = false
* obeys preferred-postal-address and address-requirement
* . ^short = "Australian Location Directory Entry"
* meta ^short = "Metadata on Location"
* name 1..1 MS
* alias 0..* MS
* alias ^short = "Alternative names for the location"
* alias ^definition = "Other names or aliases by which this location is known, such as abbreviations, former names, or local names."
* type 0..* MS
* type from http://ns.electronichealth.net.au/hc/ValueSet/hc-service-delivery-location-role-type (extensible)
* type ^short = "Indicates whether the location is a virtual location or mobile service."
* type ^definition = "Indicates whether the location is a fixed physical place, virtual location or a mobile service. Used to identify the type of location that meets their patient's needs."
* telecom 1..* MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Slice based on telecom system: phone, email. Must have at least one of each."
* telecom contains phone 1..* MS and email 1..* MS
* telecom[phone].system = #phone
* telecom[phone] ^short = "Phone number for the location."
* telecom[email].system = #email
* telecom[email] ^short = "Email address for the location."
* address 0..1 MS
* address ^short = "Address where the service or practitioner role is located. Virtual and mobile locations may not have a fixed address."
* managingOrganization 1..1 MS
* managingOrganization only Reference(HCOrganization)
* managingOrganization ^short = "Reference to managing organisation with HPI-O."
* managingOrganization ^definition = "A reference to the organisation that holds a HPI-O and manages or is responsible for this location entry in the provider directory."
* partOf only Reference(HCLocation)
* endpoint 0..1 MS
* endpoint only Reference(HCEndpoint) 
* extension contains http://ns.electronichealth.net.au/hc/StructureDefinition/hc-amenity named HCAmenity 0..* MS
* extension[HCAmenity] ^short = "Amenities or facilities available at or near the location."
* extension[HCAmenity] ^definition = "Facilities or amenities available within, or in close proximity of, a location. Uses the Health Connect Amenity ValueSet (http://ns.electronichealth.net.au/hc/ValueSet/HCAmenityVs)."
* extension contains http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address named HCPreferredPostalAddress 0..* MS
* extension[HCPreferredPostalAddress] ^short = "Preferred postal address"
* extension[HCPreferredPostalAddress] ^definition = "Preferred postal/mailing address for correspondence (PO Box or mailing address) that is distinct from the registered physical address."

Invariant: preferred-postal-address
Description: "If the preferred postal address extension is present on an address then that address must be of type 'postal'"
* severity = #error
* expression = "address.exists() and address.extension.where(url='http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address').exists() implies address.where(type='postal').exists()"

Invariant: address-requirement
Description: "If location type is VI or MOBL then an address does not need to be present. For all other location types an address must be present."
* severity = #error
* expression = "type.coding.where(code = 'VI' or code = 'MOBL').exists().not() implies address.exists()"

Invariant: mobl-requires-modifier
Description: "If a location is marked as mobile (code 'MOBL') it is recommended that a modifier coding is provided to describe the mobile type"
* severity = #warning
* expression = "type.coding.where(code = 'MOBL').exists() implies type.coding.where(code != 'MOBL' and code != 'VI').exists()"

Invariant: vi-should-not-have-modifier
Description: "If a location is marked as virtual (code 'VI') no additional modifier codings are needed"
* severity = #warning
* expression = "type.coding.where(code = 'VI').exists() implies type.coding.where(code != 'VI').exists().not()"

Invariant: type-or-physicalType-present
Description: "A Location MUST have either a `type` or a `physicalType` value present"
* severity = #error
* expression = "type.exists() or physicalType.exists()"
