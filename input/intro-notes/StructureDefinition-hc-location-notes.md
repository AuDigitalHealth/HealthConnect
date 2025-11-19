### Search parameters
This IG defines and introduces several search parameters in addition to those inherited from R4, that make it easier to find and filter `HC Location` resources in Health Connect implementations.

#### Search parameters defined in this IG
The following search parameters are **defined by this IG** and **SHALL** be supported:

- `postaladdress` (Location.extension where url = HC preferred postal address extension)
      - Search locations by the HC-preferred postal address stored in the location's HC-specific extension.
            - Example (string-only): `GET /Location?postaladdress=PO%20Box%20123`

- `locationamenities` (Location.extension where url = HC amenity extension)
	- Search for locations by their amenities using the HC amenity extension. Use token semantics for coded amenity values.
      - TODO Example (display text): `GET /Location?locationamenities=Wheelchair%20access`

#### Search parameters from R4
The following search parameters are **inherited from FHIR R4** and have been deemed useful for implementation within this IG. They **SHALL** be supported:

- `name` (Location.name and Location.alias)
	- Search for locations by name and alias (partial searches supported).
	- Example: `GET /Location?name:contains=Telehealth`

- `address` (Location.address)
	- Search for locations by address (partial searches supported).
	- Example: `GET /Location?address=147-153%20Castlereagh%20Street`

- `type` (Location.type.coding)
	- Search for locations by their type using coded values. Use token semantics for precise code matching.
	- Available codes = MOBL, PTRES, SCHOOL, WORK, COMM, AMB, VI from the HC Service Delivery Location Role Type ValueSet
	- Example (code only): `GET /Location?type=MOBL`

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
        <td>name (R4)</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>address (R4)</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>postaladdress</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
      <td>locationamenities</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>type (R4)</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>name+type</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
      <td>name+locationamenities</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>address+type</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
      <td>address+locationamenities</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>postaladdress+type</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
      <td>postaladdress+locationamenities</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
 </tbody>
</table>

### Search include parameters

This implementation supports the following `_include` parameters when searching for Location resources:

* `_include=Location:endpoint` - Include endpoint resources referenced by the `endpoint` element
* `_include=Location:managingOrganization` - Include organization resources referenced by the `managingOrganization` element

### Search reverse include parameters

This implementation supports the following `_revinclude` parameters when searching for Location resources:

* `_revinclude=HealthcareService:location` - Include HealthcareService resources that reference this Location
* `_revinclude=Provenance:target` - Include Provenance resources that track changes to this Location

#### Example usage

```text
GET /Location/456?_include=Location:endpoint&_revinclude=HealthcareService:location
```

This query returns the Location resource, its associated Endpoints, and all HealthcareServices at this Location.
