### Custom Search Parameters

This page lists the custom SearchParameters that have been defined within this Implementation Guide.

<table class="grid">
	<thead>
		<tr>
			<th>Name</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="SearchParameter-allday.html">All Day</a></td>
			<td>Search HealthcareServices or PractitionerRoles by whether they are available all day.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-endtime.html">End Time</a></td>
			<td>Search HealthcareServices or PractitionerRoles by availability end time.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-starttime.html">Start Time</a></td>
			<td>Search HealthcareServices or PractitionerRoles by availability start time.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-daysofweek.html">Days of Week</a></td>
			<td>Search HealthcareServices or PractitionerRoles by days of week availability. Supports multiple days using OR logic.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-endpoint-payloadmimetype.html">Endpoint Payload Mime Type</a></td>
			<td>Search for Endpoint resources by payloadMimeType.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-endpoint-url.html">Endpoint URL</a></td>
			<td>Search for Endpoint resources by address (URL).</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-endpoint-hcepi.html">HC Endpoint Identifier</a></td>
			<td>Search an Endpoint record by its HC identifier.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-healthcareservice-billing.html">Healthcare Service Billing</a></td>
			<td>Search for HealthcareService resources by billing information.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-languages.html">Languages</a></td>
			<td>Search HealthcareServices or PractitionerRoles by supported languages/communication methods. Shared across HealthcareService and PractitionerRole.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-location-amenities.html">Location Amenities</a></td>
			<td>Search for Location resources by amenities.</td>
		</tr>
				<tr>
			<td><a href="SearchParameter-location-physicaltype.html">Location Physical Type</a></td>
			<td>Search for Location resources by physicalType field.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-location-locmailaddress.html">Location Postal Address</a></td>
			<td>Search for Location resources by postal address components.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-practitioner-regprof.html">Practitioner's Registered Profession</a></td>
			<td>Search a Practitioner record by their registered profession using string values.</td>
		</tr>
				<tr>
			<td><a href="SearchParameter-practitioner-rsg.html">Practitioner's Recorded Sex or Gender</a></td>
			<td>Search a Practitioner record by their recorded sex or gender.</td>
		</tr>
		<tr>
			<td><a href="SearchParameter-practitioner-identifier-r5.html">Practitioner Identifier (R5)</a></td>
			<td>Search a Practitioner record by any identifier, including HPI-I and Professional Registration Number (PRN), mimicks R5-style identifier searching. Supports both <code>Practitioner.identifier</code> and <code>Practitioner.qualification.identifier</code>.</td>
		</tr>
	</tbody>
</table>

### Search Modifiers

The Health Connect Provider Directory supports specific search modifiers for string-type search parameters to tailor search functionality:

- **`:exact`** - Performs case-sensitive, exact matching without partial matching. Use this when you need precise lookups with string-type parameters.
- **`:contains`** - Searches for the value anywhere within the string, not just at the beginning. Use this for broader text searches.
- **`:iterate`** - As a modifier to `_include` and `_revinclude` enables recursive traversal of reference chains in search results. In this IG, the primary use case for this would be following the `Organization.partOf` hierarchy to also retrieve all referenced parent organizations in a single query.

**Note:** Token-type search parameters (such as `hcepi`) provide exact matching by default and do not require modifiers.

#### String-Type Parameters with Modifier Support

The following string-type search parameters can be used with the appropriate modifier:

<table class="grid">
	<thead>
		<tr>
			<th>Parameter</th>
			<th>Resource Types</th>
			<th>Type</th>
			<th>Use Case for <code>:exact</code></th>
			<th>Use Case for <code>:contains</code></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><code>name (R4)</code></td>
			<td>Practitioner</td>
			<td>string</td>
			<td>Exact name match (case-sensitive)</td>
			<td><strong>Recommended:</strong> Search for practitioners by partial name matches</td>
		</tr>
		<tr>
			<td><code>regprof</code></td>
			<td>Practitioner</td>
			<td>string</td>
			<td>Exact profession match (case-sensitive)</td>
			<td><strong>Recommended:</strong> Search for partial profession matches</td>
		</tr>
		<tr>
			<td><code>locmailaddress</code></td>
			<td>Location</td>
			<td>string</td>
			<td>Not supported</td>
			<td>Search postal address components</td>
		</tr>
			<tr>
			<td><code>name (R4)</code></td>
			<td>Location</td>
			<td>string</td>
			<td></td>
			<td><strong>Recommended:</strong> Partial name/alias search on Locations</td>
		</tr>
	</tbody>
</table>

### Prefix Operators for Time Availability Searches

The <a href="SearchParameter-starttime.html">Start Time</a> and <a href="SearchParameter-endtime.html">End Time</a> search parameters support numeric prefix operators, allowing you to search for times before, after, or at a specific value. These parameters use a four-digit numeric format (<strong>HHMM</strong>, e.g., <code>0830</code> for 8:30am, <code>1700</code> for 5:00pm).

You can use the following prefixes to control the comparison:

<table class="grid">
	<thead>
		<tr>
			<th>Prefix</th>
			<th>Meaning</th>
			<th>Example</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><code>eq</code></td>
			<td>Equal</td>
			<td><code>eq0830</code></td>
			<td>Matches exactly 08:30am</td>
		</tr>
		<tr>
			<td><code>ne</code></td>
			<td>Not equal</td>
			<td><code>ne1700</code></td>
			<td>Matches any time except 5:00pm</td>
		</tr>
		<tr>
			<td><code>gt</code></td>
			<td>Greater than</td>
			<td><code>gt0900</code></td>
			<td>Matches times after 9:00am</td>
		</tr>
		<tr>
			<td><code>lt</code></td>
			<td>Less than</td>
			<td><code>lt1200</code></td>
			<td>Matches times before 12:00pm (noon)</td>
		</tr>
		<tr>
			<td><code>ge</code></td>
			<td>Greater than or equal</td>
			<td><code>ge0800</code></td>
			<td>Matches times at or after 8:00am</td>
		</tr>
		<tr>
			<td><code>le</code></td>
			<td>Less than or equal</td>
			<td><code>le1700</code></td>
			<td>Matches times at or before 5:00pm</td>
		</tr>
	</tbody>
</table>

For example, to find HealthcareServices available after 9:00am, search with <code>starttime=gt0900</code>.