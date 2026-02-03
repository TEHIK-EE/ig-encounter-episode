# EE TIS Encounter - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS Encounter**

## Resource Profile: EE TIS Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-encounter | *Version*:0.1.0 |
| Draft as of 2026-02-03 | *Computable Name*:EETISEncounter |

 
A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT) 

**Usages:**

* Refer to this Profile: [EoC or Encounter reference](StructureDefinition-ee-tis-eoc-or-encounter-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-encounter-episode|current/StructureDefinition/ee-tis-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-encounter.csv), [Excel](StructureDefinition-ee-tis-encounter.xlsx), [Schematron](StructureDefinition-ee-tis-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-encounter",
  "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-encounter",
  "version" : "0.1.0",
  "name" : "EETISEncounter",
  "title" : "EE TIS Encounter",
  "status" : "draft",
  "date" : "2026-02-03T07:13:12+00:00",
  "publisher" : "TEHIK",
  "contact" : [
    {
      "name" : "TEHIK",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.tehik.ee"
        },
        {
          "system" : "email",
          "value" : "fhir@tehik.ee"
        }
      ]
    },
    {
      "name" : "TEHIK Andmekorraldus",
      "telecom" : [
        {
          "system" : "email",
          "value" : "andmekorraldus@tehik.ee",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT)",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "EE",
          "display" : "Estonia"
        }
      ]
    }
  ],
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://fhir.ee/base/StructureDefinition/ee-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "Kas on vaja HL7 LOEND tõlkida? Või äkki ikkagi pole?"
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Describes the form of encounter (|ambulatoorne|,|statsionaarne|, |kiirabi|... HL7 loendile mäping+tõlge?)",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "Type or aim of encounter. (|ravi|,|erakorraline|, |ennetus|... VAJA LOENDIT)"
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
              "https://fhir.ee/base/StructureDefinition/ee-patient"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.episodeOfCare",
        "path" : "Encounter.episodeOfCare",
        "short" : "EoC that is related to this encounter (ee Raviepisood, millega see kontakt seotud on)"
      },
      {
        "id" : "Encounter.participant.actor",
        "path" : "Encounter.participant.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/base/StructureDefinition/ee-practitioner",
              "https://fhir.ee/base/StructureDefinition/ee-related-person",
              "https://fhir.ee/base/StructureDefinition/ee-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.actualPeriod",
        "path" : "Encounter.actualPeriod",
        "short" : "When encounter started and ended? (ee Millal kontakt algas ja lõppes)"
      },
      {
        "id" : "Encounter.reason",
        "path" : "Encounter.reason",
        "short" : "Reason(s) for encounter (ee Põhjused, miks tervishoiukontakt toimus)"
      },
      {
        "id" : "Encounter.diagnosis",
        "path" : "Encounter.diagnosis",
        "short" : "All diagnosis that are related to this encounter (ee Kõik diagnoosid, mis on seotud tervishoiukontaktiga.)"
      },
      {
        "id" : "Encounter.admission",
        "path" : "Encounter.admission",
        "short" : "Describes how was the condition or where the patient went after discharge (ee Kirjeldab, kuhu patsient suunati või milline oli seisund lahkumisel.)"
      },
      {
        "id" : "Encounter.location",
        "path" : "Encounter.location",
        "short" : "Physical location of encounter (ee Füüsiline asukoht kus kontakt toimus (AGA KUI ON VIRTUAALNE?)"
      }
    ]
  }
}

```
