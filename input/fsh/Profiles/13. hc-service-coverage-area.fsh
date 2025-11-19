Invariant: hc-postal-code-4-digits
Description: "If present, postalCode shall be 4 digits"
Expression: "address.postalCode.matches('^[0-9]{4}$')"
Severity: #error

Profile: HCServiceCoverageArea
Parent: AUCoreLocation
Id: hc-service-coverage-area
Title: "HC Service Coverage Area"
Description: "This profile of Location represents an Australian geographic coverage area i.e. postcodes where this service is provided.
For a healthcare service, that is provided through a physical location but have eligibility restrictions applicable in terms of only residents for certain postcodes/suburbs can receive this service, then the details of coverage area and eligibility should be provided here."
* ^status = #draft
* ^publisher = "Australian Digital Health Agency"
* ^contact[+].telecom.system = #email
* ^contact[=].telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."

* . ^short = "Australian geographic area in which a service is available."

* obeys hc-postal-code-4-digits

* address 1..1 MS
* address ^short = "The address that defines the coverage area where the service is available"

* address.city MS
* address.city ^short = "Australian city, town or suburb"
* address.city ^definition = "An Australian city, town or suburb where the service is available."

* address.state MS
* address.state ^short = "Australian state or territory"
* address.state ^definition = "An Australian state or territory where the service is available."
* address.state from $australian-states-territories-2 (required)

* address.postalCode MS

* address.country 1..1 MS
* address.country = "AU"
* address.country ^short = "Australia as a 2 digit ISO 3166 code"
* address.country ^definition = "The 2 digit ISO 3166 code for Australia (AU)."

* managingOrganization MS
* managingOrganization only Reference(HCOrganization)
