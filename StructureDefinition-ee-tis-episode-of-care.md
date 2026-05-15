# EE TIS Episode of Care - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS Episode of Care**

## Resource Profile: EE TIS Episode of Care 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care | *Version*:0.1.0 |
| Draft as of 2026-05-15 | *Computable Name*:EETISEpisodeOfCare |

 
A profile for basic Episode of Care.(ee RAVIEPISOOD) 

**Usages:**

* Use this Profile: [Tervishoiukontakt. TEST](StructureDefinition-EETISEncounterLM.md)
* Refer to this Profile: [EoC or Encounter reference](StructureDefinition-ee-tis-eoc-or-encounter-reference.md)
* Examples for this Profile: [EpisodeOfCare/episodeofcare1](EpisodeOfCare-episodeofcare1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.encounterepisode|current/StructureDefinition/ee-tis-episode-of-care)

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
  "date" : "2026-05-15T11:34:02+00:00",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.tehik.ee"
    },
    {
      "system" : "email",
      "value" : "fhir@tehik.ee"
    }]
  },
  {
    "name" : "TEHIK Andmekorraldus",
    "telecom" : [{
      "system" : "email",
      "value" : "andmekorraldus@tehik.ee",
      "use" : "work"
    }]
  }],
  "description" : "A profile for basic Episode of Care.(ee RAVIEPISOOD)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "https://fhir.ee/base/StructureDefinition/ee-episode-of-care",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare.meta.versionId",
      "path" : "EpisodeOfCare.meta.versionId",
      "short" : "versiooni identifikaator. Automaatne versiooninumber, mis muutub iga andmekirje muudatusega (nt staatus, kuupäev, jne). ",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.meta.security",
      "path" : "EpisodeOfCare.meta.security",
      "short" : "Konfidentsiaalsus slice? patsiendile/arstile/eestkostjale"
    },
    {
      "id" : "EpisodeOfCare.extension",
      "path" : "EpisodeOfCare.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
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
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference"]
      }]
    },
    {
      "id" : "EpisodeOfCare.extension:eocName",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "eocName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary"]
      }]
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "When there is a need for local identifier and overall identifier, different systems must be used. (ee Unikaalne identifikaator TIS-is. Luuakse automaatselt ja jääb püsima kogu elutsükli jooksul.)",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Identifier. (ee Unikaalne identifikaator, mis määratleb konkreetse raviepisoodi. Luuakse automaatselt ja jääb püsima kogu elutsükli jooksul.)",
      "min" : 2
    },
    {
      "id" : "EpisodeOfCare.identifier:ttoLocalIdentifier",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "ttoLocalIdentifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "EpisodeOfCare.identifier:crossTtoIdentifier",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "crossTtoIdentifier",
      "min" : 1,
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
      "id" : "EpisodeOfCare.statusHistory.status",
      "path" : "EpisodeOfCare.statusHistory.status",
      "short" : "Varasem Episoodi olek.Sama loend nagu episoodi staatusel"
    },
    {
      "id" : "EpisodeOfCare.statusHistory.period",
      "path" : "EpisodeOfCare.statusHistory.period",
      "short" : "Varasema Episoodi oleku periood (alguse ja lõpu kuupäev ning kellaajad.)"
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
      "id" : "EpisodeOfCare.reason.use",
      "path" : "EpisodeOfCare.reason.use",
      "short" : "Määratleb põhjuse kasutusotstarbe, st millist rolli konkreetne põhjus episoodis täidab."
    },
    {
      "id" : "EpisodeOfCare.reason.value",
      "path" : "EpisodeOfCare.reason.value",
      "short" : "Tuletatakse Episoodiga seotud Tervishoiukontaktide diagnoosi peal (RHK 10 loendi järgi). (VIIDE diagnoositeenusele!)"
    },
    {
      "id" : "EpisodeOfCare.diagnosis",
      "path" : "EpisodeOfCare.diagnosis",
      "short" : "(ee Loetleb diagnoosid või seisundid, mis on episoodiga seotud. Iga diagnoosi juures saab määrata rolli ja tähtsuse.)"
    },
    {
      "id" : "EpisodeOfCare.diagnosis.condition",
      "path" : "EpisodeOfCare.diagnosis.condition",
      "short" : "VIIDE diagnoosi-teenusele!"
    },
    {
      "id" : "EpisodeOfCare.diagnosis.use",
      "path" : "EpisodeOfCare.diagnosis.use",
      "short" : "Määrab diagnoosi rolli kogu Episoodi kontekstis (nt juhtiv vs kaasuv seisund). Võimaldab eristada põhiteekonda toetavaid või komplitseerivaid diagnoose.Kasutatakse eelkõige raviteekonna haldamisel ja kliinilisel analüüsil. LOEND!"
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "short" : "(ee Määratleb episoodi alguse ja lõpu kuupäeva ning kellaaja. Vajalik kestvuse ja aruandluse jaoks.)"
    },
    {
      "id" : "EpisodeOfCare.careManager",
      "path" : "EpisodeOfCare.careManager",
      "short" : "TTO (nt arst), kes vastutab patsiendi ravi koordineerimise eest episoodi vältel. TTO IS-i ja TTO sisese tööprotsessi kokkuleppe küsimus. Viide TTO-le vastavalt SPD andmestikule. Ei ole manuaalselt täidetav vaid TTO IS-is poolt automaatselt defineeritav ja määratav."
    },
    {
      "id" : "EpisodeOfCare.careTeam",
      "path" : "EpisodeOfCare.careTeam",
      "short" : "(ee Episoodiga seotud tervishoiutöötajad või meeskonnad.)"
    },
    {
      "id" : "EpisodeOfCare.account",
      "path" : "EpisodeOfCare.account",
      "max" : "0"
    }]
  }
}

```
