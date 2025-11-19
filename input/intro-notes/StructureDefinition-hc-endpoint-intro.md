> **Note:** All elements defined within this profile are expected to be supported by implementing systems unless explicitly stated otherwise. The following sections provide additional guidance and exceptions for specific elements.

No data is entered directly into Health Connect; all directory content is sourced from authoritative systems including [PCA](https://developer.digitalhealth.gov.au/fhir/provider-connect-australia/current/index.html?src=/), HI-Service, and NHSD.


#### Extensions
Extensions introduced in this profile:
* Endpoint: [AU Receiving Facility](http://hl7.org.au/fhir/StructureDefinition/au-receivingfacility)
* Endpoint: [AU Receiving Application](http://hl7.org.au/fhir/StructureDefinition/au-receivingapplication)
* Endpoint: [Encryption Certificate PEM X509](http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509)

### Usage notes
The following guidance expands on operational and implementation expectations for this Endpoint profile.

- Purpose: An `Endpoint` in Health Connect describes how to communicate with a service (address, protocol, payloads and contact details). Directory consumers use this information to establish connections, and operational tooling uses it to monitor and validate connectivity.

#### Identifiers and stable handles

The Endpoint profile uses two stable identifier slices for directory management and routing:

- [HC Endpoint Identifier (HC-EPI)](StructureDefinition-hc-endpoint-identifier.html) — a externally-assigned endpoint identifier. Publishers SHOULD set this identifier on creation and thereafter treat it as immutable. The identifier SHALL be globally unique within HealthConnect and SHALL NOT be re‑assigned. Client systems SHOULD prefer this identifier for reconciliation and updates rather than attempting to infer identity from other attributes.
- [HC SMD Target Identifier](StructureDefinition-hc-smd-target-identifier.html) — a slice used only when the endpoint (or associated practitioner/service) supports Secure Messaging Delivery (SMD). When present the SMD identifier SHALL be globally unique and SHALL be treated as an immutable routing handle for secure point‑to‑point or hub‑mediated messaging. Publishers SHOULD only populate this slice for endpoints that actually support SMD.

### Reciprocal relationships

In FHIR, linkage to resources is owned by the referencing resources (`HealthcareService.endpoint`, `PractitionerRole.endpoint`, `Location.endpoint`). The Endpoint resource itself has no back‑reference slots to those resources. Consequently:

- Reciprocity cannot be enforced within the Endpoint profile (there is no standard element on Endpoint to list referencing HealthcareService / Location / PractitionerRole resources).
- Directory governance MUST ensure that when a referencing resource adds or removes an Endpoint, any operational expectations (availability, deprecation, auditing) are handled in process.
