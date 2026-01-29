Instance: health-connect-provider-directory-responder
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Health Connect Provider Directory Responder"
Description: "This CapabilityStatement resource defines the expected capabilities of the [Health Connect Provider Directory Responder Actor](ActorDefinition-responder-actor-health-connect.html) when conforming to this implementation guide. The listed FHIR profiles, RESTful operations, and search parameters describe only those capabilities exposed for responding to Requester Actor requests. The Health Connect Provider Directory Responder supports additional internal and publishing operations that are not shown here; these are out of scope for this IG and are documented separately for publishing systems. The requirements of the Health Connect Provider Directory Responder may also be impacted by the rules of local jurisdictions or other contextual requirements."

* name = "HealthConnectProviderDirectoryResponder"
* url = "http://ns.electronichealth.net.au/hc/CapabilityStatement/health-connect-provider-directory-responder"
* status = #draft
* date = "2025-11-27"
* kind = #instance
* fhirVersion = #4.0.1

* implementation.description = "Health Connect Provider Directory Responder FHIR Server"
* implementation.url = "http://ns.electronichealth.net.au/hc"

* format[0] = #json
* format[+] = #xml
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* publisher = "Australian Digital Health Agency"
* contact[0].telecom.system = #email
* contact[0].telecom.value = "help@digitalhealth.gov.au"

* rest.mode = #server
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth "OAuth"
* rest.security.description = "All interactions SHALL be secured using OAuth protocols. It SHALL support authentication, authorisation, and audit logging in accordance with local policy and regulatory requirements."

// Add HCProvenance resource
* rest.resource[+].type = #Provenance
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-provenance"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "HC Provenance resources track the lineage of data retrieved, updated, or verified from external systems of record."

// Provenance interactions - server capabilities
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[=].documentation = "Read HC Provenance records"
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[=].documentation = "Search HC Provenance records by various parameters"

* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].searchInclude[0] = "Provenance:target"
* rest.resource[=].searchParam[0].name = "target"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Provenance-target"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL

// Organization
* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-organization"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "This section defines the supported interactions for the [HC Organization](StructureDefinition-hc-organization.html) profile of the Organization resource type."
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].searchInclude[0] = "Organization:partOf"
* rest.resource[=].searchRevInclude[0] = "Location:organization"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "name" 
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL

// Location
* rest.resource[+].type = #Location
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-location"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "This section describes the supported interactions for the [HC Location](StructureDefinition-hc-location.html) profile. Each Location resource conforming to this profile identifies a physical or virtual place associated with healthcare services in the Health Connect Provider Directory, enabling clients to discover, filter, and reference service delivery sites."
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].searchInclude[0] = "Location:organization"
* rest.resource[=].searchInclude[+] = "Location:endpoint"
* rest.resource[=].searchRevInclude[0] = "HealthcareService:location"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"
* rest.resource[=].searchParam[0].name = "locmailaddress"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/location-locmailaddress"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "locationamenities"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/location-amenities"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "locationphysicaltype"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/location-physicaltype"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "near"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL

// HealthcareService
* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-healthcareservice"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "This section describes the supported interactions for the [HC Healthcare Service](StructureDefinition-hc-healthcareservice.html) profile. Each HealthcareService resource conforming to this profile identifies a healthcare service in the Health Connect Provider Directory, enabling clients to discover, filter, and reference healthcare services that are provided."
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].searchInclude[0] = "HealthcareService:location"
* rest.resource[=].searchInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchInclude[+] = "HealthcareService:endpoint"
* rest.resource[=].searchInclude[+] = "HealthcareService:organization"
* rest.resource[=].searchRevInclude[0] = "PractitionerRole:service"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"
* rest.resource[=].searchParam[+].name = "languages"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/languages"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "hsbilling"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/healthcareservice-billing"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "allday"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/allday"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "daysofweek"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/daysofweek"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "starttime"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/starttime"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "endtime"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/endtime"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL

// PractitionerRole
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitionerrole"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "This section defines the supported interactions for the [HC Practitioner Role](StructureDefinition-hc-practitionerrole.html) profile of the PractitionerRole resource type. Each PractitionerRole resource conforming to the [HC Practitioner Role](StructureDefinition-hc-practitionerrole.html) profile describes a practitioner in a role at a healthcare service."
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].searchInclude[0] = "PractitionerRole:practitioner"
* rest.resource[=].searchInclude[+] = "PractitionerRole:service"
* rest.resource[=].searchInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchInclude[+] = "PractitionerRole:location"
* rest.resource[=].searchInclude[+] = "PractitionerRole:endpoint"
* rest.resource[=].searchRevInclude[0] = "Provenance:target"
* rest.resource[=].searchParam[0].name = "languages"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/languages"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "allday"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/allday"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "daysofweek"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/daysofweek"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "starttime"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/starttime"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "endtime"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/endtime"
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL

// Practitioner
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "This section describes the supported interactions for the [HC Practitioner](StructureDefinition-hc-practitioner.html) profile. Each Practitioner resource conforming to this profile represents an individual healthcare provider registered in the Health Connect Provider Directory, enabling clients to search, identify, and reference practitioners and their associated roles and service locations."
* rest.resource[=].interaction.code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].searchRevInclude[0] = "PractitionerRole:practitioner"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "regprof"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/practitioner-regprof"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "rsg"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/practitioner-rsg"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "genderIdentity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org.au/fhir/SearchParameter/gender-identity"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier-r5"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/practitioner-identifier-r5"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL

// Endpoint
* rest.resource[+].type = #Endpoint
* rest.resource[=].profile = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-endpoint"
* rest.resource[=].profile.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].profile.extension[=].valueCode = #SHALL
* rest.resource[=].documentation = "This section describes the supported interactions for the [HC Endpoint](StructureDefinition-hc-endpoint.html) profile. Each Endpoint resource conforming to this profile provides connection details for electronic services available through the Health Connect Provider Directory, allowing clients to discover and interact with service endpoints in a standardised way."
* rest.resource[=].interaction.code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].searchRevInclude[0] = "HealthcareService:endpoint"
* rest.resource[=].searchRevInclude[+] = "Location:endpoint"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:endpoint"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"
* rest.resource[=].searchParam[0].name = "epurl"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/endpoint-url"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "payloadmimetype"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/endpoint-payloadmimetype"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "hcepi"
* rest.resource[=].searchParam[=].definition = "http://ns.electronichealth.net.au/hc/SearchParameter/endpoint-hcepi"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "connection-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-connection-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "payload-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-payload-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension[=].valueCode = #SHALL