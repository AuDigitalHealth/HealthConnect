// Shared All Day Availability SearchParameter for both HealthcareService and PractitionerRole
// This parameter works on the common availableTime backbone element structure

Instance: availability-allday
InstanceOf: SearchParameter
Usage: #definition
Title: "All Day Availability Search Parameter"
Description: "Search HealthcareServices or PractitionerRoles by whether they are available all day."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/availability-allday"
* name = "SearchParameterAvailabilityAllDay"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #availability-allday
* base[0] = #HealthcareService
* base[1] = #PractitionerRole
* type = #token
* expression = "HealthcareService.availableTime.allDay | PractitionerRole.availableTime.allDay"
* target = #HealthcareService
* target = #PractitionerRole