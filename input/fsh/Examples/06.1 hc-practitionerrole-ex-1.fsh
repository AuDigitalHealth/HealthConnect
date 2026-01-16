Instance: example-healthconnect-practitionerrole-1
InstanceOf: HCPractitionerRole
Usage: #example
Title: "HC PractitionerRole Example: Medicare Provider"
Description: "An example PractitionerRole (Medicare) that conforms to the HC PractitionerRole profile."

* meta.lastUpdated = "2025-09-03T01:23:45Z"

// Ensure identifiers have unique types, e.g. Medicare:
* identifier[medicareProvider].type = $v2-0203-au#UPIN "Medicare Provider Number"
* identifier[medicareProvider].system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
* identifier[medicareProvider].value = "2426621B"

// Ahpra Registration Number - must match the referenced Practitioner's Ahpra registration
* identifier[ahpraregistrationnumber].system = "http://hl7.org.au/id/ahpra-registration-number"
* identifier[ahpraregistrationnumber].value = "MED0000932945"

* code = $sct#61207006 "Medical pathologist"

* period.start = "2023-01-01"
* practitioner = Reference(Practitioner/example-healthconnect-practitioner-1)
* organization = Reference(Organization/example-healthconnect-organization-1)
* telecom.system = #phone
* telecom.value = "0255507777"
* telecom.use = #work
* availableTime[0].daysOfWeek = #mon
* availableTime[0].allDay = false
* availableTime[0].availableStartTime = "10:00:00"
* availableTime[0].availableStartTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[0].availableEndTime = "17:00:00"
* availableTime[0].availableEndTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[1].daysOfWeek = #tue
* availableTime[1].allDay = false
* availableTime[1].availableStartTime = "09:00:00"
* availableTime[1].availableStartTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[1].availableEndTime = "17:00:00"
* availableTime[1].availableEndTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[2].daysOfWeek = #wed
* availableTime[2].allDay = false
* availableTime[2].availableStartTime = "07:00:00"
* availableTime[2].availableStartTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[2].availableEndTime = "13:00:00"
* availableTime[2].availableEndTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[3].daysOfWeek = #thu
* availableTime[3].allDay = false
* availableTime[3].availableStartTime = "09:00:00"
* availableTime[3].availableStartTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[3].availableEndTime = "17:00:00"
* availableTime[3].availableEndTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[4].daysOfWeek = #fri
* availableTime[4].allDay = false
* availableTime[4].availableStartTime = "10:00:00"
* availableTime[4].availableStartTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime[4].availableEndTime = "16:00:00"
* availableTime[4].availableEndTime.extension[timeZone].valueCode = #Australia/Sydney
* location = Reference(Location/example-healthconnect-medical-centre-location-1)
* healthcareService = Reference(HealthcareService/example-healthconnect-healthcareservice-1)

* extension[HcPractitionerRoleCommunication].valueCodeableConcept.coding[+].system = "urn:ietf:bcp:47"
* extension[HcPractitionerRoleCommunication].valueCodeableConcept.coding[=].code = #it
* extension[HcPractitionerRoleCommunication].valueCodeableConcept.coding[=].display = "Italian"
* extension[hc-preferred-name].valueHumanName.use = #usual
* extension[hc-preferred-name].valueHumanName.family = "Smith"
* extension[hc-preferred-name].valueHumanName.given = "Dr. Alex"
* extension[hc-preferred-name].valueHumanName.prefix = "Dr"