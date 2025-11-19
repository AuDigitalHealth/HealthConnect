Invariant: hc-organization-identifier-required
Description: "Either an HPI-O (hpio) or an HSP-O (hspo) identifier must be present on the Organization."
Expression: "identifier.where(system='http://ns.electronichealth.net.au/id/hi/hpio/1.0').exists() or identifier.where(system='http://ns.electronichealth.net.au/id/hi/hspo/1.0').exists()"
Severity: #error

Invariant: hc-organization-no-both-hpio-hspo
Description: "Warn if both HPI-O and HSP-O identifiers are present on the same Organization; HI Service is expected to assign only one."
Expression: "identifier.where(system='http://ns.electronichealth.net.au/id/hi/hpio/1.0').exists() and identifier.where(system='http://ns.electronichealth.net.au/id/hi/hspo/1.0').exists()"
Severity: #warning

Profile: HCOrganization
Parent: AUCoreOrganization
Id: hc-organization
Title: "HC Organization"
Description: "This profile defines a provider directory entry for an organisation."
* ^status = #draft
* ^experimental = false
* . ^short = "Australian Organisation Directory Entry"
* . ^definition = "Directory entry Australian realm Organization profile often healthcare or related service provision."
* obeys hc-organization-identifier-required
* obeys hc-organization-no-both-hpio-hspo
* identifier contains hspo 0..1 MS and acn 0..1 MS
* identifier[hpio] only HCHPIOIdentifier
* identifier[hpio] MS
* identifier[hpio] ^short = "HPI-O identifier"
* identifier[hspo] only HCHSPOIdentifier
* identifier[hspo] ^short = "HSP-O identifier"
* identifier[abn] only $au-abn
* identifier[abn] 1..1 MS
* identifier[acn] only $au-acn
* active 1.. MS
* name 1.. 
* name ^short = "Name of Directory Entry Organisation"
* alias 0..1 MS
* alias ^short = "Additional preferred name or alias, as provided by the organisation."
* alias ^definition = "A chosen or preferred name, that is different from the entity’s legal name, to provide flexibility to organisations who use an alternative name in connection with their organisation."
* address 1..2
* address ^short = "Addresses of Directory Entry Organisation"
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on address type: physical, postal, both. Must have at least one physical or both."
* address contains
    physical 1..1 and
    postal 0..1
* address[physical].type = #physical
* address[physical] ^short = "Registered Business Address of the organisation, as recorded against the HPI-O record."
* address[physical] ^definition = "The registered business address of the organisation as required for directory entry. Must be type 'physical'."
* address[postal].type = #postal
* address[postal] ^short = "A chosen or preferred mailing address, that is different from the registered address."
* address[postal] ^definition = "Optional preferred address / postal address / PO box address for the organisation (legal entity), as provided by the organisation on PCA. Must be type 'postal'."
* partOf only Reference(HCOrganization)
* partOf MS