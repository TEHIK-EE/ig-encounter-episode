# EE TIS Encounter - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS Encounter**

## Resource Profile: EE TIS Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-encounter | *Version*:0.1.0 |
| Draft as of 2026-05-15 | *Computable Name*:EETISEncounter |

 
A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT) 

**Usages:**

* Refer to this Profile: [EoC or Encounter reference](StructureDefinition-ee-tis-eoc-or-encounter-reference.md)
* Examples for this Profile: [Encounter/encounter1](Encounter-encounter1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.encounterepisode|current/StructureDefinition/ee-tis-encounter)

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
  "description" : "A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT)",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://fhir.ee/base/StructureDefinition/ee-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.meta.versionId",
      "path" : "Encounter.meta.versionId",
      "short" : "(ee Versiooni identifikaator)"
    },
    {
      "id" : "Encounter.meta.security",
      "path" : "Encounter.meta.security",
      "short" : "Confidentiality for patient, practitioner and trustee. (ee Konfidentsiaalsus siia? HL7 codesystem. Seda saaks ka sliceda...? Konf.patsiendile/konf arstile/konf usaldusisikule, 3 slice.)"
    },
    {
      "id" : "Encounter.extension:summary",
      "path" : "Encounter.extension",
      "sliceName" : "summary",
      "short" : "Textual summary of encounter when needed. (ee Vabatekstiline kokkuvõte kontaktist.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary"]
      }]
    },
    {
      "id" : "Encounter.extension:relations",
      "path" : "Encounter.extension",
      "sliceName" : "relations",
      "short" : "Related encounter when needed. (ee KAS partOf LAHENDAKS SELLE VAJADUSE ÄRA?!?!?! )",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-eoc-or-encounter-reference"]
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "When there is a need for local identifier and across systems identifier, different systems must be used.",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Identifier for local systems and across systems. (ee Identifikaator TTO siseseks kasutamiseks ja IS üleselt. NB! Vaja erinevaid systemeid.)"
    },
    {
      "id" : "Encounter.identifier:ttoLocalIdentifier",
      "path" : "Encounter.identifier",
      "sliceName" : "ttoLocalIdentifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:crossTtoIdentifier",
      "path" : "Encounter.identifier",
      "sliceName" : "crossTtoIdentifier",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "(ee HL7 loend, vaja tõlget.)"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "(ee KLASS. Describes the form of encounter (|ambulatoorne|,|statsionaarne|; HL7 loendile mäping+tõlge? Fix kood per profiil?)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "short" : "(ee ERAKORRALISUS. |erakorraline|, |vältimatu|, |plaaniline| - kas saab HL7 loendit kasutada?)"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Types of encounter. (ee Tervishoiukontakti TÜÜP |visiit|,|videokonsultatsioon|, |email|, |telefonikonsultatsioon|, ja LIIK (|esmane|, |korduv|). ( VAJA LOENDIT kas korduva lahendada re-admissioniga? Kui see pole täidetud on alati esmane???)"
    },
    {
      "id" : "Encounter.type:encounterType",
      "path" : "Encounter.type",
      "sliceName" : "encounterType",
      "short" : "tervishoiukontakti tüüp (näiteks |visiit|,|videokonsultatsioon|, |email|, |telefonikonsultatsioon|)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.type:encounterRecurrence",
      "path" : "Encounter.type",
      "sliceName" : "encounterRecurrence",
      "short" : "kontakti liik (|esmane|, |korduv|)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "short" : "AMB.teenuste loend?????"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Patient reference from MPI. (ee VIIDE patsiendile, PÜT!)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
        "https://fhir.ee/base/StructureDefinition/ee-patient"]
      }]
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "short" : "EoC that is related to this encounter (ee Raviepisood, millega see kontakt seotud on)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "short" : "Refferral or other document that is related to this encounter. (ee SAATEKIRI või muu dokument, mis on seotud tervishoiukontaktiga. NB! ServiceRequest pole profileeritud.)"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "Use SPD when it is published! (ee TTO, kelle juures Tervishoiukontakt toimus.)",
      "min" : 1
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "Use references to SPD when it is published! (ee Tervishoiukontakti osalejad PEAKSID tulema SPD-st, siis kui see avaldatud on. SLICE muu abipersonal!))"
    },
    {
      "id" : "Encounter.participant.period",
      "path" : "Encounter.participant.period",
      "short" : "(ee Osaluse periood. Kui kaua osaleja ja patsient kontaktis olid.)"
    },
    {
      "id" : "Encounter.participant.actor",
      "path" : "Encounter.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/base/StructureDefinition/ee-practitioner",
        "https://fhir.ee/base/StructureDefinition/ee-related-person",
        "https://fhir.ee/base/StructureDefinition/ee-practitioner-role"]
      }]
    },
    {
      "id" : "Encounter.participant.actor.type",
      "path" : "Encounter.participant.actor.type",
      "short" : "(ee Osaluse tüüp. NB! vaja uut loendit? |sotsiaaltöötaja|,|tõlk|,|kogemusnõustaja| jne)"
    },
    {
      "id" : "Encounter.virtualService",
      "path" : "Encounter.virtualService",
      "max" : "0"
    },
    {
      "id" : "Encounter.actualPeriod",
      "path" : "Encounter.actualPeriod",
      "short" : "When encounter started and ended? (ee TEGELIK PERIOOD. Millal kontakt algas ja lõppes)"
    },
    {
      "id" : "Encounter.plannedStartDate",
      "path" : "Encounter.plannedStartDate",
      "short" : "When the encounter is supposed to start. (ee Kontakti planeeritud algusaeg)"
    },
    {
      "id" : "Encounter.plannedEndDate",
      "path" : "Encounter.plannedEndDate",
      "short" : "When the encounter is supposed to end. (ee Kontakti planeeeritud lõpuaeg)"
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "max" : "0"
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
      "id" : "Encounter.account",
      "path" : "Encounter.account",
      "max" : "0"
    },
    {
      "id" : "Encounter.dietPreference",
      "path" : "Encounter.dietPreference",
      "max" : "0"
    },
    {
      "id" : "Encounter.specialArrangement",
      "path" : "Encounter.specialArrangement",
      "max" : "0"
    },
    {
      "id" : "Encounter.specialCourtesy",
      "path" : "Encounter.specialCourtesy",
      "max" : "0"
    },
    {
      "id" : "Encounter.admission",
      "path" : "Encounter.admission",
      "short" : "Haiglaravi lõppemise tulemus - seisund, kuhu (koju/teise ttosse), asukoht, vabatekst (!?); (kas re-admissioniga võiks lahendada esmane/korduv?)"
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "Physical location of encounter (ee Füüsiline asukoht kus kontakt toimus (Muuta SPD-referentsiks kui valmis!)"
    }]
  }
}

```
