### Overview

This page describes the option to delete an Asynchronous Bulk Data Export request.

<div style="padding: 1em; border-top: 1px solid #ddd;">
  <figure>
    {% include AsyncBatchExportActivityDiagramDelete.svg %}
  </figure>
</div>

Deleting requests has 3 key components:

1. Preconditions
2. Request to server
3. Responses from server

### Preconditions

The following preconditions, as documented in the [status polling function](BatchRequestStatus.html), **SHALL** be met before deleting a bulk data export request:

1. The client must have received a `202 Accepted` response from the initial batch request submission

### Request to server

After a successful request has been made to the server, a client MAY send a http `DELETE` request to the URL provided in the `Content-Location` header to cancel the request.

#### Example request

Request HTTP header

```
DELETE [base]/$export-poll-status?_jobId=a5a60ba8-5bdc-4d2d-a7ef-13f905205b01
```

Request HTTP body: absent

### Responses from server

#### Success response

The server responds with a `202 Accepted` status code.

Response HTTP header

```
HTTP/1.1 202 Accepted
```

Response HTTP body: absent

Subsequent polls to this URL MUST return `404 Not Found`.

#### Error response

If the server rejects the request, it returns:
* a `400 Bad Request` error
* a FHIR OperationOutcome resource identifying the issue

**Example Error Response:**
```
HTTP/1.1 400 Bad Request
```

```json
{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "invalid",
      "diagnostics": "Endpoint artefact not found for the provided job ID."
    }
  ]
}
```

