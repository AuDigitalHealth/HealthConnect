// Shared Languages SearchParameter for both HealthcareService and PractitionerRole
// This parameter works on communication elements across both resource types

Instance: languages
InstanceOf: SearchParameter
Usage: #definition
Title: "Languages Search Parameter"
Description: "Search HealthcareServices or PractitionerRoles by supported languages/communication methods. Shared across HealthcareService and PractitionerRole."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/languages"
* name = "SearchParameterLanguages"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* contact.telecom.system = #email
* contact.telecom.value = "help@digitalhealth.gov.au"
* code = #languages
* base[0] = #HealthcareService
* base[1] = #PractitionerRole
* type = #string
* expression = "HealthcareService.communication.coding.display | PractitionerRole.extension.where(url='http://ns.electronichealth.net.au/hc/StructureDefinition/hc-practitioner-role-communication').value.ofType(CodeableConcept).coding.display"
* target = #HealthcareService
* target = #PractitionerRole