Extension: ExtensionEETISSummary
Id: ee-tis-summary
Title: "Any free form text needed"
Description: "Extension for the need of adding textual summary or any other free form text to resource"
* ^version = "1.0.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* . ^short = "Used when there is a need to add textual summary, name or note related to patient's care."
* value[x] only string