
### Search parameters
This IG defines and introduces several search parameters in addition to those inherited from R4, that make it easier to find and filter `HC Endpoint` resources in Health Connect implementations.

#### Search parameters defined in this IG
The following search parameters are **defined by this IG** and **SHALL** be supported:

- `hcepi` (Endpoint.identifier where system = HC endpoint record identifier)
	- Find endpoint records by the HC identifier assigned in Health Connect.
	- Example: `GET /Endpoint?hcepi=12345`

- `payloadmimetype` (Endpoint.payloadMimeType)
	- Search for endpoints that advertise support for a specific MIME type for payloads.
	- Typical values present in this IG's example data are:
	  - `application/pdf`
	  - `application/fhir+xml`
	  - `application/fhir+json`
	- Example: `GET /Endpoint?payloadmimetype=application%2Ffhir%2Bjson`

- `epurl` (alias used in this IG for Endpoint.address)
	- Convenience alias used in this IG's documentation to search by endpoint address.
	- Example: `GET /Endpoint?epurl=https://smd.sydneyhospital.org.au/secure-messaging/endpoint`

#### Search parameters from R4
The following search parameters are **inherited from FHIR R4** and have been deemed useful for implementation within this IG. They **SHALL** be supported:

- `name` (Endpoint.name)
	- Search for endpoints by name (partial matches may be supported).
	- Example: `GET /Endpoint?name=My%20GP%20Service`

- `connection-type` (Endpoint.connectionType)
	- Search for endpoints by connection type (for example, `hl7-fhir-rest` or other interface codes).
	- Example: `GET /Endpoint?connection-type=http://terminology.hl7.org.au/CodeSystem/endpoint-connection-type|secure-messaging`

	- `payload-type` (Endpoint.payloadType)
	- Search for endpoints by payload type (CodeableConcept). Use [HC Endpoint payload type ValueSet codes](CodeSystem-hc-endpoint-payload-type-cs.html) where applicable.
	- Example: `GET /Endpoint?payload-type=http://ns.electronichealth.net.au/hc/CodeSystem/hc-endpoint-payload-type-cs|some-payload`


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
		<td>hcepi</td>
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
		<td>connection-type (R4)</td>
		<td><b>SHOULD</b></td>
		<td><code>token</code></td>
		<td></td>
  </tr>
	<tr>
		<td>payload-type (R4)</td>
		<td><b>SHOULD</b></td>
		<td><code>token</code></td>
		<td></td>
  </tr>
  <tr>
		<td>epurl</td>
		<td><b>SHOULD</b></td>
		<td><code>uri</code></td>
		<td></td>
  </tr>
  <tr>
		<td>payloadmimetype</td>
		<td><b>SHOULD</b></td>
		<td><code>token</code></td>
		<td></td>
  </tr>
  <tr>
		<td>name+connection-type</td>
		<td><b>SHOULD</b></td>
		<td><code>string</code>+<code>token</code></td>
		<td></td>
  </tr>
  <tr>
		<td>name+payload-type</td>
		<td><b>SHOULD</b></td>
		<td><code>string</code>+<code>token</code></td>
		<td></td>
  </tr>
  <tr>
		<td>connection-type+payloadmimetype</td>
		<td><b>SHOULD</b></td>
		<td><code>token</code>+<code>token</code></td>
		<td></td>
  </tr>
 </tbody>
</table>


### Search reverse include parameters

This implementation supports the following `_revinclude` parameters when searching for Endpoint resources:

- `_revinclude=HealthcareService:endpoint` - Include HealthcareService resources that reference this Endpoint
- `_revinclude=Location:endpoint` - Include Location resources that reference this Endpoint  
- `_revinclude=PractitionerRole:endpoint` - Include PractitionerRole resources that reference this Endpoint
- `_revinclude=Provenance:target` - Include Provenance resources that track changes to this Endpoint

#### Example usage

```text
GET /Endpoint/303?_revinclude=HealthcareService:endpoint&_revinclude=Location:endpoint
```

This query returns the Endpoint resource along with all HealthcareServices and Locations that use this Endpoint.

