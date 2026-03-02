No data is entered directly into Health Connect; all Directory content is sourced from authoritative systems including [PCA](https://developer.digitalhealth.gov.au/fhir/provider-connect-australia/current/index.html?src=/), HI-Service, and NHSD.

### Extensions
The following extensions are introduced in this profile:

    * [Organization Classification](StructureDefinition-hc-org-classification.html)
    * [HC Suppressed](StructureDefinition-hc-suppressed.html)

#### Organisation classification
The [extension:hc-org-classification](StructureDefinition-hc-org-classification.html) is used to indicate whether an organisation's HPI-O and HSP-O record in the HI Service is classified as a 'seed' or 'network' type. Note HSP-O can only be of 'seed' type.

The following identifiers both profile the aforementioned classification extension within their definitions:
    * [HC HPI-O](StructureDefinition-hc-hpio.html) on Organization.identifier[hpio]
    * [HC HSP-O](StructureDefinition-hc-hspo.html) on Organization.identifier[hspo]

#### HC suppressed
The [extension:hc-suppressed](StructureDefinition-hc-suppressed.html) is used to indicate if this resource should be hidden from display in the Provider Directory. An Organization may elect to hide their visibility from those searching the Health Connect Provider Directory system. A value of `true` indicates the resource **SHALL** be excluded from Provider Directory listings. For more details, please see the extension intro notes.

### Usage notes 
The following guidance maps key information requirements for HC Organization records to fields in the profile. Where a requirement references the HI Service as the authoritative source, publishers SHOULD prefer and validate values-such as organisation identifiers and names-against the HI Service where practicable.

#### Identifiers
The HC Organization profile supports the identifier slices introduced in AU Core (as indicated by the must support flag). At least one authoritative identifier (for example HPI-O, HSP-O, ABN, or other recognised identifier) SHOULD be provided to enable consistent and correct identification of the healthcare organisation and to support validation against the HI Service where applicable. Organisation identifiers can also be used as search parameters to locate organisation records.

A HC Organization resource may also contain additional business partner identifiers. These are considered secondary to the HPI-O/HSP-O and MAY not match identifier slices defined in [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html).

Note: HI Service is expected to assign only one national identifier type to an Organization (either HPI‑O or HSP‑O), not both. As such, the profile defines the following invariants:

- `inv-01-identifier-hpi-or-hsp-required`: Either an HPI-O (hpio) or an HSP-O (hspo) identifier must be present on the Organization. (severity: error)
- `inv-02-identifier-not-both-hpio-hspo`: Warn if both HPI-O and HSP-O identifiers are present on the same Organization. (severity: warning)
