CodeSystem: IARLevelsOfCareCs
Id: iar-levels-of-care
Title: "IAR Levels of Care CodeSystem"
Description: "The IAR Levels of Care code system defines concepts for the levels of care that the service provides, as defined by the National Initial Assessment and Referral (IAR) for Mental Healthcare Guidance (IAR Guidance).\n\nThis code system is referenced in the content logical definition of the following value sets:\n\n- IARLevelsOfCareVs (http://digitalhealth.gov.au/fhir/hcpd/ValueSet/iar-levels-of-care-vs) This resource includes material that is based on Commonwealth of Australia material."
* ^meta.profile = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^url = "http://digitalhealth.gov.au/fhir/hcpd/CodeSystem/iar-levels-of-care"
* ^name = "HcIarLevelsOfCareCs"
* ^status = #draft
* ^experimental = false
* ^publisher = "Australian Digital Health Agency"
* ^contact.name = "Australian Digital Health Agency"
* ^contact.telecom[+].system = #url
* ^contact.telecom[=].value = "https://www.digitalhealth.gov.au"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "help@digitalhealth.gov.au"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = urn:iso:std:iso:3166#AU "Australia"
* ^valueSet = "http://digitalhealth.gov.au/fhir/hcpd/ValueSet/iar-levels-of-care-vs"
* ^description = "The Health Connect IAR Levels of care code system defines concepts for the levels of care that the service provides, as defined by the National Initial Assessment and Referral (IAR) for Mental Healthcare Guidance (IAR Guidance). This resource includes material that is based on Commonwealth of Australia material."
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* ^version = "1.0.0"

* #1 "Level 1 (self-management)" "Evidence-informed, appropriate, and culturally safe resources and other forms of self-help."
* #2 "Level 2 (low intensity interventions)" "Evidence‑based mental health treatments or interventions designed for quick and easy access, typically delivered through a small number of brief sessions or via a structured, manualised program. These services focus on teaching proven strategies to help individuals manage symptoms of mental illness and/or psychological distress."
* #3 "Level 3 (moderate intensity interventions)" "Services that deliver structured, reasonably frequent, and individually tailored treatment for mental health symptoms or psychological distress. Access usually requires a referral from a GP or mental health professional."
* #4 "Level 4 (high intensity interventions)" "Services that provide periods of intensive, multi‑disciplinary support and care coordination, as multiple providers are often involved. Support may be required over long durations or intermittently as a person’s mental health fluctuates."
* #5 "Level 5 (specialist and acute services)" "Specialist mental healthcare involves intensive, team‑based assessment and treatment—usually delivered by state or territory mental health services—and includes coordinated support from case managers, psychiatrists, psychologists, social workers, occupational therapists, and drug and alcohol workers. It may also involve more intensive care provided by GPs working closely with acute and specialist teams."
