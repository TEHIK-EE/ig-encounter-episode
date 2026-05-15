Instance: episodeofcare1
InstanceOf: EpisodeOfCare
Usage: #example
Title: "Example of episode of care"
Description: "Näidis raviepisoodist: ambulatoorne uroloogia raviepisood, mis on seotud ühe tervishoiukontaktiga."
* meta.profile = "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care"
* meta.versionId = "1"
* extension[0].url = "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference"
* extension[=].valueReference = Reference(Encounter/encounter1)
* extension[+].url = "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary"
* extension[=].valueString = "peavalupatsient"
* identifier[0].system = "https://fhir.ee/CodeSystem/tto-local-episode-identifier"
* identifier[0].value = "EPI-TTO-2024-0042"
* identifier[+].system = "https://fhir.ee/CodeSystem/tis-episode-identifier"
* identifier[=].value = "TIS-EPI-2024-0042"
* status = #active
* statusHistory.status = #planned
* statusHistory.period.start = "2024-03-10T10:00:00+02:00"
* statusHistory.period.end = "2024-03-15T09:02:00+02:00"
* type.coding.system = "https://fhir.ee/CodeSystem/eoc-episoodi-tyyp"
* type.coding.code = #ambulatoorne
* type.coding.display = "Ambulatoorne raviepisood"
* period.start = "2024-03-15T09:02:00+02:00"
* reason.use = http://terminology.hl7.org/CodeSystem/encounter-reason-use#CC "Chief Complaint"
* reason.value = Reference(Condition/cond-peavalu)
* diagnosis.condition = Reference(Condition/cond-peavalu)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#final "Final"
* patient = Reference(Patient/pat-mari-tamm)
* managingOrganization = Reference(Organization/org-tallinna-haigla)
* careManager = Reference(Practitioner/prac-jaan-mets)
//* careTeam[0] = Reference(CareTeam/careteam-uroloogia-001)