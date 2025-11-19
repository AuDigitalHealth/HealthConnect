Extension: HcPractitionerRoleCommunication
Id: hc-practitioner-role-communication
Title: "HC Practitioner Role Communication"
Description: "Health Connect Practitioner Role Communication. This extension captures communication preferences and capabilities for a practitioner in a given role."
Context: PractitionerRole
* ^publisher = "Australian Digital Health Agency"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved."
* . ^short = "Practitioner role communication preferences"
* . ^definition = "This extension applies to PractitionerRole, and represents a language the practitioner can use in patient communication when acting in a role at a HealthcareService."
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner-role-communication"
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from $common-languages-australia-2 (required)