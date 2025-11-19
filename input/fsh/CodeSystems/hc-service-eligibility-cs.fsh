CodeSystem: HCServiceEligibilityCodeSystem
Id: hc-service-eligibility-cs
Title: "HC Service Eligibility CodeSystem"
Description: "Health Connect code system for service eligibility, modeled after PCA's eligibility code system. Codes represent eligibility requirements for healthcare services."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://ns.electronichealth.net.au/hc/CodeSystem/hc-service-eligibility-cs"
* ^status = #draft
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "Australian Digital Health Agency"
* ^contact[0].name = "Australian Digital Health Agency"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "help@digitalhealth.gov.au"
* ^copyright = "This code system is a clone of the PCA Service Eligibility CodeSystem. Copyright © Australian Digital Health Agency."
* ^caseSensitive = true
* ^valueSet = "http://ns.electronichealth.net.au/hc/ValueSet/hc-service-eligibility-vs"
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #newBorn0to3 "Neonate/newborn 0-3 months" "Neonate/newborn 0-3 months"
* #infant3to6 "Infant 3-6 months" "Infant 3-6 months"
* #infant6to12 "Infant 6-12 months" "Infant 6-12 months"
* #toddlerPreschool1to4 "Toddler to preschool 1-4 years" "Toddler to preschool 1-4 years"
* #childYouth5to17 "Children and young people 5-17 years" "Children and young people 5-17 years"
* #adult18to64 "Adult 18-64 years" "Adult 18-64 years"
* #adult65Plus "Older Adult 65+ years" "Older Adult 65+ years"
* #carer-youngCarerUnder25 "Carer - Young Carer (Under 25)" "Carer - Young Carer (Under 25)"
* #carer-adultCarer "Carer - Adult Carer" "Carer - Adult Carer"
* #coverage-restrictedResidents "Coverage - Restricted To Residents In Coverage Area" "Coverage - Restricted To Residents In Coverage Area"
* #disabled-intellectually "Disabled - Intellectually" "Disabled - Intellectually"
* #disabled-disabledPhysically "Disabled - Physically" "Disabled - Physically"
* #gender-men "Gender - Men" "Gender - Men"
* #gender-women "Gender - Women" "Gender - Women"
* #other-aboriginalPeoples "Aboriginal Peoples" "Aboriginal Peoples"
* #other-torresStraitIslanderPeoples "Torres Strait Islander Peoples" "Torres Strait Islander Peoples"
* #other-cald "CALD (Culturally and Linguistically Diverse)" "CALD (Culturally and Linguistically Diverse)"
* #other-lgbti "LGBTI (Lesbian, Gay, Bisexual, Transgender and Intersex)" "LGBTI (Lesbian, Gay, Bisexual, Transgender and Intersex)"
* #other-families "Families" "Families"
* #other-parents "Parents" "Parents"
* #other-veterans "Veterans" "Veterans"
* #other-existingPatientsOnly "Existing Patients Only" "Existing Patients Only"
* #other-requiresReferral "Requires Referral" "Requires Referral"
* #other-mentalHealth "People with Mental Health Issues" "People with Mental Health Issues"
* #other-chronicTerminalIllness "People with Chronic/Terminal Illness" "People with Chronic/Terminal Illness"
* #other-drugAlcohol "People with Drug and/or Alcohol Issues" "People with Drug and/or Alcohol Issues"
