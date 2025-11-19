### Search parameters
This IG defines and intoduces several search parameters in addition to those inherited, that make it easier to find and filter `HC Healthcare Service` resources in Health Connect implementations. The following search parameters are defined and **SHALL** be supported:

#### Search parameters defined in FHIR R4
- `service-type` (HealthcareService.type)
- This SearchParameter is defined in FHIR R4 (see https://hl7.org/fhir/R4/healthcareservice.html) and searches `HealthcareService.type`. It is a token search — use the fully-qualified `system|code` form to avoid ambiguity.

Examples:
- Unencoded: `GET /HealthcareService?service-type=http://snomed.info/sct|1256161000168107`
- Encoded: `GET /HealthcareService?service-type=http%3A%2F%2Fsnomed.info%2Fsct%2F32506021000036107%7C1256161000168107`

Note: Values come from the HC Healthcare Service value set (SNOMED). Use codes that are children of 224930009 ("Services"), excluding 700232004 ("General medical service").


#### Search parameters defined in this IG
The following search parameters are **defined by this IG** and **SHALL** be supported:

- `languages` (HealthcareService.communication.coding.display OR PractitionerRole.extension.where(url='http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner-role-communication').value.ofType(CodeableConcept).coding.display)
- Search for healthcare services by the languages they support for communication. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- Example (display text): `GET /HealthcareService?languages=Italian`

- `hsbilling` (HealthcareService.serviceProvisionCode)
- Search for healthcare services by their billing or service provision conditions (for example, bulk billing, fees apply).
- Example (preferred, unambiguous): `GET /HealthcareService?hsbilling=http://terminology.hl7.org.au/CodeSystem/service-provision-conditions|FAP`

##### Availability

- `availability-allday` (HealthcareService.availableTime.allDay | PractitionerRole.availableTime.allDay)
- Search for services/roles by whether they are available all day. Use token semantics for boolean values.
- Example: `GET /HealthcareService?availability-allday=true`
- Example: `GET /PractitionerRole?availability-allday=false`

- `availability-daysofweek` (HealthcareService.availableTime.daysOfWeek | PractitionerRole.availableTime.daysOfWeek)
- Search for services/roles by days of the week they are available. Supports multiple days using OR logic.
- Available day codes: mon, tue, wed, thu, fri, sat, sun
- Example: `GET /HealthcareService?availability-daysofweek=mon`
- Example: `GET /HealthcareService?availability-daysofweek=mon,tue,wed` (multiple days)
- Example: `GET /PractitionerRole?availability-daysofweek=fri`

- `availability-starttime` (HealthcareService.availableTime.availableStartTime | PractitionerRole.availableTime.availableStartTime)
- Search for services/roles by availability start time. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- **Format**: Use time format HH:mm:ss (e.g., "08:00:00" for 8 AM)
- **String matching**: Supports exact match and prefix match
- Example (exact time): `GET /HealthcareService?availability-starttime=08:00:00`
- Example (prefix match): `GET /PractitionerRole?availability-starttime=08` (matches 08:xx:xx)

- `availability-endtime` (HealthcareService.availableTime.availableEndTime | PractitionerRole.availableTime.availableEndTime)
- Search for services/roles by availability end time. This shared SearchParameter works for both HealthcareService and PractitionerRole resources.
- **Format**: Use time format HH:mm:ss (e.g., "17:30:00" for 5:30 PM)
- **String matching**: Supports exact match and prefix match
- Example (exact time): `GET /HealthcareService?availability-endtime=17:00:00`
- Example (prefix match): `GET /PractitionerRole?availability-endtime=17` (matches 17:xx:xx)#### SearchParameters from R4

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
        <td>service-type (R4) </td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>languages</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>hsbilling</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>service-type+languages</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>service-type+hsbilling</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>languages+hsbilling</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>languages+availability-daysofweek</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>hsbilling+availability-daysofweek</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
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

This implementation supports the following `_include` parameters when searching for HealthcareService resources:

* `_include=HealthcareService:location` - Include Location resources referenced by the `location` element
* `_include=HealthcareService:providedBy` - Include Organization resources referenced by the `providedBy` element
* `_include=HealthcareService:endpoint` - Include Endpoint resources referenced by the `endpoint` element

### Search reverse include parameters

This implementation supports the following `_revinclude` parameters when searching for HealthcareService resources:

* `_revinclude=PractitionerRole:healthcareService` - Include PractitionerRole resources that reference this HealthcareService
* `_revinclude=Provenance:target` - Include Provenance resources that track changes to this HealthcareService

#### Example usage

```text
GET /HealthcareService/789?_include=HealthcareService:location&_include=HealthcareService:providedBy&_revinclude=PractitionerRole:healthcareService
```

This query returns the HealthcareService with its Location, providing Organization, and all associated PractitionerRoles.








