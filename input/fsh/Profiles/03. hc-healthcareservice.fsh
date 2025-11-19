Profile: HCHealthcareService
Parent: AUCoreHealthcareService
Id: hc-healthcareservice
Title: "HC HealthcareService"
Description: "This profile of HealthcareService represents a particular type of health or health related service offered by a healthcare organisation at a particular location i.e. a practice, clinic, facility, or hospital. The authoritative source for healthcare services is the healthcare provider organisation that provides the service(s)."
* ^status = #draft
* ^experimental = false
* . ^definition = "Health Connect entry for a healthcare service at a location by an organisation."

* extension contains HcIarLevelsOfCareExtension named hc-iar-levels-of-care 0..* MS
* extension contains HCAcceptNewPatient named hc-accept-new-patient 0..1 MS
* extension[hc-accept-new-patient] ^short = "Indicates if Healthcare service is accepting new patients"
* extension[hc-accept-new-patient] ^definition = "Indicates if Healthcare service is accepting new patients. A value of True means the service is accepting new patients."
* extension contains HcReferralInformationForReferrer named hc-referral-information-for-referrer 0..1 MS
* extension[hc-referral-information-for-referrer] ^short = "Referral information for referrers"
* extension[hc-referral-information-for-referrer] ^definition = "Information for referrers about referral requirements for this healthcare service."

* providedBy 1.. MS
* providedBy only Reference(HCOrganization)
* providedBy ^short = "Providing organisation"

* type 1..
* type MS
* type from $service-type-1 (required)
* type ^short = "A high-level descriptor describing the type of healthcare service(s) offered by the organisation"
* type.coding 1..* MS
* type.coding ^short = "Describes the service(s) offered. At least one coding is required"
* type.coding.code 1..1 MS
* type.coding.code ^short = "The healthcare service type code from SNOMED-CT-AU"
* type.coding.display 1..1 MS
* type.coding.display ^short = "The display name of the healthcare service type from SNOMED-CT-AU"

* location 1..1 MS
* location only Reference(HCLocation)
* location ^short = "Single location for this service"
* location ^definition = "The location where this healthcare service may be provided."

* comment 0..1 MS
* comment ^short = "Additional description and/or any specific information about the healthcare service, not covered elsewhere"
* comment ^definition = "Additional details, that the service provider can add for their directory listing, as a free text, that is not covered by other available data elements."

* telecom MS
* telecom ^short = "Phone number, fax number, email"

* coverageArea MS
* coverageArea ^short = "The location(s) that this healthcare service is available to"
* coverageArea only Reference(HCServiceCoverageArea)

* serviceProvisionCode 0..* MS
* serviceProvisionCode from HCServiceProvisionCodeValueSet (required)

* communication 0..* MS
* communication ^short = "The languages that this healthcare service is offered in"
* communication ^definition = "Including the languages that the service is offered in, will help assist the requester / searcher in making informed decision and choose the service that meet their requirement when seeking healthcare service."

* appointmentRequired 0..1 MS
* appointmentRequired ^short = "Whether an appointment is required for this service"
* appointmentRequired ^definition = "Whether an appointment is required for this service, or walk-in accepted – Yes or No (Null value represent ‘no data available’)."

* availableTime MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableStartTime.extension[timeZone] ^sliceName = "timeZone"
* availableTime.availableStartTime.extension[timeZone] ^short = "The date on which an organisation commences offering a service"
* availableTime.availableEndTime MS
* availableTime.availableEndTime.extension[timeZone] ^sliceName = "timeZone"
* availableTime.availableEndTime.extension[timeZone] ^short = "The date on which an organisation ceases to offer a service"

* notAvailable MS

* eligibility 0..* MS
* eligibility.code
* eligibility.code from http://ns.electronichealth.net.au/hc/ValueSet/hc-service-eligibility-vs (required)
* eligibility.code ^short = "Eligibility requirements for the healthcare service."
* eligibility.code ^definition = "Eligibility requirements for the healthcare service, bound to the HealthConnect Service Eligibility ValueSet."
* extension contains http://ns.electronichealth.net.au/hc/StructureDefinition/hc-active-period named hcActivePeriod 1..1 MS
* extension[hcActivePeriod] ^short = "The period during which the HealthcareService is active."
* extension[hcActivePeriod] ^definition = "The time period during which the HealthcareService is considered active in the HealthConnect directory."
* notAvailable.during ^short = "Date range that the service is not available - can be open-ended if service is closing"
* notAvailable.during ^definition = "Date range that the service is not available - can be open-ended if service is closing."

* endpoint 0..1 MS
* endpoint only Reference(HCEndpoint)
* endpoint ^short = "Reference to all linked endpoints that are related to this healthcare service for electronic communication or exchange"
* endpoint ^definition = "This will provide the linked endpoints that are related to this healthcare service, that can be discovered by other organisations for system-to-system electronic communication."

