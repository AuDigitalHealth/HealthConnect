### HC Location Identifier (HC-LI)

The `HC-LI` is the primary external identifier assigned by a publisher to a `Location` for identification and integration with Health Connect. It is **mandatory** for all `Location` resources published in the Health Connect directory.

- `identifier.type`: fixed to `RI` (resource identifier).
- `identifier.value`: the identifier value defined by the assigning organisation.
- `identifier.system`: populate when a stable URI; include these to support authoritative reconciliation.

Guidance:
- The combination of system and value MUST be globally unique within Health Connect and SHOULD be stable over the lifecycle of the endpoint.
- Use `identifier.system` to record a canonical URI when organisations have a stable namespace for their identifiers.