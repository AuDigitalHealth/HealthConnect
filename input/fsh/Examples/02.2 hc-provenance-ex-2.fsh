Instance: provenance-practitioner-phone-update
InstanceOf: HCProvenance
Usage: #example
Title: "Health Connect Provenance - Track Practitioner Phone Amendment"
Description: "Example demonstrating provenance tracking when a practitioner's phone number is updated in the Health Connect directory from an external source system. This shows how telecom data elements can be precisely tracked using FHIRPath expressions for granular audit trails that conforms to [HealthConnect Provenance - Provenance](StructureDefinition-hc-provenance.html) profile."

* target = Reference(example-healthconnect-practitioner-1)
* target.extension[targetPath].valueString = "telecom.where(system='phone').value"
* recorded = "2025-09-15T14:30:15.123+10:00"
* agent.who = Reference(example-healthconnect-organization-1)
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE

// Track specific data element
* entity[0].role = #source
* entity[0].what = Reference(external-hc-practitioner-record)