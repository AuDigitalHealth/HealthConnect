// Shared Start Time Availability SearchParameter for both HealthcareService and PractitionerRole
// This parameter works on the common availableTime backbone element structure

Instance: availability-starttime
InstanceOf: SearchParameter
Usage: #definition
Title: "Availability Start Time Search Parameter"
Description: "Search HealthcareServices or PractitionerRoles by availability start time."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/availability-starttime"
* name = "SearchParameterAvailabilityStartTime"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #availability-starttime
* base[0] = #HealthcareService
* base[1] = #PractitionerRole
* type = #string
* expression = "HealthcareService.availableTime.availableStartTime | PractitionerRole.availableTime.availableStartTime"