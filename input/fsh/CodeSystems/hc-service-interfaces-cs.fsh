CodeSystem: HCServiceInterfaceCodeSystem
Id: hc-service-interfaces-cs
Title: "HC Australian Service Interfaces"
Description: "The Australian Secure Message Service Interfaces code system defines concepts that identify service interfaces for secure message delivery."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://ns.electronichealth.net.au/hc/CodeSystem/hc-service-interfaces-cs"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^valueSet = "http://ns.electronichealth.net.au/hc/ValueSet/hc-service-interfaces-vs"
* ^compositional = false
* ^versionNeeded = true
* ^content = #complete
* #http://ns.electronichealth.net.au/smd/intf/SealedImmediateMessageDelivery/TLS/2010 "Sealed Immediate Message Delivery" "Service interface for secure message delivery (immediate mode)"
* #http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010 "Sealed Message Delivery" "Service interface for secure message delivery (deferred mode)"
* #http://ns.electronichealth.net.au/smd/intf/SealedMessageRetrieval/TLS/2010 "Sealed Message Retrieval" "Service interface for secure message delivery (retrieval in deferred mode)"
* #http://ns.electronichealth.net.au/smd/intf/TransportResponseDelivery/TLS/2010 "Transport Response Delivery" "Service interface for secure message delivery (deliver acknowledgement)"
* #http://ns.electronichealth.net.au/smd/intf/TransportResponseRetrieval/TLS/2010 "Transport Response Retrieval" "Service interface for secure message delivery (retrieve acknowledgement)"