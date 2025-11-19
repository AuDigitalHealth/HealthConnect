Profile: HCProvenance
Parent: Provenance
Id: hc-provenance
Title: "HC Provenance"
Description: "This profile of Provenance is used to record an activity performed by the HC service (conditionally on behalf of a participating organisation when the target element references a HC Organization resource) whereby specific data elements of a HC Organization or HC Practitioner resource have been initially retrieved, updated or verified from an external system of record."
* ^status = #draft
* ^publisher = "Australian Digital Health Agency"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."
* . ^short = "Records an activity where specific data elements of a resource were retrieved/updated/verified from an external system of record"
* . ^definition = "Records an activity performed by the HC service (conditionally on behalf of a participating organisation when the target element references a HC Organization resource) whereby specific data elements of a HC Organization or HC Practitioner resource have been initially retrieved, updated or verified from an external system of record."
* target ..1 MS
* target only Reference(HCOrganization or HCPractitioner or HCPractitionerRole or HCEndpoint or HCHealthcareService or HCLocation)

* target.extension ^slicing.discriminator.type = #value
* target.extension ^slicing.discriminator.path = "url"
* target.extension ^slicing.rules = #open
* target.extension contains http://hl7.org/fhir/StructureDefinition/targetPath named targetPath 0..* MS
* target.extension[targetPath] ^short = "FHIRPath of element(s) in the target resource affected by this provenance activity"
* target.extension[targetPath] ^definition = "Specifies one or more FHIRPath expressions pointing to the exact data element(s) within the referenced target resource that were sourced / updated / verified in this provenance event."
* target.extension[targetPath].value[x] only string
* target.extension[targetPath].valueString ^example.label = "Example"
* target.extension[targetPath].valueString ^example.valueString = "telecom.where(system='phone').value"

* activity MS
* activity from http://hl7.org/fhir/ValueSet/provenance-activity-type (extensible)
* activity ^short = "Type of provenance activity (e.g. create, update, verify)"
* activity ^definition = "Categorises the provenance event. Required and bound to the Provenance Activity Type value set."

* recorded MS

* agent.who only Reference(HCOrganization or HCPractitioner or HCPractitionerRole)
* agent.who MS

* entity MS
* entity.role MS
* entity.role = http://hl7.org/fhir/provenance-entity-role#source

