Extension: ExtensionEETISEoCorEncounterReference
Id: ee-tis-eoc-or-encounter-reference
Title: "EoC or Encounter reference"
Description: "Extension for the need of referencing episode of care or encounter in EETISEpisodeOfCare profile"
Parent: http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* . ^short = "Used when there is a need to reference encounter or episode of care"
* value[x] only Reference(EETISEncounter or EETISEpisodeOfCare)