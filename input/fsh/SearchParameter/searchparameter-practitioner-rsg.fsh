Instance: practitioner-rsg
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner's Recorded Sex or Gender Search Parameter"
Description: "Search a Practitioner record by their recorded sex or gender."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/practitioner-rsg"
* name = "SearchParameterPractitionerRSG"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #rsg
* base = #Practitioner
* type = #token
* expression = "Practitioner.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension.where(url = 'value').value.ofType(CodeableConcept).coding"
* target = #Practitioner