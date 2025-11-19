Profile: HCEndpointIdentifier
Parent: Identifier
Id: hc-endpoint-identifier
Title: "HC Endpoint Identifier (HC-EPI)"
Description: "This identifier profile defines a unique identifier allocated to a healthcare endpoint, in a Health Connect provider directory context."
* ^status = #draft
* type 1..1
* type = $v2-0203-int#RI
* type ^short = "Coded identifier type for end point identifier"
* system 1..1
* . ^short = "HC Endpoint Identifier system."
* . ^definition = "Assigning system of the HC Endpoint Identifier."
* value 1..1
* value ^short = "HC Endpoint Identifier value."
* value ^definition = "Value of the HC Endpoint Identifier assigned by a publishing system."
* value ^example.label = "HC Endpoint ID"
* value ^example.valueString = "1234567890"