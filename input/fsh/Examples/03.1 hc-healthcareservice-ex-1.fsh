Instance: example-healthconnect-healthcareservice-1
InstanceOf: hc-healthcareservice
Usage: #example
Title: "HC HealthcareService Example: Residential Aged Care"
Description: "A Residential Aged Care HealthcareService example conforming to the HC HealthcareService profile."

* meta.lastUpdated = "2025-09-02T18:00:00Z"

* providedBy = Reference(Organization/example-healthconnect-organization-1)
* type = http://snomed.info/sct#1584801000168109 "Geriatric evaluation and management service"
* location = Reference(Location/example-healthconnect-medical-centre-location-1)
* extension[0].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-active-period"
* extension[0].valuePeriod.start = "2022-01-01"
* extension[0].valuePeriod.end = "2025-12-31"
* name = "Healthcare service with Residential Aged Care service type"
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* coverageArea.reference = "Location/example-healthconnect-mobile-unit-coverage-area-1"
* endpoint.reference = "Endpoint/example-hc-endpoint-smd"
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableStartTime.extension[timeZone].valueCode = #Australia/Sydney
* availableTime.availableEndTime = "17:30:00"
* availableTime.availableEndTime.extension[timeZone].valueCode = #Australia/Sydney
* extension[1].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-referral-information-for-referrer"
* extension[1].valueMarkdown = """
**Referral required** from a GP or specialist.

Please include:
- Recent medical history
- Current medications

Referrals can be faxed to **(02) 1234 5679**.
"""
* extension[2].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/iar-levels-of-care"
* extension[2].valueCodeableConcept = http://ns.electronichealth.net.au/hc/CodeSystem/iar-levels-of-care#3 "Level 3 (moderate intensity interventions)"
* extension[3].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-accept-new-patient"
* extension[3].valueBoolean = true

* eligibility.code = $sct#933451001000036104 "Older adult 65+ years"

* communication[+] = urn:ietf:bcp:47#it "Italian"
* communication[+] = urn:ietf:bcp:47#zh "Chinese"

* serviceProvisionCode[0] = http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#FAP "Fees apply"
* serviceProvisionCode[+] = http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#NFE "No fee"
