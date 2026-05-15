# Example of episode of care - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of episode of care**

## Example EpisodeOfCare: Example of episode of care

version: 1

Profile: [EE TIS Episode of Care](StructureDefinition-ee-tis-episode-of-care.md)

**EoC or Encounter reference**: [Encounter: extension = Rutiinne ambulatoorne visiit. Patsient kaebas peavalude üle, määrati täiendav uuring.,Ambulance (arrivalMode#A); identifier = https://fhir.ee/CodeSystem/local-identifier#K-2024-0042,https://fhir.ee/CodeSystem/local-identifier#TIS-2024-0042; status = discharged; class = ambulatory; priority = routine; type = Visiit,Esmane; actualPeriod = 2024-03-15 09:02:00+0200 --> 2024-03-15 09:33:00+0200; plannedStartDate = 2024-03-15 09:00:00+0200; plannedEndDate = 2024-03-15 09:30:00+0200](Encounter-encounter1.md)

**Any free form text needed**: peavalupatsient

**identifier**: `https://fhir.ee/CodeSystem/tto-local-episode-identifier`/EPI-TTO-2024-0042, `https://fhir.ee/CodeSystem/tis-episode-identifier`/TIS-EPI-2024-0042

**status**: Active

### StatusHistories

| | | |
| :--- | :--- | :--- |
| - | **Status** | **Period** |
| * | Planned | 2024-03-10 10:00:00+0200 --> 2024-03-15 09:02:00+0200 |

**type**: Ambulatoorne raviepisood

> **reason****use**: Chief Complaint

### Values

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Condition/cond-peavalu](Condition/cond-peavalu) |


> **diagnosis**

### Conditions

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Condition/cond-peavalu](Condition/cond-peavalu) |

**use**: Final

**patient**: [Patient/pat-mari-tamm](Patient/pat-mari-tamm)

**managingOrganization**: [Organization/org-tallinna-haigla](Organization/org-tallinna-haigla)

**period**: 2024-03-15 09:02:00+0200 --> (ongoing)

**careManager**: [Practitioner/prac-jaan-mets](Practitioner/prac-jaan-mets)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "episodeofcare1",
  "meta" : {
    "versionId" : "1",
    "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference",
    "valueReference" : {
      "reference" : "Encounter/encounter1"
    }
  },
  {
    "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary",
    "valueString" : "peavalupatsient"
  }],
  "identifier" : [{
    "system" : "https://fhir.ee/CodeSystem/tto-local-episode-identifier",
    "value" : "EPI-TTO-2024-0042"
  },
  {
    "system" : "https://fhir.ee/CodeSystem/tis-episode-identifier",
    "value" : "TIS-EPI-2024-0042"
  }],
  "status" : "active",
  "statusHistory" : [{
    "status" : "planned",
    "period" : {
      "start" : "2024-03-10T10:00:00+02:00",
      "end" : "2024-03-15T09:02:00+02:00"
    }
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/eoc-episoodi-tyyp",
      "code" : "ambulatoorne",
      "display" : "Ambulatoorne raviepisood"
    }]
  }],
  "reason" : [{
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/encounter-reason-use",
        "code" : "CC",
        "display" : "Chief Complaint"
      }]
    },
    "value" : [{
      "reference" : {
        "reference" : "Condition/cond-peavalu"
      }
    }]
  }],
  "diagnosis" : [{
    "condition" : [{
      "reference" : {
        "reference" : "Condition/cond-peavalu"
      }
    }],
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "final",
        "display" : "Final"
      }]
    }
  }],
  "patient" : {
    "reference" : "Patient/pat-mari-tamm"
  },
  "managingOrganization" : {
    "reference" : "Organization/org-tallinna-haigla"
  },
  "period" : {
    "start" : "2024-03-15T09:02:00+02:00"
  },
  "careManager" : {
    "reference" : "Practitioner/prac-jaan-mets"
  }
}

```
