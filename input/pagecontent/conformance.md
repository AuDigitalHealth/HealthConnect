This page records the conformance expectations for the Health Connect Provider Directory Implementation Guide as they apply to the [Health Connect Provider Directory Requester Actor](CapabilityStatement-health-connect-provider-directory-requester.html) (the client that performs searches and reads). It describes the minimum set of profiles, interactions and search parameters a searching system SHALL support to interact with the [Health Connect Provider Directory Responder Actor](CapabilityStatement-health-connect-provider-directory-responder.html).

### FHIR conformance

Implementations SHALL at minimum be able to discover and read resources that conform to the HC profiles listed below. The searching system SHALL implement the REST interactions and search behaviours described in this document.

#### Profiles and interactions

In order to be conformant as a Health Connect Provider Directory Requester Actor the client searching system SHALL be able to, at a minimum interact with the following target profiles:

- [HC Organization](StructureDefinition-hc-organization.html) — organisation-level discovery and reads
- [HC Practitioner](StructureDefinition-hc-practitioner.html) — individual practitioner discovery and reads

For the profiles above, Health Connect Provider Directory Requester Actors SHOULD support discovery and retrieval operations (for example `search` and `read`). See the FHIR HTTP operations documentation ([FHIR HTTP operations](https://hl7.org/fhir/R4/http.html)) and the AU Core general requirements ([AU Core general requirements](https://hl7.org.au/fhir/core/2.0.0-ballot/general-requirements.html)) for full details. Health Connect Provider Directory Requester Actors SHOULD consult the target Server's `CapabilityStatement` to determine the exact set of supported interactions.

#### Search parameters and terminology

Where a SearchParameter is of type token, the Health Connect Provider Directory Requester Actor SHOULD supply `system|code` or `system|value` using the code systems and value sets referenced by the IG. If a system is not available, then a value alone may be supplied. However, implementers must have in place mechanisms that clearly identify or mark matching values belonging to different systems. The published IG and the target server's `CapabilityStatement` should be consulted for the authoritative list of recommended SearchParameters and the expected token ValueSets. Although some value sets may be `preferred` rather than `required`, Requesters are strongly recommended to adopt those value sets where appropriate to maximise interoperability and minimise integration effort. The exception here, being the [ValueSet: hl7VS-degreeLicenseCertificate](https://hl7.org.au/fhir/6.0.0-ballot/ValueSet-au-v2-0360-extended.html) which is applied to `Practitioner.qualification.code`. This value set is not optimal for the intended use case but is used in lieu of an established alternative. 

Within the scope of this IG, the Requester actor is not required to support any SearchParameters, all are marked as SHOULD support. Implementers may leverage SearchParameters defined within this IG (including those inherited) as they see fit in accordance with their own use cases to interact with the Health Connect Provider Directory system. 

#### Error handling

Health Connect Provider Directory Requesters SHALL correctly handle OperationOutcome responses and non-2xx HTTP responses returned by servers.

#### Conformance testing

Conformance tests SHOULD verify that Requester implementations can:

- Perform `search` and `read` interactions against Organization and Practitioner profiles
- Handle multiple-result searches and pagination
- Respect server-declared search parameters and handle unsupported parameters gracefully
- Properly process OperationOutcome responses and error conditions

This document is intentionally narrow in scope for the Requester actor.

#### Missing data

It is an expectation that [Health Connect Provider Directory Requester Actor](CapabilityStatement-health-connect-provider-directory-requester.html) implementers SHALL be able to handle cases where missing data exists. Where mandatory elements are missing, this will be indicated by the established convention in FHIR, i.e. supplying the extension [`DataAbsentReason`](https://hl7.org/fhir/R4/extension-data-absent-reason.html).

#### Suppressed data

This IG does not define data-suppression; alternative mechanisms have been enacted to control access or redaction where appropriate.


### Software conformance profile

A risk-based Provider Directory conformance profile will be developed for connecting systems to mitigate the identified risks and describe desired software behaviours. The software developer must ensure their system behaves in accordance with the desired behaviours outlined in the conformance profile and associated artefacts.

#### Software conformance assessment

The conformance assessment approach and the associated test specification will be developed for connecting systems. The software developer must demonstrate conformance to the relevant Conformance Profile in addition to meeting the FHIR conformance requirements in section above.




