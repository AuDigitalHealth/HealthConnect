### Conventions

#### Must support
This IG follows the approach taken in AU Core to must support and obligation.
 
Labelling an element [*Must Support*](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) means that systems that produce or consume resources **SHALL** provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile **SHALL** make clear exactly what kind of support is required when an element is labelled as *Must Support*. 
 
In this IG, the meaning of *Must Support* is specified in terms of [Obligation Codes](https://hl7.org/fhir/extensions/CodeSystem-obligation.html) in [obligation extensions](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition. These obligations can also be applied at more granular levels, such as individual data type choices, terminology bindings, identifiers, or sub-elements.
 
To interpret elements labelled as must support follow the guidance in AU Core at [Interpreting Profile Elements Labelled Must Support](https://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#interpreting-profile-elements-labelled-must-support).

#### Must Support & Obligations for Actors
This implementation guide defines its own actors and obligations to specify actor-specific behaviour for data elements. While this IG builds upon AU Core profiles, the obligations defined there are not relevant here as those obligations apply to actors not included in this implementation guide. Only obligations on actors included in this implementation guide are relevant. The IG defines two actors with specific responsibilities:

* **Health Connect Provider Directory Responder Actor** (server): The source for Health Connect Provider Directory data.
* **Health Connect Provider Directory Requester Actor** (client): Systems that query and consume Directory data.

Generally the main obligations applied to each Actor within this IG are:

* **Health Connect Provider Directory Responder Actor** with `SHALL:populate-if-known` obligation: The Health Connect Provider Directory Responder SHALL populate-if-known the data element in accordance with the [FHIR obligation definition](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58populate-if-known). This means that if the actor knows the correct value for the element it will include it. The obligation does not require the element to always be present, but when the actor has the relevant data and it is appropriate for the resource context, the element must be populated if known.

* **Health Connect Provider Directory Requester Actor** with `SHOULD:handle` obligation: Client systems SHOULD be capable of receiving and processing the data element when it is present in responses in accordance with the [FHIR obligation definition](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-handle). This provides flexibility for implementers to support Directory data elements based on their specific use cases and integration requirements.

**For elements without FHIR obligations:**

* Data elements that do not have specific FHIR obligations defined can be ignored by implementers unless explicitly required by their specific use case or local requirements.

#### Search parameters
The search parameters defined in this implementation guide specify the recommended approaches for client systems to query the Health Connect Provider Directory system and are the authoritative specification for discovering and retrieving healthcare Provider Directory data. Client systems integrating with Health Connect SHOULD use these search parameters to ensure consistent and reliable data retrieval across all client integrations. 

The Health Connect Provider Directory supports all search parameters defined in this implementation guide, plus inherited FHIR search capabilities from the derived profiles. All search parameters are marked as SHOULD support for the Health Connect Provider Directory Requester Actor, allowing implementers flexibility in choosing which parameters to support based on their specific use cases and integration requirements. Client systems can utilise any of the available search parameters, and should conform to the specifications and constraints defined herein where applicable to their use case.

##### Querying multiple resource types

**Bundle batch request:**
```json
POST [base]
Content-Type: application/fhir+json

{
  "resourceType": "Bundle",
  "type": "batch",
  "entry": [
    {
      "request": {
        "method": "GET",
        "url": "Practitioner?_lastUpdated=gt2025-01-01"
      }
    },
    {
      "request": {
        "method": "GET", 
        "url": "Organization?_lastUpdated=gt2025-01-01"
      }
    }
  ]
}
```

###### Combining with other search parameters
When used in combination with other standard parameters, sophisticated queries can be created that can efficiently leverage filtering, date range selection, and relationship traversal.


##### Standard search parameters
[**_lastUpdated**](https://hl7.org/fhir/R4/search.html#lastUpdated): Enables querying resources based on when they were last modified in the Health Connect Provider Directory. This parameter is particularly useful for synchronization scenarios where client systems need to identify resources that have changed since a specific point in time. The parameter supports comparison prefixes to enable flexible date range queries:

- `gt` (greater than): Returns resources updated after the specified date/time
- `lt` (less than): Returns resources updated before the specified date/time
- `ge` (greater than or equal): Returns resources updated on or after the specified date/time
- `le` (less than or equal): Returns resources updated on or before the specified date/time

The date/time value can be specified with varying precision (year, month, day, hour, minute, second). Time components are optional - if omitted, the system assumes the start or end of the period as appropriate for the comparison.

Example usage for type-specific search:
```
GET [base]/Practitioner?_lastUpdated=gt2025-01-01T00:00:00Z
```

This query retrieves only Practitioner resources updated since January 1, 2025.

[**_elements**:](https://build.fhir.org/search.html#elements) Controls which elements are returned in the response by accepting a comma-separated list of element names. When specified, the server returns only the requested elements. This reduces bandwidth usage and improves query performance by limiting response payload size.

Example usage:
```
GET [base]/Practitioner?_elements=identifier,active
```

This query retrieves Practitioner resources but returns only the `identifier` and `active` elements (plus mandatory FHIR elements).

##### Relationship traversal  
[**_include and _revinclude**](https://hl7.org/fhir/R4/search.html#include): Enables including related resources in a single response by traversing resource relationships. `_include` follows references from primary search results to related resources, while `_revinclude` finds resources that reference the primary search results. Multiple parameters can be combined to traverse complex relationships across profile boundaries.

**Examples:**
```
GET [base]/PractitionerRole?_include=PractitionerRole:practitioner&_include=PractitionerRole:organization
```
Retrieves PractitionerRole resources with their associated Practitioner and Organization resources.

```
GET [base]/HealthcareService?_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```
Retrieves HealthcareService resources, plus PractitionerRole resources that reference those services, plus the Practitioner resources referenced by those PractitionerRole instances.

```
GET [base]/PractitionerRole?_lastUpdated=gt2025-01-01&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization
```
Combines relationship traversal with date filtering to retrieve updated PractitionerRole resources and their related resources.

The appropriate combination of parameters depends on the referencing hierarchy defined in the profiles. Client systems should consult the profile structure (illustrated by the diagram found on the index page) and profile narrative sections to determine the correct traversal path for their use case.


##### Pagination
The Health Connect Provider Directory supports paginated search results. The Provider Directory has a default page size of **10** resources. The [`_count`](https://hl7.org/fhir/R4/search.html#count) parameter is supported generically by the service; clients may include `_count` to express a preferred page size.

- **Follow the `next` link:** When a search response is paginated, the server returns a `Bundle` that may include a `link` entry with `relation="next"`. Clients SHOULD use the `next` link to retrieve subsequent pages rather than reconstructing paging URLs.

Example:
```
GET [base]/HealthcareService?_count=50
```

This request expresses a preference for up to 50 resources per page; the server may honour this preference or return a different page size. If there are more results, the returned `Bundle` may include a `link` element with `relation="next"` for fetching the next page.
