Extension: HcPreferredName
Id: hc-preferred-name
Title: "HC Preferred Name"
Description: "This extension applies to PractitionerRole, and represents a name by which a practitioner chooses to be known in the context of the delivery of a specific healthcare service."
Context: PractitionerRole
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-name"
* . ^short = "Preferred name for practitioner in role context"
* . ^definition = "A name by which a practitioner chooses to be known in the context of the delivery of a specific healthcare service. This may differ from their registered legal name."
* value[x] 1..1
* value[x] only HumanName
* valueHumanName ^short = "Preferred name"
* valueHumanName ^definition = "The preferred name by which the practitioner wishes to be known in this role context."
* valueHumanName.use MS
* valueHumanName.use ^short = "Preferred name use"
* valueHumanName.use ^definition = "The use of this preferred name (usual, temp, etc.)"
* valueHumanName.family MS
* valueHumanName.family ^short = "Preferred family name"
* valueHumanName.given MS
* valueHumanName.given ^short = "Preferred given name(s)"
* valueHumanName.prefix MS
* valueHumanName.prefix ^short = "Preferred name prefix (title)"