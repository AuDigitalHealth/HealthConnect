### Search parameters for HC Practitioner 
This IG provides a small set of convenience SearchParameters to make it easier to find HC Practitioner resources; it also expects implementers to support common Practitioner parameters from AU Core & AU Base.

#### Search parameters defined within AU Core and AU Base
How search queries can be performed using the HPI-I are described in [AU Core documentation](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitioner.html#notes). How search queries can be performed using gender-identity is described in [AU Base documentation](https://build.fhir.org/ig/hl7au/au-fhir-base/SearchParameter-gender-identity.html). The AU Core guidance favours the standard FHIR `identifier` search parameter using the system|value (token) form.

- `identifier` - Search practitioners by HPI-I or Ahpra registration number. Examples:
- `GET /Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0|8003619900015717` (HPI-I)  
- `GET /Practitioner?identifier=http://hl7.org.au/id/ahpra-registration-number|MED0000932945` (Ahpra)

- `gender-identity` (Practitioner.extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value)
- Search by a practitioner's recorded gender identity extension value.
- Example: `GET /Practitioner?genderIdentity=http://snomed.info/sct|446151000124109`

#### Search parameters defined in this IG
The following search parameters are **defined by this IG** and **SHALL** be supported:

- `practitionername` (Practitioner.name where name.use = official)
- Search by the practitioner's official/legal name.
- Example: `GET /Practitioner?practitionername=Fryer`

- `practitioneralias` (Practitioner.name where name.use = usual)
- Search by the practitioner's preferred or commonly used name.
- Example: `GET /Practitioner?practitioneralias=Helen`

- `prn` (Practitioner.qualification.identifier where type.coding.code = 'PRN')
- Find practitioners by a Professional Registration Number (PRN).
- Example (value-only): `GET /Practitioner?prn=PRN-123456`

- `rsg` (Practitioner.extension(recordedSexorGender).valueCodeableConcept)
- Search by a practitioner's recorded sex or gender.
- Example: `GET /Practitioner?rsg=http://hl7.org/fhir/administrative-gender|male`

 - `regprof` (Practitioner.qualification.code.text)
 - Search by a practitioner's registered profession using string values.
 - Example: `GET /Practitioner?regprof=Psychologist`

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
        <td>The requester <b>SHALL</b> provide both the code values. The responder <b>SHALL</b> support.<br/><br/>The requester <b>SHOULD</b> support search using HPI-I or Ahpra number as defined in the profile. The responder <b>SHOULD</b> support search using the using HPI-I or Ahphra number as defined in the profile.</td>
  </tr>
  <tr>
        <td>practitionername</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>practitioneralias</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>prn</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>Search by Professional Registration Number. Shared SearchParameter for availability across Practitioner and PractitionerRole</td>
  </tr>
  <tr>
        <td>ahpraregistrationnumber</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>Search by Ahpra registration number. Shared SearchParameter for availability across Practitioner and PractitionerRole</td>
  </tr>
  <tr>
      <td>regprof</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td>Search by registered profession using string values in `qualification.code.text`.</td>
  </tr>
  <tr>
        <td>identifier+rsg</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier+gender-identity</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>practitionername+rsg</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>practitionername+gender-identity</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>practitioneralias+rsg</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>practitioneralias+gender-identity</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>prn+rsg</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>prn+gender-identity</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
      <td>regprof+rsg</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td>Search by Ahpra profession and recorded sex/gender</td>
  </tr>
  <tr>
      <td>regprof+gender-identity</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td>Search by Ahpra profession and gender identity</td>
  </tr>
 </tbody>
</table>

### Search reverse include parameters

This implementation supports the following `_revinclude` parameters when searching for Practitioner resources:

* `_revinclude=PractitionerRole:practitioner` - Include PractitionerRole resources that reference this Practitioner
* `_revinclude=Provenance:target` - Include Provenance resources that track changes to this Practitioner

#### Example usage

```text
GET /Practitioner/202?_revinclude=PractitionerRole:practitioner
```

This query returns the Practitioner resource along with all their associated roles and positions.
