// Shared End Time Availability SearchParameter for both HealthcareService and PractitionerRole
// This parameter works on the common availableTime backbone element structure

Instance: availability-endtime
InstanceOf: SearchParameter
Usage: #definition
Title: "Availability End Time Search Parameter"
Description: "Search HealthcareServices or PractitionerRoles by availability end time."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/availability-endtime"
* name = "SearchParameterAvailabilityEndTime"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #availability-endtime
* base[0] = #HealthcareService
* base[1] = #PractitionerRole
* type = #string
* expression = "HealthcareService.availableTime.availableEndTime | PractitionerRole.availableTime.availableEndTime"