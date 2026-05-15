# Example of ambulatory encounter - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of ambulatory encounter**

## Example Encounter: Example of ambulatory encounter

version: 1

Profile: [EE TIS Encounter](StructureDefinition-ee-tis-encounter.md)

**Any free form text needed**: Rutiinne ambulatoorne visiit. Patsient kaebas peavalude üle, määrati täiendav uuring.

**EEBase ModeOfArrival**: [arrivalMode: A](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0430.html#v2-0430-A) (Ambulance)

**identifier**: `https://fhir.ee/CodeSystem/local-identifier`/K-2024-0042, `https://fhir.ee/CodeSystem/local-identifier`/TIS-2024-0042

**status**: Discharged

**class**: ambulatory

**priority**: routine

**type**: Visiit, Esmane

### ServiceTypes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Uroloogi vastuvõtt |

**subject**: [Patient/pat-mari-tamm](Patient/pat-mari-tamm)

**episodeOfCare**: [EpisodeOfCare/eoc-2024-001](EpisodeOfCare/eoc-2024-001)

**basedOn**: [ServiceRequest/sr-2024-007](ServiceRequest/sr-2024-007)

**serviceProvider**: [Organization/org-tallinna-haigla](Organization/org-tallinna-haigla)

> **participant****period**: 2024-03-15 09:02:00+0200 --> 2024-03-15 09:30:00+0200**actor**: [Practitioner/prac-jaan-mets](Practitioner/prac-jaan-mets)

> **participant****type**: Translator**period**: 2024-03-15 09:02:00+0200 --> 2024-03-15 09:20:00+0200**actor**: [PractitionerRole/pr-role-001](PractitionerRole/pr-role-001)

**actualPeriod**: 2024-03-15 09:02:00+0200 --> 2024-03-15 09:33:00+0200

**plannedStartDate**: 2024-03-15 09:00:00+0200

**plannedEndDate**: 2024-03-15 09:30:00+0200

> **reason**

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

**use**: Admission diagnosis

### Admissions

| | |
| :--- | :--- |
| - | **DischargeDisposition** |
| * | Home |

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location/loc-kabinet-12](Location/loc-kabinet-12) |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter1",
  "meta" : {
    "versionId" : "1",
    "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-encounter"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary",
    "valueString" : "Rutiinne ambulatoorne visiit. Patsient kaebas peavalude üle, määrati täiendav uuring."
  },
  {
    "url" : "https://fhir.ee/base/StructureDefinition/ee-mode-of-arrival",
    "valueCoding" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0430",
      "code" : "A",
      "display" : "Ambulance"
    }
  }],
  "identifier" : [{
    "system" : "https://fhir.ee/CodeSystem/local-identifier",
    "value" : "K-2024-0042"
  },
  {
    "system" : "https://fhir.ee/CodeSystem/local-identifier",
    "value" : "TIS-2024-0042"
  }],
  "status" : "discharged",
  "class" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    }]
  }],
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
      "code" : "R",
      "display" : "routine"
    }]
  },
  "type" : [{
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/encounter-type",
      "code" : "visiit",
      "display" : "Visiit"
    }]
  },
  {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/encounter-recurrence",
      "code" : "esmane",
      "display" : "Esmane"
    }]
  }],
  "serviceType" : [{
    "concept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/ambulatoorsed-vastuvotud",
        "code" : "AUR001",
        "display" : "Uroloogi vastuvõtt"
      }]
    }
  }],
  "subject" : {
    "reference" : "Patient/pat-mari-tamm"
  },
  "episodeOfCare" : [{
    "reference" : "EpisodeOfCare/eoc-2024-001"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-2024-007"
  }],
  "serviceProvider" : {
    "reference" : "Organization/org-tallinna-haigla"
  },
  "participant" : [{
    "period" : {
      "start" : "2024-03-15T09:02:00+02:00",
      "end" : "2024-03-15T09:30:00+02:00"
    },
    "actor" : {
      "reference" : "Practitioner/prac-jaan-mets"
    }
  },
  {
    "type" : [{
      "coding" : [{
        "code" : "translator",
        "display" : "Translator"
      }]
    }],
    "period" : {
      "start" : "2024-03-15T09:02:00+02:00",
      "end" : "2024-03-15T09:20:00+02:00"
    },
    "actor" : {
      "reference" : "PractitionerRole/pr-role-001"
    }
  }],
  "actualPeriod" : {
    "start" : "2024-03-15T09:02:00+02:00",
    "end" : "2024-03-15T09:33:00+02:00"
  },
  "plannedStartDate" : "2024-03-15T09:00:00+02:00",
  "plannedEndDate" : "2024-03-15T09:30:00+02:00",
  "reason" : [{
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
    "use" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "AD",
        "display" : "Admission diagnosis"
      }]
    }]
  }],
  "admission" : {
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/discharge-disposition",
        "code" : "home",
        "display" : "Home"
      }]
    }
  },
  "location" : [{
    "location" : {
      "reference" : "Location/loc-kabinet-12"
    }
  }]
}

```
