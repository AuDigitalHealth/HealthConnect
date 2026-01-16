**This change log documents the significant updates and resolutions implemented from version 0.1.0 of this IG to present.**

### Release 0.2.0 (Snapshot 2)
- Publication date: 2026-01-16
- Publication status: Preview 
- Based on FHIR version: 4.0.1

#### Changes in this version
- Fixed typos.
- Change diagram to be more consistent with UML practices. 
- Removed narrative irrelevant to Requester actor from provenance profile about connecting systems. 
- Include guidance on Endpoint.status being ignored.
- Include guidance on future vs current Endpoint type support. [#29](https://github.com/AuDigitalHealth/HealthConnect/issues/29)
- Change cardinalities on PractitionerRole.Endpoint, Location.Endpoint & HealthcareService.Endpoint from 0..1 -> 0..*. [#12](https://github.com/AuDigitalHealth/HealthConnect/issues/12)
- The fixed value for `HSP-O Identifier.type.coding.code` has been changed from `http://terminology.hl7.org/CodeSystem/v2-0203` code `XX` to `http://terminology.hl7.org.au/CodeSystem/v2-0203` code `NOI`, aligning with other AU Base national organisation identifiers such as HPI-I and PAI-O. [#8](https://github.com/AuDigitalHealth/HealthConnect/issues/8)
- The short description and definition of Practitioner.qualification changed to "Professional registration details of the practitioner".
- Removed case sensitive element from hc-iar-levels-of-care code system definition. [#15](https://github.com/AuDigitalHealth/HealthConnect/issues/15)
- Change cardinality on Endpoint.identifier from 2..* -> 1..*.
- Correct the numbering of navigation tabs. [#5](https://github.com/AuDigitalHealth/HealthConnect/issues/5)
- Created a new Health Connect Provider Directory Responder actor and capability statement that is responsible for providing responses to queries submitted by Health Connect Provider Directory Requester actors.
- Correct the constraint so that it works correctly warning that both HSPO and HPIO cannot be applied to an Organization.
- Remove `prn` search parameter and revert to standard identifier search on PractitionerRole with updated guidance. 
- Add R5-style `identifier search for Practitioner (identifier-r5) supporting both Practitioner.identifier and Practitioner.qualification.identifier.
- Update PractitionerRole and HealthcareService examples to include TimeZone. [#14](https://github.com/AuDigitalHealth/HealthConnect/issues/14)
- Add guidance about ignoring PractitionerRole.speciality. 
- Modification to license attribution. [#16](https://github.com/AuDigitalHealth/HealthConnect/issues/16)
- Renamed Health Connect Reader actor to Health Connect Provider Directory Requester actor [#17](https://github.com/AuDigitalHealth/HealthConnect/issues/17)
- Renamed Health Connect Reader capability statement to Health Connect Provider Directory Requester capability statement. [#17](https://github.com/AuDigitalHealth/HealthConnect/issues/17)
- Add Must Support Obligations on both client and server actors. [#20](https://github.com/AuDigitalHealth/HealthConnect/issues/20)
- Improve Must Support guidance. [#18](https://github.com/AuDigitalHealth/HealthConnect/issues/18)
- Restructure example title names. 
- Update the guidance for SearchParameters. [#22](https://github.com/AuDigitalHealth/HealthConnect/issues/22)
- Improve the conformance statement. 
- Add Location-physicalType SearchParameter.
- Remove Health Connect from references to IAR. 
- Update to correctly apply SHOULD or SHALL strength to Resource Conformance in Actor Capability Statements. 
- Add warning constraint to Professional Registration Number Identifier (PRN) so that either system or assigner should be present. 
- Improve the 2nd Practitioner example so that both Qualifications render properly in html output and use example systems for professional boards.
- Change the uri for ProfessionalRegistrationNumber to lowercase for consistency. 
- The following CodeSystems and ValueSets now are abstracted to the NCTS to minimize redundancy: Service Eligibility CS & VS, Facility Amenity CS & VS, Service Delivery Location Role Type VS. 
- Remove the custom name SearchParameters for Practitioner and revert to R4 name SearchParameter. [#24](https://github.com/AuDigitalHealth/HealthConnect/issues/24)
- Provide better guidance on the operation of the `rsg` SearchParameter. 
- Add Must Support and Obligations to data element Location.position. [#28](https://github.com/AuDigitalHealth/HealthConnect/issues/28)
- Describe use of `near` SearchParameter in Location notes. 
- Add guidance section on bulk syndication. 
- Add location example that uses physicalType to better delineate between: Mobile, Virtual and Physical Location instance use cases. 
- Tidy up to invariants on Location profile. 
- Fix type of postal to extension `Preferred Postal Address`.
- Add section to SearchParameters markdown describing recommended modifier usage. [#23](https://github.com/AuDigitalHealth/HealthConnect/issues/23)
- Add second Organization example with HSP-O identifier.
- Declare support for more modifiers in SearchParameters. [#23](https://github.com/AuDigitalHealth/HealthConnect/issues/23)
- Change name of `postaladdress` SearchParameter to `locmailaddress` for clarity. 
- Update `hcepi` and `prn` search parameters from string to token type for built-in exact matching without requiring modifiers.
- Add proximity search sorting guidance with `_sort=near` parameter for closest-first ordering of Location results.
- Updated `starttime` and `endtime` SearchParameters to support numeric prefix operators (ge, gt, le, lt, ne) for time-based searches. Changed to #number type for both. Time values are internally converted to HHMM integers to allow for prefix use. Limitations described. 
- Update guidance for best use of `prn` search paramter. 
- Rename slice professionalregistrationnumber to peakbodyregistrationnumber to add clarity about use case. 

### Release 0.1.0 (Snapshot 1)
- Publication date: 2025-11-19
- Publication status: Preview 
- Based on FHIR version: 4.0.1

#### Changes in this version
- Initial foundation for Community Consultation. 