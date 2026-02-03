# EoC or Encounter reference - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EoC or Encounter reference**

## Extension: EoC or Encounter reference 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference | *Version*:0.1.0 |
| Draft as of 2026-02-03 | *Computable Name*:ExtensionEETISEoCorEncounterReference |

Extension for the need of referencing episode of care or encounter in EETISEpisodeOfCare profile

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EE TIS Episode of Care](StructureDefinition-ee-tis-episode-of-care.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-encounter-episode|current/StructureDefinition/ee-tis-eoc-or-encounter-reference)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-eoc-or-encounter-reference.csv), [Excel](StructureDefinition-ee-tis-eoc-or-encounter-reference.xlsx), [Schematron](StructureDefinition-ee-tis-eoc-or-encounter-reference.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-eoc-or-encounter-reference",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference",
  "version" : "0.1.0",
  "name" : "ExtensionEETISEoCorEncounterReference",
  "title" : "EoC or Encounter reference",
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
  "description" : "Extension for the need of referencing episode of care or encounter in EETISEpisodeOfCare profile",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "EpisodeOfCare"
    },
    {
      "type" : "element",
      "expression" : "DocumentReference"
    },
    {
      "type" : "element",
      "expression" : "Encounter"
    },
    {
      "type" : "element",
      "expression" : "Observation"
    },
    {
      "type" : "element",
      "expression" : "CommunicationRequest"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Used when there is a need to reference encounter or episode of care"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-encounter",
              "https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-episode-of-care"
            ]
          }
        ]
      }
    ]
  }
}

```
