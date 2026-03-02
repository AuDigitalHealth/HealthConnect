## Usage notes 
This extension is used to convey whether the parent resource should be hidden from display in the Provider Directory. 

### Datatype and context
The extension carries a boolean `valueBoolean` where a value of `true` denotes the resource **SHALL** be excluded from Provider Directory listings. This extension is profiled on: Organization, Practitioner and PractitionerRole. 

### Processing and client obligations
- The default state of this extension, being optional, is that it is not present on a profile and that resource is visible. 
- If marked as true, the parent resource data will not be returned by subsequent API payload responses; it will no longer be visible but remain stored by the Health Connect Provider Directory system. 
- Client requester actors of the bulk data export service offered by the Health Connect Provider Directory system will receive a list of identifiers contained within a FHIR resource pertaining to Organisations or Practitioners which have elected to suppress their information. 
- Client requester actors **SHALL** be required to cleanse their local systems of resources related to such identifiers.
