Instance: encounter1
InstanceOf: ee-tis-encounter
Usage: #example
Title: "Example of ambulatory encounter"
Description: "Näidis ambulatoorsest tervishoiukontaktist: rutiinne esmane visiit kahe osalejaga."
* extension[summary].valueString = "Rutiinne ambulatoorne visiit. Patsient kaebas peavalude üle, määrati täiendav uuring."
* meta.versionId = "1"
* identifier[ttoLocalIdentifier].system = "https://fhir.ee/CodeSystem/local-identifier"
* identifier[ttoLocalIdentifier].value = "K-2024-0042"
* identifier[crossTtoIdentifier].system = "https://fhir.ee/CodeSystem/local-identifier"
* identifier[crossTtoIdentifier].value = "TIS-2024-0042"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "routine"
* type[encounterType].coding.system    = "https://fhir.ee/CodeSystem/encounter-type"
* type[encounterType].coding.code      = #visiit
* type[encounterType].coding.display   = "Visiit"
* type[encounterRecurrence].coding.system    = "https://fhir.ee/CodeSystem/encounter-recurrence"
* type[encounterRecurrence].coding.code      = #esmane
* type[encounterRecurrence].coding.display   = "Esmane"
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