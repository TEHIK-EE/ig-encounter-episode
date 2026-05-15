# Artifacts Summary - TEHIK FHIR IG Encounter and Episode of Care v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Tervishoiukontakt. TEST](StructureDefinition-EETISEncounterLM.md) | TEST model for Encounter |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EE TIS Encounter](StructureDefinition-ee-tis-encounter.md) | A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT) |
| [EE TIS Episode of Care](StructureDefinition-ee-tis-episode-of-care.md) | A profile for basic Episode of Care.(ee RAVIEPISOOD) |
| [EE TIS Stationary Encounter](StructureDefinition-ee-tis-encounter-stationary.md) | A profile for stationary encounter. (ee Statsionaarne TERVISHOIUKONTAKT) |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Any free form text needed](StructureDefinition-ee-tis-summary.md) | Extension for the need of adding textual summary or any other free form text to resource |
| [EoC or Encounter reference](StructureDefinition-ee-tis-eoc-or-encounter-reference.md) | Extension for the need of referencing episode of care or encounter |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example of ambulatory encounter](Encounter-encounter1.md) | Näidis ambulatoorsest tervishoiukontaktist: rutiinne esmane visiit kahe osalejaga. |
| [Example of episode of care](EpisodeOfCare-episodeofcare1.md) | Näidis raviepisoodist: ambulatoorne uroloogia raviepisood, mis on seotud ühe tervishoiukontaktiga. |

