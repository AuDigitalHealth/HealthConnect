CodeSystem: AustralianEndpointPayloadTypesCodeSystem
Id: hc-endpoint-payload-type-cs
Title: "HC Australian Endpoint Payload Types"
Description: "The Endpoint Payload Types code system defines concepts that identify well known endpoint payload types."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://ns.electronichealth.net.au/hc/CodeSystem/hc-endpoint-payload-type-cs"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^valueSet = "http://ns.electronichealth.net.au/hc/ValueSet/hc-endpoint-payload-type-vs"
* ^compositional = false
* ^versionNeeded = true
* ^content = #complete
* ^count = 13
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706 "HL7 V2.4 REF message (Level 2)" "Simplified profile on HL7 V2.4 REF message Level 2 profile (HL7AUSD-STD-OO-ADRM-2018.1 Australian Diagnostics and Referral Messaging - Localisation of HL7 Version 2.4)"
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706-L1 "HL7 V2.4 REF message (Level 1)" "Simplified profile on HL7 V2.4 REF message Level 1 profile (HL7AUSD-STD-OO-ADRM-2018.1 Australian Diagnostics and Referral Messaging - Localisation of HL7 Version 2.4)"
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706/RRI "HL7 V2.4 RRI message" "Profile of referral response for the simplified profile for HL7 v2.4 REF message"
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-ORU-201701 "HL7 V2.4 ORU message" "Profile on HL7 V2.4 ORU report message (HL7AUSD-STD-OO-ADRM-2018.1) Australian Diagnostics and Referral Messaging - Localisation of HL7 Version 2.4)"
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-ORM-201701 "HL7 V2.4 ORM message" "Profile on HL7 V2.4 ORM order message (HL7AUSD-STD-OO-ADRM-2018.1) Australian Diagnostics and Referral Messaging - Localisation of HL7 Version 2.4)"
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-ORR-201701 "HL7 V2.4 ORR message" "Profile on HL7 V2.4 ORR order response message (HL7AUSD-STD-OO-ADRM-2018.1) Australian Diagnostics and Referral Messaging - Localisation of HL7 Version 2.4)"
* #http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-ACK-201701 "HL7 V2.4 ACK message" "Profile on HL7 V2.4 ACK general acknowledgement message (HL7AUSD-STD-OO-ADRM-2018.1) Australian Diagnostics and Referral Messaging - Localisation of HL7 Version 2.4)"
* #http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012 "HL7 V2.3.1 Acknowledgement" "Profile for ACK"
* #http://ns.electronichealth.net.au/ds/sc/deliver/hl7Mdm/2012 "HL7 V2.3.1 MDM Discharge Summary" "Discharge Summary CDA contained in MDM message"
* #http://ns.electronichealth.net.au/er/sc/deliver/hl7Mdm/2012 "HL7 V2.3.1 MDM eReferral" "eReferral CDA contained in MDM message"
* #http://ns.electronichealth.net.au/es/sc/deliver/hl7Mdm/2012 "HL7 V2.3.1 MDM Event Summary" "Event Summary CDA contained in MDM message"
* #http://ns.electronichealth.net.au/shs/sc/deliver/hl7Mdm/2012 "HL7 V2.3.1 MDM Shared Health Summary" "Shared Health Summary CDA contained in MDM message"
* #http://ns.electronichealth.net.au/sl/sc/deliver/hl7Mdm/2012 "HL7 V2.3.1 MDM Specialist Letter" "Specialist Letter CDA contained in MDM message"