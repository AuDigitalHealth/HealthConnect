Invariant: inv-01-identifier-hpi-or-hsp-required
Description: "Either an HPI-O (hpio) or an HSP-O (hspo) identifier must be present on the Organization."
Expression: "identifier.where(system='http://ns.electronichealth.net.au/id/hi/hpio/1.0').exists() or identifier.where(system='http://ns.electronichealth.net.au/id/hi/hspo/1.0').exists()"
Severity: #error

Invariant: inv-02-identifier-not-both-hpio-hspo
Description: "Warn if both HPI-O and HSP-O identifiers are present on the same Organization; HI Service is expected to assign only one."
Expression: "identifier.where(system='http://ns.electronichealth.net.au/id/hi/hpio/1.0').exists() implies identifier.where(system='http://ns.electronichealth.net.au/id/hi/hspo/1.0').exists().not() and identifier.where(system='http://ns.electronichealth.net.au/id/hi/hspo/1.0').exists() implies identifier.where(system='http://ns.electronichealth.net.au/id/hi/hpio/1.0').exists().not()"
Severity: #warning

Profile: HCOrganization
Parent: AUCoreOrganization
Id: hc-organization
Title: "HC Organization"
Description: "This profile defines a Provider Directory entry for an organisation."
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* . ^short = "Australian Organisation Directory Entry"
* . ^definition = "Directory entry Australian realm Organization profile often healthcare or related service provision."
* obeys inv-01-identifier-hpi-or-hsp-required
* obeys inv-02-identifier-not-both-hpio-hspo
* identifier contains hspo 0..1 MS and acn 0..1 MS
* identifier[hpio] only HCHPIOIdentifier
* identifier[hpio] MS
* identifier[hpio] ^short = "HPI-O identifier"
* identifier[hpio] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[hpio] ^extension[=].extension[+].url = "code"
* identifier[hpio] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[hpio] ^extension[=].extension[+].url = "actor"
* identifier[hpio] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier[hpio] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[hpio] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[hpio] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[hpio] ^extension[=].extension[+].url = "code"
* identifier[hpio] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[hpio] ^extension[=].extension[+].url = "actor"
* identifier[hpio] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* identifier[hpio] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[hpio] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[hspo] only HCHSPOIdentifier
* identifier[hspo] ^short = "HSP-O identifier"
* identifier[hspo] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[hspo] ^extension[=].extension[+].url = "code"
* identifier[hspo] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[hspo] ^extension[=].extension[+].url = "actor"
* identifier[hspo] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier[hspo] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[hspo] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[hspo] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[hspo] ^extension[=].extension[+].url = "code"
* identifier[hspo] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[hspo] ^extension[=].extension[+].url = "actor"
* identifier[hspo] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* identifier[hspo] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[hspo] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[abn] only $au-abn
* identifier[abn] 1..1 MS
* identifier[abn] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[abn] ^extension[=].extension[+].url = "code"
* identifier[abn] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[abn] ^extension[=].extension[+].url = "actor"
* identifier[abn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier[abn] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[abn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[abn] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[abn] ^extension[=].extension[+].url = "code"
* identifier[abn] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[abn] ^extension[=].extension[+].url = "actor"
* identifier[abn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* identifier[abn] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[abn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[acn] only $au-acn
* identifier[acn] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[acn] ^extension[=].extension[+].url = "code"
* identifier[acn] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[acn] ^extension[=].extension[+].url = "actor"
* identifier[acn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier[acn] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[acn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* identifier[acn] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[acn] ^extension[=].extension[+].url = "code"
* identifier[acn] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[acn] ^extension[=].extension[+].url = "actor"
* identifier[acn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* identifier[acn] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* identifier[acn] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"

* name 1.. 
* name ^short = "Name of Directory Entry Organisation"
* name ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* name ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* name ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHOULD:handle
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* name ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* name ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"

* telecom MS
* telecom ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom ^extension[=].extension[+].url = "code"
* telecom ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* telecom ^extension[=].extension[+].url = "actor"
* telecom ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* telecom ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* telecom ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* telecom ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom ^extension[=].extension[+].url = "code"
* telecom ^extension[=].extension[=].valueCode = #SHOULD:handle
* telecom ^extension[=].extension[+].url = "actor"
* telecom ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* telecom ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* telecom ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* telecom.system ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom.system ^extension[=].extension[+].url = "code"
* telecom.system ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* telecom.system ^extension[=].extension[+].url = "actor"
* telecom.system ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* telecom.system ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* telecom.system ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* telecom.system ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom.system ^extension[=].extension[+].url = "code"
* telecom.system ^extension[=].extension[=].valueCode = #SHOULD:handle
* telecom.system ^extension[=].extension[+].url = "actor"
* telecom.system ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* telecom.system ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* telecom.system ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* telecom.value ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom.value ^extension[=].extension[+].url = "code"
* telecom.value ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* telecom.value ^extension[=].extension[+].url = "actor"
* telecom.value ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* telecom.value ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* telecom.value ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* telecom.value ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom.value ^extension[=].extension[+].url = "code"
* telecom.value ^extension[=].extension[=].valueCode = #SHOULD:handle
* telecom.value ^extension[=].extension[+].url = "actor"
* telecom.value ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* telecom.value ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* telecom.value ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"

* address 1..1
* address ^short = "Addresses of Directory Entry Organisation"
* address ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address ^extension[=].extension[+].url = "code"
* address ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* address ^extension[=].extension[+].url = "actor"
* address ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* address ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* address ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* address ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address ^extension[=].extension[+].url = "code"
* address ^extension[=].extension[=].valueCode = #SHOULD:handle
* address ^extension[=].extension[+].url = "actor"
* address ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* address ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* address ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on address type: physical, postal, both. Must have at least one physical or both."
* address contains
    physical 1..1
* address[physical].type = #physical
* address[physical] ^short = "Registered Business Address of the organisation, as recorded against the HPI-O record."
* address[physical] ^definition = "The registered business address of the organisation as required for directory entry. Must be type 'physical'."
* address[physical] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address[physical] ^extension[=].extension[+].url = "code"
* address[physical] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* address[physical] ^extension[=].extension[+].url = "actor"
* address[physical] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* address[physical] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* address[physical] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"
* address[physical] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address[physical] ^extension[=].extension[+].url = "code"
* address[physical] ^extension[=].extension[=].valueCode = #SHOULD:handle
* address[physical] ^extension[=].extension[+].url = "actor"
* address[physical] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* address[physical] ^extension[=].extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/snapshot-source"
* address[physical] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-organization"

* partOf only Reference(HCOrganization)
* partOf MS
* partOf ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* partOf ^extension[=].extension[+].url = "code"
* partOf ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* partOf ^extension[=].extension[+].url = "actor"
* partOf ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* partOf ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* partOf ^extension[=].extension[+].url = "code"
* partOf ^extension[=].extension[=].valueCode = #SHOULD:handle
* partOf ^extension[=].extension[+].url = "actor"
* partOf ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* extension contains HCSuppressed named hc-suppressed 0..1 MS
* extension[HCSuppressed] ^short = "Flag denoting whether the Organization should be hidden."
* extension[HCSuppressed] ^definition = "A boolean value indicating whether the Organization should be hidden from display in the Provider Directory."
* extension[HCSuppressed] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[HCSuppressed] ^extension[=].extension[+].url = "code"
* extension[HCSuppressed] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* extension[HCSuppressed] ^extension[=].extension[+].url = "actor"
* extension[HCSuppressed] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* extension[HCSuppressed] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[HCSuppressed] ^extension[=].extension[+].url = "code"
* extension[HCSuppressed] ^extension[=].extension[=].valueCode = #SHOULD:handle
* extension[HCSuppressed] ^extension[=].extension[+].url = "actor"
* extension[HCSuppressed] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"