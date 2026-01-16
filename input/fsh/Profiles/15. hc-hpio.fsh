Profile: HCHPIOIdentifier
Parent: $au-hpio
Id: hc-hpio
Title: "HC Healthcare Provider Identifier - Organisation (HC HPI-O)"
Description: "This identifier profile extends the AU HPI-O profile to include an organization classification extension to indicate whether the organization is a 'seed' or 'network' type."
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "help@digitalhealth.gov.au"
* ^copyright = "Copyright © 2025 Australian Digital Health Agency - All rights reserved. This content is licensed under a Creative Commons Attribution 4.0 International License. See https://creativecommons.org/licenses/by/4.0/."

* extension contains
    HcOrgClassification named HCOrgClassification 1..1 MS
* extension[HCOrgClassification] ^short = "Organization classification"
* extension[HCOrgClassification] ^definition = "Organization classification for HPI-O identifiers - can be 'seed' or 'network'."