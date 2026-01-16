Instance: provenance-practitioner-name-update
InstanceOf: HCProvenance
Usage: #example
Title: "HC Provenance Example: Practitioner Name Amendment"
Description: "Demonstrates provenance tracking for a practitioner's name amendment, conforming to the HC Provenance profile."

* target = Reference(example-healthconnect-practitioner-1)
* target.extension[targetPath].valueString = "name[0].family"
* recorded = "2025-09-15T14:30:15.123+10:00"
* agent.who = Reference(example-healthconnect-organization-1)
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE

// Track specific data element
* entity[0].role = #source
* entity[0].what = Reference(external-hc-practitioner-record)

