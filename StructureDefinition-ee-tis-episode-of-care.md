# EE TIS Episode of Care - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS Episode of Care**

## Resource Profile: EE TIS Episode of Care 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care | *Version*:0.1.0 |
| Draft as of 2026-02-03 | *Computable Name*:EETISEpisodeOfCare |

 
A profile for basic Episode of Care.(ee RAVIEPISOOD) 

**Usages:**

* Refer to this Profile: [EoC or Encounter reference](StructureDefinition-ee-tis-eoc-or-encounter-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-encounter-episode|current/StructureDefinition/ee-tis-episode-of-care)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-episode-of-care.csv), [Excel](StructureDefinition-ee-tis-episode-of-care.xlsx), [Schematron](StructureDefinition-ee-tis-episode-of-care.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-episode-of-care",
  "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care",
  "version" : "0.1.0",
  "name" : "EETISEpisodeOfCare",
  "title" : "EE TIS Episode of Care",
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
  "description" : "A profile for basic Episode of Care.(ee RAVIEPISOOD)",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "https://fhir.ee/base/StructureDefinition/ee-episode-of-care",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "EpisodeOfCare",
        "path" : "EpisodeOfCare"
      },
      {
        "id" : "EpisodeOfCare.extension",
        "path" : "EpisodeOfCare.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "EpisodeOfCare.extension:relations",
        "path" : "EpisodeOfCare.extension",
        "sliceName" : "relations",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.identifier",
        "path" : "EpisodeOfCare.identifier",
        "short" : "Identifier. (ee Unikaalne identifikaator, mis määratleb konkreetse raviepisoodi. Luuakse automaatselt ja jääb püsima kogu elutsükli jooksul.)",
        "max" : "1"
      },
      {
        "id" : "EpisodeOfCare.status",
        "path" : "EpisodeOfCare.status",
        "short" : "(ee Näitab episoodi hetkeolekut ehk millises olekutsüklis see parajasti on. Kohustuslik väli.HL7 LOENDi tõlge?)"
      },
      {
        "id" : "EpisodeOfCare.statusHistory",
        "path" : "EpisodeOfCare.statusHistory",
        "short" : "(ee Loetleb varasemad olekud koos ajavahemikega, mil need kehtisid. Tekib süsteemis automaatselt muudatuste põhjal.)"
      },
      {
        "id" : "EpisodeOfCare.type",
        "path" : "EpisodeOfCare.type",
        "short" : "(ee Kirjeldab, millise ravi- või hooldustüübiga on tegemist. Võib olla mitu paralleelselt. LOEND?)"
      },
      {
        "id" : "EpisodeOfCare.reason",
        "path" : "EpisodeOfCare.reason",
        "short" : "(ee Selgitab, miks raviepisood loodi.)"
      },
      {
        "id" : "EpisodeOfCare.diagnosis",
        "path" : "EpisodeOfCare.diagnosis",
        "short" : "(ee Loetleb diagnoosid või seisundid, mis on episoodiga seotud. Iga diagnoosi juures saab määrata rolli ja tähtsuse.)"
      },
      {
        "id" : "EpisodeOfCare.patient",
        "path" : "EpisodeOfCare.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
            ]
          }
        ]
      },
      {
        "id" : "EpisodeOfCare.period",
        "path" : "EpisodeOfCare.period",
        "short" : "(ee Määratleb episoodi alguse ja lõpu kuupäeva ning kellaaja. Vajalik kestvuse ja aruandluse jaoks.)"
      },
      {
        "id" : "EpisodeOfCare.referralRequest",
        "path" : "EpisodeOfCare.referralRequest",
        "short" : " (ee Viide saatekirjale või suunamisele, mille alusel episood algatati.)"
      },
      {
        "id" : "EpisodeOfCare.careTeam",
        "path" : "EpisodeOfCare.careTeam",
        "short" : "(ee Episoodiga seotud tervishoiutöötajad või meeskonnad.)"
      },
      {
        "id" : "EpisodeOfCare.account",
        "path" : "EpisodeOfCare.account",
        "short" : "(ee Episoodiga seotud arveldus- või finantskonto.)"
      }
    ]
  }
}

```
