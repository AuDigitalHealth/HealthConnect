### Search parameters
This IG defines and introduces several search parameters in addition to those inherited that make it easier to find and filter `HC PractitionerRole` resources in Health Connect implementations. 

#### Search parameters defined within AU Core 
How search queries can be performed using the Medicare Provider Number or Ahpra identifier are described in [AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html#notes). See AU Core documentation for further information.

- **Medicare Provider Number** and **Ahpra Registration Number** are both found using the standard `identifier` search parameter, specifying the appropriate system:

- Medicare Provider Number: 
`GET /PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|2426621B`
- Ahpra Registration Number: 
`GET /PractitionerRole?identifier=http://hl7.org.au/id/ahpra-registration-number|MED0000932945`

#### Search parameters defined in this IG
The following search parameters are **defined by this IG** and **SHALL** be supported:

- `prn` (PractitionerRole.identifier where system = http://ns.electronichealth.net.au/hc/id/prn)
- Find PractitionerRoles by their Professional Registration Number (PRN).
- Example: `GET /PractitionerRole?prn=PRN-123456`

- `languages` (PractitionerRole.extension where url = HC practitioner role communication)
- Find practitioner roles by the languages spoken by the practitioner in this role, stored in the HC communication extension. This is a shared SearchParameter that works across both HealthcareService and PractitionerRole resources.
- Example (display text): `GET /PractitionerRole?languages=Italian`

- `roletype` (PractitionerRole.code.coding.display)
- Search for PractitionerRoles by their role type display name (for example, "Medical pathologist"). Uses string matching for display text.
- Example: `GET /PractitionerRole?roletype=Medical%20pathologist`

##### Availability 

- `availability-allday` (PractitionerRole.availableTime.allDay)
- Search for practitioner roles that are available all day, i.e. 24 hours. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- Example (all day): `GET /PractitionerRole?availability-allday=true`
- Example (not all day): `GET /PractitionerRole?availability-allday=false`

- `availability-daysofweek` (PractitionerRole.availableTime.daysOfWeek)
- Search for practitioner roles by days of the week they are available. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- Example (Monday): `GET /PractitionerRole?availability-daysofweek=mon`
- Example (weekend): `GET /PractitionerRole?availability-daysofweek=sat,sun`

- `availability-starttime` (PractitionerRole.availableTime.availableStartTime)
- Search for practitioner roles by their availability start time. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- **Format**: Use time format HH:mm:ss (e.g., "09:00:00" for 9 AM)
- **String matching**: Supports exact match and prefix match
- Example (exact time): `GET /PractitionerRole?availability-starttime=09:00:00`
- Example (prefix - morning): `GET /PractitionerRole?availability-starttime=09`

- `availability-endtime` (PractitionerRole.availableTime.availableEndTime)
- Search for practitioner roles by their availability end time. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- **Format**: Use time format HH:mm:ss (e.g., "17:00:00" for 5 PM)
- **String matching**: Supports exact match and prefix match
- Example (exact time): `GET /PractitionerRole?availability-endtime=17:00:00`
- Example (prefix - afternoon): `GET /PractitionerRole?availability-endtime=17`

<br/><br/>*Note:* Support for _id is mandatory for a responder and optional for a requester. Where the expectation for a search parameter differs between actors, the table below will reflect the stronger conformance requirement.

<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance </th>
    <th>Type(s)</th>
    <th>Requirements (when used alone or in combination)</th>
  </tr>
  <tr>
        <td>_id</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
    <tr>
        <td>identifier</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the code values. The responder <b>SHALL</b> support.<br/><br/>The requester <b>SHOULD</b> support search using Medicare Provider Number or Ahpra number as defined in the profile. The responder <b>SHOULD</b> support search using the using Medicare Provider Number or Ahphra number as defined in the profile.</td>
  </tr>
    <tr>
        <td>prn</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td>Shared SearchParameter for availability across Practitioner and PractitionerRole</td>
  </tr>
  <tr>
        <td>roletype</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>languages</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier+languages</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>availability-allday</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>Shared SearchParameter for availability across HealthcareService and PractitionerRole</td>
  </tr>
  <tr>
        <td>availability-daysofweek</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>Shared SearchParameter for availability across HealthcareService and PractitionerRole</td>
  </tr>
  <tr>
        <td>availability-starttime</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td>Shared SearchParameter. Time format HH:mm:ss.</td>
  </tr>
  <tr>
        <td>availability-endtime</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td>Shared SearchParameter. Time format HH:mm:ss.</td>
  </tr>
  <tr>
        <td>identifier+availability-daysofweek</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier+availability-starttime</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>roletype+availability-daysofweek</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>roletype+availability-starttime</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>string</code></td>
        <td></td>
  </tr>
      <tr>
        <td>availability-daysofweek+availability-starttime+availability-endtime</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>string</code>+<code>string</code></td>
        <td></td>
  </tr>
 </tbody>
</table>

### Search include parameters

This implementation supports the following `_include` parameters when searching for PractitionerRole resources:

* `_include=PractitionerRole:practitioner` - Include Practitioner resources referenced by the `practitioner` element
* `_include=PractitionerRole:healthcareService` - Include HealthcareService resources referenced by the `healthcareService` element
* `_include=PractitionerRole:organization` - Include Organization resources referenced by the `organization` element
* `_include=PractitionerRole:location` - Include Location resources referenced by the `location` element
* `_include=PractitionerRole:endpoint` - Include Endpoint resources referenced by the `endpoint` element

### Search reverse include parameters

This implementation supports the following `_revinclude` parameters when searching for PractitionerRole resources:

* `_revinclude=Provenance:target` - Include Provenance resources that track changes to this PractitionerRole

#### Example usage

```text
GET /PractitionerRole/101?_include=PractitionerRole:practitioner&_include=PractitionerRole:organization&_include=PractitionerRole:location
```

This query returns the PractitionerRole with the associated Practitioner, Organization, and Location details.

