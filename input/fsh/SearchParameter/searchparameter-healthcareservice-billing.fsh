Instance: healthcareservice-billing
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService Billing Search Parameter"
Description: "Search for HealthcareService resources by billing information."
* url = "http://ns.electronichealth.net.au/hc/SearchParameter/healthcareservice-billing"
* name = "SearchParameterHealthcareServiceBilling"
* status = #draft
* experimental = true
* publisher = "Australian Digital Health Agency"
* code = #hsbilling
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.serviceProvisionCode"
* target = #HealthcareService