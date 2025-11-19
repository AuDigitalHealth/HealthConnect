No data is entered directly into Health Connect; all directory content is sourced from authoritative systems including [PCA](https://developer.digitalhealth.gov.au/fhir/provider-connect-australia/current/index.html?src=/), HI-Service, and NHSD.

**Note:** All elements defined within this profile are expected to be supported by implementing systems, i.e. Must support, unless explicitly stated otherwise. The following sections provide additional guidance and exceptions for specific elements.

### Extensions
The following extensions are introduced in this profile:
* [HC Organization Classification](StructureDefinition-hc-org-classification.html)

The following identifiers both profile the aforementioned classification extension within their definitions:
* [HC HPI-O](StructureDefinition-hc-hpio.html) on Organization.identifier[hpio]
* [HC HSP-O](StructureDefinition-hc-hspo.html) on Organization.identifier[hspo]

### Usage notes 
The following guidance maps key information requirements for HC Organization records to fields in the profile. Where a requirement references the HI Service as the authoritative source, publishers SHOULD prefer and validate values—such as organisation identifiers and names—against the HI Service where practicable.

#### Identifiers
The HC Organization profile supports the identifier slices introduced in AU Core (as indicated by the must support flag). At least one authoritative identifier (for example HPI-O, HSP-O, ABN, or other recognised identifier) SHOULD be provided to enable consistent and correct identification of the healthcare organisation and to support validation against the HI Service where applicable. Organisation identifiers can also be used as search parameters to locate organisation records.

A HC Organization resource may also contain additional business partner identifiers. These are considered secondary to the HPI-O/HSP-O and MAY not match identifier slices defined in [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html).

Note: HI Service is expected to assign only one national identifier type to an Organization (either HPI‑O or HSP‑O), not both. As such, a constraint at a severity of warning has been applied to this resource to advise implementers as such. 

##### Organisation classification
The [extension:hc-org-classification](StructureDefinition-hc-org-classification.html) is used to indicate whether an organisation's HPI-O and HSP-O record in the HI Service is classified as a 'seed' or 'network' type. Note HSP-O can only be of 'seed' type.
