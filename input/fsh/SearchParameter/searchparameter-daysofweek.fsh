// Shared Days of Week SearchParameter for both HealthcareService and PractitionerRole
// This parameter works on the common availableTime backbone element structure

Instance: daysofweek
InstanceOf: SearchParameter
Usage: #definition
Title: "Days of Week Search Parameter"
Description: "Search HealthcareServices or PractitionerRoles by days of week availability. Supports multiple days using OR logic."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/daysofweek"
* name = "SearchParameterDaysOfWeek"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #daysofweek
* base[0] = #HealthcareService
* base[1] = #PractitionerRole
* type = #token
* expression = "(HealthcareService.availableTime.daysOfWeek) | (PractitionerRole.availableTime.daysOfWeek)"
* target = #HealthcareService
* target = #PractitionerRole
