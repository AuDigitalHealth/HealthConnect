No data is entered directly into Health Connect; all directory content is sourced from authoritative systems including [PCA](https://developer.digitalhealth.gov.au/fhir/provider-connect-australia/current/index.html?src=/), HI-Service, and NHSD.

### HC Professional Registration Number (PRN)

The HC Professional Registration Number (PRN) profile defines an identifier for a healthcare practitioner’s professional registration, as recorded in the Health Connect provider directory context. This identifier is used to capture the registration number assigned by a professional association or peak body, particularly for practitioners who are not Ahpra-registered, and is recorded against the HPI-I record.

### Usage notes

- This is a profile of the `identifier` element on [HC Practitioner](https://healthconnect-ig.example.org/StructureDefinition-hc-practitioner) and [HC PractitionerRole](StructureDefinition-hc-practitionerrole.html).
- Use this profile when a practitioner's professional registration number is issued by a non-Ahpra professional association or peak body.
- **Cardinality differences**: HC Practitioner allows 0 to many PRN identifiers (`0..*`), while HC PractitionerRole allows only 0 to 1 PRN identifier (`0..1`).
- The PRN should be used in addition to, or instead of, an Ahpra registration number, depending on the practitioner’s registration status.
- Ensure that the system and value are populated according to the assigning authority’s requirements for accurate identification and interoperability.
- The PRN enables implementers to distinguish between different types of practitioner registration numbers and to support directory queries, reconciliation, and validation.

#### Key requirements

- The profile fixes the `type` element to the v2 identifier code `PRN` (Provider number) from the v2-0203 code system (this is implemented in the profile as `type = $v2-0203-int#PRN`). Implementations SHOULD use the following coding when constructing the `type` element:
    ```json
    {
        "coding": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "PRN",
                "display": "Provider number"
            }
        ]
    }
    ```
- The `system` element is mandatory (cardinality 1.. in the profile) and is constrained to `http://ns.electronichealth.net.au/hc/id/prn`. Publishers MUST use this URI as the system value for all PRN instances.
- The `value` element is mandatory (cardinality 1..) and holds the practitioner’s registration number as assigned by the authority (for example `1234567`).
- The `assigner` element is not constrained by this profile (it may be populated to reference the issuing organisation where available, but it is not required). Implementers are encouraged to populate `assigner` to improve provenance and traceability when the issuing Organization resource is available.
- Ensure all required elements (`type`, `system`, `value`) are populated according to the assigning authority’s rules to support interoperability and accurate identification.

Implementers must ensure that the HC Professional Registration Number is used only for valid, assigned registration numbers and that all required elements are present and correct. This supports accurate practitioner identification and data integrity across the Health Connect directory.