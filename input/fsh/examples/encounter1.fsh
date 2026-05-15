Instance: encounter1
InstanceOf: Encounter
Usage: #example
Title: "Example of ambulatory encounter"
Description: "Näidis ambulatoorsest tervishoiukontaktist: rutiinne esmane visiit kahe osalejaga."
* meta.profile = "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-encounter"
* extension.url = "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary"
* extension.valueString = "Rutiinne ambulatoorne visiit. Patsient kaebas peavalude üle, määrati täiendav uuring."
* meta.versionId = "1"
* identifier[0].system = "https://fhir.ee/CodeSystem/local-identifier"
* identifier[=].value = "K-2024-0042"
* identifier[+].system = "https://fhir.ee/CodeSystem/local-identifier"
* identifier[=].value = "TIS-2024-0042"
* status = #discharged
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "routine"
* type[0].coding.system    = "https://fhir.ee/CodeSystem/encounter-type"
* type[=].coding.code      = #visiit
* type[=].coding.display   = "Visiit"
* type[+].coding.system    = "https://fhir.ee/CodeSystem/encounter-recurrence"
* type[=].coding.code      = #esmane
* type[=].coding.display   = "Esmane"
* plannedStartDate = "2024-03-15T09:00:00+02:00"
* plannedEndDate   = "2024-03-15T09:30:00+02:00"
* serviceType.concept = $amb-teenused#AUR001 "Uroloogi vastuvõtt"
* subject = Reference(Patient/pat-mari-tamm)
* basedOn = Reference(ServiceRequest/sr-2024-007)
* participant[0].actor = Reference(Practitioner/prac-jaan-mets)
* participant[0].period.start = "2024-03-15T09:02:00+02:00"
* participant[0].period.end = "2024-03-15T09:30:00+02:00"
* participant[1].actor = Reference(PractitionerRole/pr-role-001)
* participant[1].period.start = "2024-03-15T09:02:00+02:00"
* participant[1].type = #translator "Translator"
* participant[1].period.end = "2024-03-15T09:20:00+02:00"
* actualPeriod.start = "2024-03-15T09:02:00+02:00"
* actualPeriod.end   = "2024-03-15T09:33:00+02:00"
* location[0].location = Reference(Location/loc-kabinet-12)
* reason[0].value = Reference(Condition/cond-peavalu)
* diagnosis[0].condition = Reference(Condition/cond-peavalu)
* diagnosis[0].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"
* serviceProvider = Reference(Organization/org-tallinna-haigla)
* episodeOfCare[0] = Reference(EpisodeOfCare/eoc-2024-001)
* admission.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#home "Home"