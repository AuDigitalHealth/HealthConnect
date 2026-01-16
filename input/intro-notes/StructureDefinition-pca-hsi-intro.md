No data is entered directly into Health Connect; all Directory content is sourced from authoritative systems including [PCA](https://developer.digitalhealth.gov.au/fhir/provider-connect-australia/current/index.html?src=/), HI-Service, and NHSD.

### PCA healthcare service identifier extension

The PCA Healthcare Service Identifier (PCA-HSI) extension defines an identifier for a healthcare service as allocated by the Provider Connect Australia (PCA) system. This extension is used to capture the PCA-allocated identifier for a HealthcareService resource within the Health Connect Provider Directory.

**Usage context:**

- The extension is applied to the `identifier` element of HealthcareService resources, specifically to represent the PCA-allocated identifier alongside other identifiers (such as the Health Connect Healthcare Service Identifier).
- It is referenced by the [`HC HealthcareService`](StructureDefinition-hc-healthcareservice.html) profile, which supports multiple identifiers for a healthcare service, including those issued by PCA and Health Connect.
- The extension ensures that the PCA identifier is preserved and available for reconciliation, traceability, and interoperability between Health Connect and PCA systems.

**Key requirements:**

- The `system` element is fixed to the PCA identifier system URL: `http://pca.digitalhealth.gov.au/fhir/4.0/StructureDefinition/pca-healthcare-service-identifier`.
- The `value` element is required and holds the PCA-allocated identifier value for the healthcare service.

**Usage notes:**

- Use this extension when a healthcare service listed in Health Connect has a corresponding record in PCA and a PCA-allocated identifier is available.
- The PCA-HSI should not be confused with the Health Connect Healthcare Service Identifier (HC-HSI), which is issued by Health Connect itself.
- Both identifiers may be present on a HealthcareService resource to support cross-system reconciliation and data integrity.

Implementers must ensure that the PCA Healthcare Service Identifier extension is used only for PCA-issued identifiers and that the system and value are populated according to the extension definition. This supports accurate mapping and interoperability between Health Connect and PCA directories.