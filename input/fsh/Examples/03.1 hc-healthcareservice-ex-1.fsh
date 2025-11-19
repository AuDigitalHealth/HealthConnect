Instance: example-healthconnect-healthcareservice-1
InstanceOf: hc-healthcareservice
Usage: #example
Title: "Health Connect - HealthcareService example"
Description: "An example of a HealthcareService with Medicare provider number that conforms [Health Connect HealthcareService - HealthcareService](StructureDefinition-hc-healthcareservice.html) profile."

* meta.lastUpdated = "2025-09-02T18:00:00Z"

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>Healthcare Service: Residential Aged Care</b></p><p>This healthcare service provides aged care residential respite high care services. The service is available Monday to Friday from 8:00 AM to 5:30 PM and supports Italian and Chinese languages. Referrals are required from a GP or specialist.</p></div>"

* providedBy = Reference(Organization/example-healthconnect-organization-1)
* type = http://snomed.info/sct#1578721000168109 "Aboriginal and Torres Strait Islander family wellbeing and violence prevention service"
* location = Reference(Location/example-healthconnect-Physical-location-with-wheelchair-access-1)
* extension[0].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-active-period"
* extension[0].valuePeriod.start = "2022-01-01"
* extension[0].valuePeriod.end = "2025-12-31"
* name = "Healthcare service with Residential Aged Care service type"
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* coverageArea.reference = "Location/example-healthconnect-Location-service-coverage-area"
* endpoint.reference = "Endpoint/example-hc-endpoint-smd"
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "17:30:00"
* extension[1].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-referral-information-for-referrer"
* extension[1].valueMarkdown = """
**Referral required** from a GP or specialist.

Please include:
- Recent medical history
- Current medications

Referrals can be faxed to **(02) 1234 5679**.
"""
* extension[2].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-iar-levels-of-care"
* extension[2].valueCodeableConcept = http://ns.electronichealth.net.au/hc/CodeSystem/hc-iar-levels-of-care#3 "Level 3 (moderate intensity interventions)"
* extension[3].url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-accept-new-patient"
* extension[3].valueBoolean = true

* eligibility.code = http://ns.electronichealth.net.au/hc/CodeSystem/hc-service-eligibility-cs#adult65Plus "Older Adult 65+ years"

* communication[+] = urn:ietf:bcp:47#it "Italian"
* communication[+] = urn:ietf:bcp:47#zh "Chinese"

* serviceProvisionCode[0] = http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#FAP "Fees apply"
* serviceProvisionCode[+] = http://terminology.hl7.org.au/CodeSystem/service-provision-conditions#NFE "No fee"
