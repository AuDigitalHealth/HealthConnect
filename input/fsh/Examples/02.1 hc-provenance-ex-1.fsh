Instance: provenance-practitioner-name-update
InstanceOf: HCProvenance
Usage: #example
Title: "Health Connect Provenance - Track Practitioner Name Amendment"
Description: "Example showing provenance tracking when a practitioner's family name is updated in the Health Connect directory from an external source system. This demonstrates how specific data elements can be tracked for audit and compliance purposes that conforms to [Health Connect Provenance - Provenance](StructureDefinition-hc-provenance.html) profile."

* target = Reference(example-healthconnect-practitioner-1)
* target.extension[targetPath].valueString = "name[0].family"
* recorded = "2025-09-15T14:30:15.123+10:00"
* agent.who = Reference(example-healthconnect-organization-1)
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE

// Track specific data element
* entity[0].role = #source
* entity[0].what = Reference(external-hc-practitioner-record)

