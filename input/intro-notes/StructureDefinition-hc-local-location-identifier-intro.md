### Local Identifier utilisation in Health Connect

The HC Local Location Identifier (HC-LLI) is a local identifier assigned by Health Connect to [`Location`](StructureDefinition-hc-location.html) instances for internal identification and management purposes. This identifier is:

- Used by organizations for internal business processes, cross-referencing with local systems, and maintaining operational continuity during data migrations.
- Assigned and managed by Health Connect; publishers SHOULD respect HC-LLI values and NOT assign directly.
- Used to facilitate integration between Health Connect's internal systems and to support audit, routing and operational workflows.

The identifier type and system are fixed to:

`XX` (Organization identifier) and `http://ns.electronichealth.net.au/hc/id/hc-local-location-identifier` respectively. 

This is to ensure consistent interpretation between local and externally attributed identifiers across systems. 