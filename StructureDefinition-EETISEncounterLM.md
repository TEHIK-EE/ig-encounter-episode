# Tervishoiukontakt. TEST - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervishoiukontakt. TEST**

## Logical Model: Tervishoiukontakt. TEST 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/EETISEncounterLM | *Version*:0.1.0 |
| Draft as of 2026-05-15 | *Computable Name*:EETISEncounterLM |

 
TEST model for Encounter 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.encounterepisode|current/StructureDefinition/EETISEncounterLM)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EETISEncounterLM.csv), [Excel](StructureDefinition-EETISEncounterLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EETISEncounterLM",
  "url" : "https://fhir.ee/encounter-episode/StructureDefinition/EETISEncounterLM",
  "version" : "0.1.0",
  "name" : "EETISEncounterLM",
  "title" : "Tervishoiukontakt. TEST",
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
  "description" : "TEST model for Encounter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.ee/encounter-episode/StructureDefinition/EETISEncounterLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EETISEncounterLM",
      "path" : "EETISEncounterLM",
      "short" : "Tervishoiukontakt. TEST",
      "definition" : "TEST model for Encounter"
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiID",
      "path" : "EETISEncounterLM.TervishoiukontaktiID",
      "short" : "TIS poolt andmete vastuvõtmisel  genereeritud unikaalne identifikaator.",
      "definition" : "TIS poolt andmete vastuvõtmisel  genereeritud unikaalne identifikaator.",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TTOISSiseneTervishoiukontaktiID",
      "path" : "EETISEncounterLM.TTOISSiseneTervishoiukontaktiID",
      "short" : "TTO poolt genereeritud TTO IS-i Tervishoiukontakti ID vastavalt iga TTO IS-i sisese unikaalse nummerdamise reeglitele. ",
      "definition" : "TTO poolt genereeritud TTO IS-i Tervishoiukontakti ID vastavalt iga TTO IS-i sisese unikaalse nummerdamise reeglitele. ",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.AndmeteKonfidentsiaalsus",
      "path" : "EETISEncounterLM.AndmeteKonfidentsiaalsus",
      "short" : "Tervishoiukontakti andmete konfidentsiaalsus erinevatele rollidele.",
      "definition" : "Tervishoiukontakti andmete konfidentsiaalsus erinevatele rollidele.",
      "requirements" : "identifikaatorite domeen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiVersiooniID",
      "path" : "EETISEncounterLM.TervishoiukontaktiVersiooniID",
      "short" : "Automaatne versiooninumber, mis muutub iga andmekirje muudatusega (nt staatus, kuupäev, jne). ",
      "definition" : "Automaatne versiooninumber, mis muutub iga andmekirje muudatusega (nt staatus, kuupäev, jne). ",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiPlaneeritudPeriood",
      "path" : "EETISEncounterLM.TervishoiukontaktiPlaneeritudPeriood",
      "short" : "Alguse- ja lõpukuupäev ning kellaaeg, millal Tervishoiukontakt on planeeritud toimuma.",
      "definition" : "Alguse- ja lõpukuupäev ning kellaaeg, millal Tervishoiukontakt on planeeritud toimuma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiSubjekt",
      "path" : "EETISEncounterLM.TervishoiukontaktiSubjekt",
      "short" : "Patsient, kes on Tervishoiukontaktiga seotud.",
      "definition" : "Patsient, kes on Tervishoiukontaktiga seotud.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiOsalised",
      "path" : "EETISEncounterLM.TervishoiukontaktiOsalised",
      "short" : "TTO-st isikud, kes osalesid Tervishoiukontaktis (nt arst, õde, dokumenteerija).",
      "definition" : "TTO-st isikud, kes osalesid Tervishoiukontaktis (nt arst, õde, dokumenteerija).",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.MuuAbipersonalOsalised",
      "path" : "EETISEncounterLM.MuuAbipersonalOsalised",
      "short" : "Muu abipersonal või osalised, kes Tervishoiukontaktiga seotud olid. Võimaldab Tervishoiukontakti andmestikku lisada isikuid, kes Tervishoiukontaktis on olulised välja tuua (nt tõlk, sotsiaaltöötaja, jne).",
      "definition" : "Muu abipersonal või osalised, kes Tervishoiukontaktiga seotud olid. Võimaldab Tervishoiukontakti andmestikku lisada isikuid, kes Tervishoiukontaktis on olulised välja tuua (nt tõlk, sotsiaaltöötaja, jne).",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiTeenusepakkuja",
      "path" : "EETISEncounterLM.TervishoiukontaktiTeenusepakkuja",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiToimumiseAsukoht",
      "path" : "EETISEncounterLM.TervishoiukontaktiToimumiseAsukoht",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiStaatus",
      "path" : "EETISEncounterLM.TervishoiukontaktiStaatus",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiLiik",
      "path" : "EETISEncounterLM.TervishoiukontaktiLiik",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiErakorralisus",
      "path" : "EETISEncounterLM.TervishoiukontaktiErakorralisus",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiKlass",
      "path" : "EETISEncounterLM.TervishoiukontaktiKlass",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiTyyp",
      "path" : "EETISEncounterLM.TervishoiukontaktiTyyp",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TegelikPeriood",
      "path" : "EETISEncounterLM.TegelikPeriood",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.SaabumiseViis",
      "path" : "EETISEncounterLM.SaabumiseViis",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.Episood",
      "path" : "EETISEncounterLM.Episood",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "EpisodeOfCare",
        "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care"]
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiDiagnoos",
      "path" : "EETISEncounterLM.TervishoiukontaktiDiagnoos",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.HaiglaraviLoppemiseTulemus",
      "path" : "EETISEncounterLM.HaiglaraviLoppemiseTulemus",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.SaatekirjaAndmed",
      "path" : "EETISEncounterLM.SaatekirjaAndmed",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiKokkuvoteRavist",
      "path" : "EETISEncounterLM.TervishoiukontaktiKokkuvoteRavist",
      "short" : "tbc",
      "definition" : "tbc",
      "requirements" : "vajadus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
