### HC Endpoint Identifier (HC-EPI)

The `HC-EPI` is the primary external identifier used to identify an `Endpoint` across Health Connect. Publishers SHOULD provide an authoritative external identifier when creating or updating an `Endpoint`. The `HC-EPI` is **mandatory** for `Endpoint` resources published in the Health Connect directory and is used as a primary reconciliation key for cross-system matching.

- `identifier.type`: fixed to `RI` (resource identifier).
- `identifier.value`: the external identifier value supplied by the publisher or assigning organisation.
- `identifier.system`: populate with a stable URI to support authoritative reconciliation.

Guidance:
- The combination of system and value MUST be globally unique within Health Connect and SHOULD be stable over the lifecycle of the endpoint.
- Use `identifier.system` to record a canonical URI when organisations have a stable namespace for their identifiers.
