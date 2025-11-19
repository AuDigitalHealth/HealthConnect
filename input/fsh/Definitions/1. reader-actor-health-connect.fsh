Instance: reader-actor-health-connect
InstanceOf: ActorDefinition
Title: "Health Connect Reader Actor"
Usage: #definition
Description: "The Health Connect Reader actor represents a system that is requesting an **Health Connect Directory details** for a particular practitioner from the 
Health Connect system."

* name = "ReaderActorHealthConnect"
* status = #draft
* type = http://hl7.org/fhir/examplescenario-actor-type#system
* documentation = """
- **SHALL** implement the [mandatory](conformance.html) requirements for the elements defined as such in this implementation guide.
- **SHALL** implement the required REST API interactions and search parameters as defined in the HealthConnect Reader Capability Statement.
"""

* capabilities = "http://ns.electronichealth.net.au/hc/CapabilityStatement/health-connect-reader"