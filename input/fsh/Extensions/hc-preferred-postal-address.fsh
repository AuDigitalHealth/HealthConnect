Extension: HCPreferredPostalAddress
Id: hc-preferred-postal-address
Title: "HC Preferred Postal Address"
Description: "Carries a preferred postal/mailing address for correspondence (PO Box or mailing address) that is distinct from the registered physical address. This extension is used in the context of HC-Location profile. Allows organisations to nominate a secure mailing address for official correspondence."
* ^context.type = #element
* ^context.expression = "Location"
* ^url = "http://ns.electronichealth.net.au/hc/StructureDefinition/hc-preferred-postal-address"
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^description = "Preferred postal/mailing address for correspondence (PO Box or mailing address) that is distinct from the registered physical address."
* value[x] only Address
* valueAddress 1..1
* valueAddress ^short = "Preferred postal/mailing address"
* valueAddress ^definition = "A chosen or preferred postal or mailing address, used for correspondence and separate from the registered physical address."
