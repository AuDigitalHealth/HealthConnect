No data is entered directly into Health Connect; all Directory content is sourced from authoritative systems including [PCA](https://developer.digitalhealth.gov.au/fhir/provider-connect-australia/current/index.html?src=/), HI-Service, and NHSD.

### Extensions
Extensions introduced in this profile:
* HealthcareService: [IAR Levels of Care](StructureDefinition-iar-levels-of-care.html)
* HealthcareService: [Active Period](StructureDefinition-active-period.html)
* HealthcareService: [Accept New Patient](StructureDefinition-new-patient-availability.html)
* HealthcareService: [Referral Information for Referrer](StructureDefinition-referral-information-for-referrer.html)
* HealthcareService.availableTime.availableStartTime: [Timezone Code](https://hl7.org/fhir/extensions/5.2.0/StructureDefinition-timezone.html)
* HealthcareService.availableTime.availableEndTime: [Timezone Code](https://hl7.org/fhir/extensions/5.2.0/StructureDefinition-timezone.html)

#### Identifiers
Beyond the identifiers already defined in AU Core the HC HealthcareService profile explicitly supports the following identifier slice (as indicated by the must support flag):

* [HC Local Identifier (HC-LI)](StructureDefinition-hc-local-identifier.html)

### Usage notes
The `extension:iar-levels-of-care` is used to indicate the Initial Assessment and Referral (IAR) Levels of Care for a healthcare services that support mental health care. This extension draws its codes from the [IAR Levels of Care ValueSet](ValueSet-iar-levels-of-care-vs.html). The ValueSet includes the codes as follows:
  
  - 1: Level 1 (self-management)
  - 2: Level 2 (low intensity interventions)
  - 3: Level 3 (moderate intensity interventions)
  - 4: Level 4 (high intensity interventions)
  - 5: Level 5 (specialist and acute services)

#### Accept new patient
CodeableConcept datatype that indicates whether the healthcare service is accepting new patients.

#### Organization reference
The *providedBy* element must contain a relative reference to an existing [HC Organization](StructureDefinition-hc-organization.html).

#### Service provision code

This section describes the use of codes to indicate payment and billing options, helping requesters or searchers make informed decisions when seeking healthcare services.

#### Service type
Utilises the Service Type ValueSet, to draw codes from SNOMED that define concepts for the type of service that the healthcare service provides.

A single code representing the primary service type MUST be provided and selected from the [Service Type value set](https://healthterminologies.gov.au/fhir/ValueSet/service-type-1). 
    
#### Location reference
The *location* element must contain a relative reference to an existing [HC Location](StructureDefinition-hc-location.html) whose *managingOrganization* references the same HC Organization as is referenced by the *providedBy* element.

#### Availability
To indicate the healthcare service is not available during a period of time, use *notAvailable*. 

#### Coverage area
The coverage area that a service is intended for/available to should be defined using one or more instances of the *coverageArea* element, with the *address* elements of the contained ```Location``` populated depending on the type of coverage area to be defined. HealthConnect currently supports coverage areas to be defined as Australia-wide (in which case only one *coverageArea* element should be present), or as a combination of individual states and/or suburbs (with separate *coverageArea* elements for each). See the [HC Service Coverage Area](StructureDefinition-hc-service-coverage-area.html) profile for more information.

#### Referral information
Some subscribing systems may render markdown contained in the [Referral Information For Referrer](StructureDefinition-referral-information-for-referrer.html) element; however this is not guaranteed, so publishing systems should limit markdown syntax in these elements to that which still renders well as plain text (such as bullets, numbered lists, or bold/italic text).
