### Extensions
Extensions introduced in this profile:

* PractitionerRole: [HC PractitionerRole Communication](StructureDefinition-hc-practitioner-role-communication.html)
* PractitionerRole: [HC Preferred Name](StructureDefinition-hc-preferred-name.html)

### Usage notes

#### Identifiers
**Registration Identifiers (exactly one required for the role):**
* Ahpra Registration Number - The specific Ahpra registration credential relevant to this practitioner role
* Professional Registration Number (PRN) - The specific professional registration credential relevant to this practitioner role

These registration identifiers must match corresponding registration identifiers held by the referenced Practitioner and should represent the professional credentials that authorize the practitioner to perform this specific role.

HC Practitioner Role resources may also have additional identifiers specific to other business partners, with identifier systems that may or may not match other identifier slices defined in [AU Core Practitioner Role](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html).

#### Preferred name in role context
The [HC Preferred Name](StructureDefinition-hc-preferred-name.html) extension allows a practitioner to specify a preferred name for use in the context of a specific role. This name may differ from their registered name and allows practitioners to be known by their preferred name when delivering healthcare services in this role. 

#### PractitionerRole code
Only the main role or job of the clinician should be provided, using a code from the SNOMED-CT-AU code system. The preferred value set is [Practitioner Role 1](https://tx.ontoserver.csiro.au/fhir/ValueSet/practitioner-role-1). Publishing systems must supply a single code representing the clinician’s primary practitioner role. Any additional codes or roles will be ignored. When a PractitionerRole is provided to a subscribing system, only the primary role (as defined by the SNOMED-CT-AU code from the specified value set) will be included.

The SNOMED code is the authoritative, machine-readable representation and should be used for searching, filtering, and interoperability; the display is the user-facing label and may be normalised by subscribing systems. Additional codes MUST NOT be used to represent multiple roles and will be ignored by the HC service.

#### Guidance on PractitionerRole.specialty

The `PractitionerRole.specialty` element is marked as **Must Support (MS)** because this requirement is inherited from AU Core, which also imposes obligations on defined roles. None of the AU Core roles or obligations are relevant to this specification. There is no requirement for implementers of this specification to do anything this this data element.

- It **SHOULD** be ignored by Health Connect Provider Directory Requester Actors.
- It **SHALL NOT** be populated by Health Connect Provider Directory Actors.

### Data Integrity and Validation

This profile includes invariants to ensure data consistency and integrity between PractitionerRole and the referenced Practitioner resources.

#### Registration Identifier Matching

The `inv-02-identifier-registration-match` invariant ensures that registration identifiers on the PractitionerRole match those of the referenced Practitioner. This validation prevents data inconsistencies where a PractitionerRole might reference registration numbers that don't belong to the associated Practitioner.

**Requirements:**
- If the PractitionerRole has an Ahpra registration identifier, it must match one of the referenced Practitioner's Ahpra registration identifiers.
- If the PractitionerRole has a peak body registration identifier (PRN), it must match one of the referenced Practitioner's peak body registration identifiers.

**Business Logic:**
This ensures referential integrity in provider directory implementations where:
- A PractitionerRole represents a specific professional role.
- The registration credentials for that role must be held by the actual Practitioner.
- Prevents scenarios where role assignments reference incorrect or mismatched professional registrations.

#### Registration Identifier Requirements

The invariant `inv-01-identifier-registration-required` ensures that at least one of the Professional Registration Number identifier types are present, either:
- an Ahpra registration number (AHPRA) OR
- a non-Ahpra Peak Body Registration Number (PRN).

While a practitioner can have more than one professional registration and
professions (e.g. nurse and midwife), the relevant registration that is applicable for this role only is captured.
