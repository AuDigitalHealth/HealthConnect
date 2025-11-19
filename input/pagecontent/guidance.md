### Conventions

#### Must support
Must support is inherited by elements from their parents except in the following cases: extensions, modifier extensions and children of resource, meta or backbone element. This may be overridden explicitly. So, must support on an element 

* when it is resource, meta or a backbone element, **does not** apply to any children;
* when it is neither resource, meta nor a backbone element, applies to all children, other than extension and modifier extension, e.g. for HealthcareService.type it applies to id, coding and text, but not to extension;
* when it has more than one data type, profile, target profile or slice, applies to all data types, profiles, target profiles and slices;
* when it is an extension or modifier extension, applies to its children normally;
* when it is a reference with a value for reference, **does not** apply to the referenced resource. A resource is not an element.

In profiles that represent published organisation information, **the presence of 'must support'** on any data element shall be interpreted as follows:

* For a responding system providing the data element to the HC service: the HC service will publish the data element to requesting systems.
* For a requesting system receiving the data element from the HC service: the HC service will include the data element if it is available. Subscribing systems are not obliged to process the data element.

In profiles that **do not** represent published organisation information, **the presence of ‘must support’** on any data element shall be interpreted as follows:

* For a requesting system providing the data element to the HC service: the HC service will process the data element.
* For a responding or requesting system receiving the data element from the HC service: the HC service will include the data element if it is available.

#### Search parameters

The search parameters defined in this implementation guide specify how client systems MUST query the Health Connect Directory service. These search parameters are the authoritative specification for discovering and retrieving healthcare provider directory data from the Health Connect system.

**Search Parameter Requirements**: Client systems integrating with Health Connect MUST use the search parameters as defined in this implementation guide. The Health Connect Directory service implements these specific search parameters to ensure consistent and reliable data retrieval across all client integrations.

**Supported Search Operations**: The Health Connect Directory service supports all search parameters defined in this implementation guide, plus inherited FHIR search capabilities from the derived profiles. Client systems can utilise any of the available search parameters, but must conform to the specifications and constraints defined herein.

##### System-level search parameters

The Health Connect Directory service supports the following system-level search parameters across all resource types. These parameters can be chained together to create sophisticated queries that combine filtering, date range selection, and relationship traversal:

**_lastUpdated**: Enables querying resources based on when they were last modified in Health Connect. This parameter is particularly useful for synchronization scenarios where client systems need to identify resources that have changed since a specific point in time. The parameter supports comparison prefixes to enable flexible date range queries:

- `gt` (greater than): Returns resources updated after the specified date/time
- `lt` (less than): Returns resources updated before the specified date/time
- `ge` (greater than or equal): Returns resources updated on or after the specified date/time
- `le` (less than or equal): Returns resources updated on or before the specified date/time

The date/time value can be specified with varying precision (year, month, day, hour, minute, second). Time components are optional - if omitted, the system assumes the start or end of the period as appropriate for the comparison.

Example usage:
```
GET [base]/Practitioner?_lastUpdated=gt2025-01-01T00:00:00Z
```

This query retrieves all Practitioner resources updated since January 1, 2025.

**_type**: Used in system-level searches to filter the resources returned by their resource type. This parameter allows querying multiple resource types in a single request. Available types include:

- `HealthcareService` (returns resources conforming to the HC Healthcare Service profile)
- `PractitionerRole` (returns resources conforming to the HC Practitioner Role profile) 
- `Organization` (returns resources conforming to the HC Organization profile)
- `Location` (returns resources conforming to the HC Location profile)
- `Practitioner` (returns resources conforming to the HC Practitioner profile)
- `Provenance` (returns resources conforming to the HC Provenance profile)

Multiple resource query approaches:

**Option 1 - Separate queries:**
```
GET [base]/Practitioner?_lastUpdated=gt2025-01-01
GET [base]/Organization?_lastUpdated=gt2025-01-01
```

**Option 2 - Combined query using _include relationships:**
```
GET [base]/PractitionerRole?_lastUpdated=gt2025-01-01&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization
```

**Option 3 - Bundle batch request:**
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

**_include**: Enables including related resources referenced by the primary search results in a single response. This parameter supports both single and multiple includes to traverse resource relationships.

Example usage (most common pattern):
```
GET [base]/PractitionerRole?_include=PractitionerRole:practitioner&_include=PractitionerRole:organization
```

This query retrieves PractitionerRole resources along with their associated Practitioner and Organization resources.

**Chained Parameter Example**:
```
GET [base]/PractitionerRole?_lastUpdated=gt2025-01-01&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization
```

This query retrieves PractitionerRole resources updated since January 1, 2025, along with their associated Practitioner and Organization resources.

**_elements**: Controls which elements are returned in the response, allowing clients to request only specific fields of a resource. This parameter is particularly useful for reducing response payload size and network traffic when only certain data elements are needed.

The `_elements` parameter accepts a comma-separated list of element names. When specified, the server returns only the requested elements plus any mandatory elements required by the FHIR specification (such as `id` and `meta`).

Example usage:
```
GET [base]/Practitioner?_elements=identifier,active
```

This query retrieves Practitioner resources but returns only the `identifier` and `active` elements (plus mandatory FHIR elements).

```
GET [base]/HealthcareService?_elements=identifier,active,location,serviceType,category,characteristic,communication,coverageArea,endpoint
```

This query retrieves HealthcareService resources with only the specified elements, reducing the response size for scenarios where only key service information is needed.

**Benefits of using _elements**:
- Reduces bandwidth usage by limiting response payload size
- Improves query performance by minimizing data transfer
- Enables focused data retrieval for specific use cases
- Supports efficient mobile and low-bandwidth scenarios

For more details on the `_elements` parameter specification, see the [FHIR R4 search documentation](https://build.fhir.org/search.html#elements).

##### Use of multiple _include and _revInclude parameters
 
The Health Connect directory server supports the use of multiple **_include** and **_revInclude** search parameters to enable traversal of resource relationships across profile boundaries. These parameters allow client systems to retrieve related resources in a single query by following references defined within the FHIR profiles.
For example, to retrieve all Practitioners associated with a specific HealthcareService, a client may issue the following query:
 
`GET [base]/HealthcareService?_revInclude=PractitionerRole:healthcareService&_include=PractitionerRole:practitioner`
 
This query starts with HealthcareService, then first includes PractitionerRole resources that reference the HealthcareService, and then secondly includes the Practitioner resources referenced by those PractitionerRole instances.
The appropriate combination of _include and _revInclude parameters depends on the referencing hierarchy defined in the profiles. Client systems should consult the profile structure (illustrated by the diagram found on the index page) in addition to the narrative sections of each profile, to determine the correct traversal path and combination of **_include** and/or **_revInclude** parameters for their use case.

