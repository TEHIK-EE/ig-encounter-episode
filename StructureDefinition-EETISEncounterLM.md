# Encounter model. Tervishoiukontakt. TEST - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter model. Tervishoiukontakt. TEST**

## Logical Model: Encounter model. Tervishoiukontakt. TEST 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/EETISEncounterLM | *Version*:0.1.0 |
| Draft as of 2026-04-10 | *Computable Name*:EETISEncounterLM |

 
TEST model for Encounter 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-encounter-episode|current/StructureDefinition/EETISEncounterLM)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EETISEncounterLM.csv), [Excel](StructureDefinition-EETISEncounterLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EETISEncounterLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.ee/encounter-episode/StructureDefinition/EETISEncounterLM",
  "version" : "0.1.0",
  "name" : "EETISEncounterLM",
  "title" : "Encounter model. Tervishoiukontakt. TEST",
  "status" : "draft",
  "date" : "2026-04-10T05:19:47+00:00",
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
      "short" : "Encounter model. Tervishoiukontakt. TEST",
      "definition" : "TEST model for Encounter"
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiID",
      "path" : "EETISEncounterLM.TervishoiukontaktiID",
      "short" : "Isiku eesnimi",
      "definition" : "Isiku eesnimi",
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
      "short" : "Isiku perekonnanimi",
      "definition" : "Isiku perekonnanimi",
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
      "short" : "Isiku EE isikukood.",
      "definition" : "Isiku EE isikukood.",
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
      "short" : "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)",
      "definition" : "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)",
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
      "short" : "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)",
      "definition" : "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)",
      "requirements" : "MEDRE kutse loend",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "https://fhir.ee/ValueSet/tervishoiutootaja-kutse"
      }
    },
    {
      "id" : "EETISEncounterLM.TervishoiukontaktiSubjekt",
      "path" : "EETISEncounterLM.TervishoiukontaktiSubjekt",
      "short" : "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)",
      "definition" : "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)",
      "requirements" : "Erialade loend, Ametite klassifikaator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "https://fhir.ee/ValueSet/erialad"
      }
    }]
  }
}

```
