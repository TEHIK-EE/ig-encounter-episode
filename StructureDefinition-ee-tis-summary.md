# Any free form text needed - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Any free form text needed**

## Extension: Any free form text needed 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary | *Version*:0.1.0 |
| Draft as of 2026-05-15 | *Computable Name*:ExtensionEETISSummary |

Extension for the need of adding textual summary or any other free form text to resource

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EE TIS Stationary Encounter](StructureDefinition-ee-tis-encounter-stationary.md), [EE TIS Encounter](StructureDefinition-ee-tis-encounter.md) and [EE TIS Episode of Care](StructureDefinition-ee-tis-episode-of-care.md)
* Examples for this Extension: [Encounter/encounter1](Encounter-encounter1.md) and [EpisodeOfCare/episodeofcare1](EpisodeOfCare-episodeofcare1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.encounterepisode|current/StructureDefinition/ee-tis-summary)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-summary.csv), [Excel](StructureDefinition-ee-tis-summary.xlsx), [Schematron](StructureDefinition-ee-tis-summary.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-summary",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary",
  "version" : "0.1.0",
  "name" : "ExtensionEETISSummary",
  "title" : "Any free form text needed",
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
  "description" : "Extension for the need of adding textual summary or any other free form text to resource",
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
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "EpisodeOfCare"
  },
  {
    "type" : "element",
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Used when there is a need to add textual summary, name or note related to patient's care."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
