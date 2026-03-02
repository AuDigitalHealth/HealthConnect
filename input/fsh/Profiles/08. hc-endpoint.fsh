Profile: HCEndpoint
Parent: Endpoint
Id: hc-endpoint
Title: "HC Endpoint"
Description: "This profile defines content for describing details of an endpoint."
* ^experimental = false
* ^status = #draft
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* . ^short = "Health Connect Endpoint"
* . ^definition = "Endpoint defined for use in Health Connect."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $au-receivingfacility named receiving-facility 0..1 and
    $au-receivingapplication named receiving-application 0..1 and
    $encryption-certificate-pem-x509 named data-encipherment-certificate 0..*
* extension[receiving-facility] MS
* extension[receiving-facility] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[receiving-facility] ^extension[=].extension[+].url = "code"
* extension[receiving-facility] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* extension[receiving-facility] ^extension[=].extension[+].url = "actor"
* extension[receiving-facility] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* extension[receiving-facility] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[receiving-facility] ^extension[=].extension[+].url = "code"
* extension[receiving-facility] ^extension[=].extension[=].valueCode = #SHOULD:handle
* extension[receiving-facility] ^extension[=].extension[+].url = "actor"
* extension[receiving-facility] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* extension[receiving-application] MS
* extension[receiving-application] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[receiving-application] ^extension[=].extension[+].url = "code"
* extension[receiving-application] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* extension[receiving-application] ^extension[=].extension[+].url = "actor"
* extension[receiving-application] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* extension[receiving-application] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[receiving-application] ^extension[=].extension[+].url = "code"
* extension[receiving-application] ^extension[=].extension[=].valueCode = #SHOULD:handle
* extension[receiving-application] ^extension[=].extension[+].url = "actor"
* extension[receiving-application] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* extension[data-encipherment-certificate] MS
* extension[data-encipherment-certificate] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[data-encipherment-certificate] ^extension[=].extension[+].url = "code"
* extension[data-encipherment-certificate] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* extension[data-encipherment-certificate] ^extension[=].extension[+].url = "actor"
* extension[data-encipherment-certificate] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* extension[data-encipherment-certificate] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* extension[data-encipherment-certificate] ^extension[=].extension[+].url = "code"
* extension[data-encipherment-certificate] ^extension[=].extension[=].valueCode = #SHOULD:handle
* extension[data-encipherment-certificate] ^extension[=].extension[+].url = "actor"
* extension[data-encipherment-certificate] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
    
* identifier 1..* MS
* identifier ^short = "Unique identifier of the endpoint record"
* identifier ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier ^extension[=].extension[+].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier ^extension[=].extension[+].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier contains HCSMDTargetIdentifier 0..* MS and HCEndpointIdentifier 1..1 MS 
* identifier[HCSMDTargetIdentifier] only HCSMDTargetIdentifier
* identifier[HCSMDTargetIdentifier] MS
* identifier[HCSMDTargetIdentifier] ^short = "SMD Target Identifier"
* identifier[HCSMDTargetIdentifier] ^definition = "Secure Messaging Delivery target identifier for this endpoint"
* identifier[HCSMDTargetIdentifier] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[+].url = "code"
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[+].url = "actor"
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier[HCSMDTargetIdentifier] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[+].url = "code"
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[+].url = "actor"
* identifier[HCSMDTargetIdentifier] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"
* identifier[HCEndpointIdentifier] only HCEndpointIdentifier
* identifier[HCEndpointIdentifier] MS
* identifier[HCEndpointIdentifier] ^short = "HC Endpoint Identifier attributed from source system"
* identifier[HCEndpointIdentifier] ^definition = "Unique identifier for the healthcare endpoint attributed from source system. Not a displayable field but can be used for system reference or internal business logic."
* identifier[HCEndpointIdentifier] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[HCEndpointIdentifier] ^extension[=].extension[+].url = "code"
* identifier[HCEndpointIdentifier] ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* identifier[HCEndpointIdentifier] ^extension[=].extension[+].url = "actor"
* identifier[HCEndpointIdentifier] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* identifier[HCEndpointIdentifier] ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier[HCEndpointIdentifier] ^extension[=].extension[+].url = "code"
* identifier[HCEndpointIdentifier] ^extension[=].extension[=].valueCode = #SHOULD:handle
* identifier[HCEndpointIdentifier] ^extension[=].extension[+].url = "actor"
* identifier[HCEndpointIdentifier] ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* connectionType 1..1 MS
* connectionType ^short = "Service interface type"
* connectionType ^definition = "Protocol/Profile/Standard the endpoint supports."
* connectionType from http://hl7.org.au/fhir/pd/ValueSet/service-interfaces (extensible)
* connectionType ^short = "To specify the service interface types"
* connectionType ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* connectionType ^extension[=].extension[+].url = "code"
* connectionType ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* connectionType ^extension[=].extension[+].url = "actor"
* connectionType ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* connectionType ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* connectionType ^extension[=].extension[+].url = "code"
* connectionType ^extension[=].extension[=].valueCode = #SHOULD:handle
* connectionType ^extension[=].extension[+].url = "actor"
* connectionType ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* name 0..1 MS
* name ^short = "To enable consistent and correct identification of the endpoint"
* name ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* name ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHOULD:handle
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* payloadType 1..* MS
* payloadType ^short = "Endpoint payload type"
* payloadType ^definition = "REndpoint payload types that need to be transmitted over secure messaging, e.g. Discharge Summary, e-Referral, referral response message, acknowledgment etc."
* payloadType from http://hl7.org.au/fhir/pd/ValueSet/endpoint-payload-type (extensible)
* payloadType ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* payloadType ^extension[=].extension[+].url = "code"
* payloadType ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* payloadType ^extension[=].extension[+].url = "actor"
* payloadType ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* payloadType ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* payloadType ^extension[=].extension[+].url = "code"
* payloadType ^extension[=].extension[=].valueCode = #SHOULD:handle
* payloadType ^extension[=].extension[+].url = "actor"
* payloadType ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* payloadMimeType 0..* MS
* payloadMimeType ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* payloadMimeType ^extension[=].extension[+].url = "code"
* payloadMimeType ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* payloadMimeType ^extension[=].extension[+].url = "actor"
* payloadMimeType ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* payloadMimeType ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* payloadMimeType ^extension[=].extension[+].url = "code"
* payloadMimeType ^extension[=].extension[=].valueCode = #SHOULD:handle
* payloadMimeType ^extension[=].extension[+].url = "actor"
* payloadMimeType ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"

* address 1..1 MS
* address ^short = "URL address of the endpoint"
* address ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address ^extension[=].extension[+].url = "code"
* address ^extension[=].extension[=].valueCode = #SHALL:populate-if-known
* address ^extension[=].extension[+].url = "actor"
* address ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/responder-actor-health-connect"
* address ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address ^extension[=].extension[+].url = "code"
* address ^extension[=].extension[=].valueCode = #SHOULD:handle
* address ^extension[=].extension[+].url = "actor"
* address ^extension[=].extension[=].valueCanonical = "http://digitalhealth.gov.au/fhir/hcpd/ActorDefinition/requester-actor-health-connect"