CodeSystem: HcIarLevelsOfCareCs
Id: hc-iar-levels-of-care
Title: "HC IAR Levels of Care CodeSystem"
Description: "The Health Connect IAR Levels of Care code system defines concepts for the levels of care that the service provides, as defined by the National Initial Assessment and Referral (IAR) for Mental Healthcare Guidance (IAR Guidance) and IAR Decision Support Tool.\n\nThis code system is referenced in the content logical definition of the following value sets:\n\n- HcIarLevelsOfCareVs (http://ns.electronichealth.net.au/hc/ValueSet/hc-iar-levels-of-care-vs)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://ns.electronichealth.net.au/hc/CodeSystem/hc-iar-levels-of-care"
* ^name = "HcIarLevelsOfCareCs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://ns.electronichealth.net.au/hc/ValueSet/hc-iar-levels-of-care-vs"
* ^description = "The Health Connect IAR Levels of care code system defines concepts for the levels of care that the service provides, as defined by the National Initial Assessment and Referral (IAR) for Mental Healthcare Guidance (IAR Guidance) and IAR Decision Support Tool."
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* #1 "Level 1 (self-management)" "Level 1 self-management."
* #2 "Level 2 (low intensity interventions)" "Level 2 low intensity interventions."
* #3 "Level 3 (moderate intensity interventions)" "Level 3 moderate intensity interventions."
* #4 "Level 4 (high intensity interventions)" "Level 4 high intensity interventions."
* #5 "Level 5 (specialist and acute services)" "Level 5 specialist and acute services."