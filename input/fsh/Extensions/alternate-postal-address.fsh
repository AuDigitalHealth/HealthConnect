Extension: HCAlternatePostalAddress
Id: hc-alternate-postal-address
Title: "HC Alternate Postal Address"
Description: "Carries an alternate postal/mailing address for correspondence (PO Box or mailing address) that is distinct from the registered physical address. This extension is used in the context of HC-Location profile. Allows organisations to nominate a secure mailing address for official correspondence."
* ^context.type = #element
* ^context.expression = "Location"
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/StructureDefinition/hc-alternate-postal-address"
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^description = "Alternate postal/mailing address for correspondence (PO Box or mailing address) that is distinct from the registered physical address."
* value[x] only Address
* valueAddress 1..1
* valueAddress.type = #postal (exactly)
* valueAddress ^short = "Alternate postal/mailing address"
* valueAddress ^definition = "A chosen or alternate postal or mailing address, used for correspondence and separate from the registered physical address."
