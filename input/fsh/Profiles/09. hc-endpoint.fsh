Profile: HCEndpoint
Parent: Endpoint
Id: hc-endpoint
Title: "HC Endpoint"
Description: "This profile defines content for describing details of an endpoint."
* ^status = #draft
* . ^short = "Health Connect Endpoint"
* . ^definition = "Endpoint defined for use in Health Connect."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $au-receivingfacility named receivingFacility 0..1 and
    $au-receivingapplication named receivingApplication 0..1 and
    $encryption-certificate-pem-x509 named dataEnciphermentCertificate 0..*
    
* identifier 2..* MS
* identifier ^short = "Unique identifier of the endpoint record"
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier contains HCSMDTargetIdentifier 0..* MS and HCEndpointIdentifier 1..1 MS
* identifier[HCSMDTargetIdentifier] only HCSMDTargetIdentifier
* identifier[HCSMDTargetIdentifier] ^short = "SMD Target Identifier"
* identifier[HCSMDTargetIdentifier] ^definition = "Secure Messaging Delivery target identifier for this endpoint"
* identifier[HCEndpointIdentifier] only HCEndpointIdentifier
* identifier[HCEndpointIdentifier] ^short = "HC Endpoint Identifier attributed from source system"
* identifier[HCEndpointIdentifier] ^definition = "Unique identifier for the healthcare endpoint attributed from source system. Not a displayable field but can be used for system reference or internal business logic."

* connectionType 1..1 MS
* connectionType ^short = "Service interface type"
* connectionType ^definition = "Protocol/Profile/Standard the endpoint supports."
* connectionType from HCServiceInterfacesValueSet (extensible)
* connectionType ^short = "To specify the service interface types"

* name 0..1 MS
* name ^short = "To enable consistent and correct identification of the endpoint"

* payloadType 1..* MS
* payloadType ^short = "Endpoint payload type"
* payloadType ^definition = "REndpoint payload types that need to be transmitted over secure messaging, e.g. Discharge Summary, e-Referral, referral response message, acknowledgment etc."
* payloadType from AustralianEndpointPayloadTypesValueSet (extensible)
* payloadMimeType 0..* MS
* address 1..1 MS
* address ^short = "URL address of the endpoint"