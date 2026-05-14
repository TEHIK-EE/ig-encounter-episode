Extension: ExtensionEETISSummary
Id: ee-tis-summary
Title: "Textual summary of care provided to patient"
Description: "Extension for the need of adding textual summary of care provided to patient"
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "Used when there is a need to add textual summary of patient's care."
* value[x] only string