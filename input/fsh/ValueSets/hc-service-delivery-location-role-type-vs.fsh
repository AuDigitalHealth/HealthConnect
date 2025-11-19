ValueSet: HcServiceDeliveryLocationRoleType
Id: hc-service-delivery-location-role-type
Title: "HC Service Delivery Location Role Type ValueSet"
Description: "The Health Connect value set for service delivery location role types, based on PCA's ValueSet but with HC context."
* ^url = "http://ns.electronichealth.net.au/hc/ValueSet/hc-service-delivery-location-role-type"
* ^status = #draft
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "Australian Digital Health Agency"
* ^contact[0].name = "Australian Digital Health Agency"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "help@digitalhealth.gov.au"
* ^copyright = "This value set is a derivative of the PCA Service Delivery Location Role Type ValueSet. Copyright © Australian Digital Health Agency."

* ^compose.include[0].system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* ^compose.include[0].concept[0].code = #MOBL
* ^compose.include[0].concept[0].display = "Mobile Unit"
* ^compose.include[0].concept[1].code = #PTRES
* ^compose.include[0].concept[1].display = "Patient's Residence"
* ^compose.include[0].concept[2].code = #SCHOOL
* ^compose.include[0].concept[2].display = "school"
* ^compose.include[0].concept[3].code = #WORK
* ^compose.include[0].concept[3].display = "work site"
* ^compose.include[0].concept[4].code = #COMM
* ^compose.include[0].concept[4].display = "Community Location"
* ^compose.include[0].concept[5].code = #AMB
* ^compose.include[0].concept[5].display = "Ambulance"

* ^compose.include[1].system = "http://terminology.hl7.org.au/CodeSystem/location-type"
* ^compose.include[1].concept[0].code = #VI
* ^compose.include[1].concept[0].display = "Virtual"
