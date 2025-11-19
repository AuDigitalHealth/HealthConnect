// Shared Days of Week Availability SearchParameter for both HealthcareService and PractitionerRole
// This parameter works on the common availableTime backbone element structure

Instance: availability-daysofweek
InstanceOf: SearchParameter
Usage: #definition
Title: "Days of Week Availability Search Parameter"
Description: "Search HealthcareServices or PractitionerRoles by days of week availability. Supports multiple days using OR logic."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/availability-daysofweek"
* name = "SearchParameterAvailabilityDaysOfWeek"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #availability-daysofweek
* base[0] = #HealthcareService
* base[1] = #PractitionerRole
* type = #token
* expression = "(HealthcareService.availableTime.daysOfWeek) | (PractitionerRole.availableTime.daysOfWeek)"
* target = #HealthcareService
* target = #PractitionerRole