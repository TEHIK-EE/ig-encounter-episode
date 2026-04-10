Logical: EETISEncounterLM
Parent: Base
Title: "Encounter model. Tervishoiukontakt. TEST"
Description: """TEST model for Encounter"""
Characteristics: #can-be-target

* TervishoiukontaktiID 1..1 string "Isiku eesnimi"
//*/  * ^binding.description = """
//siia tuleb kirjeldus kui vaja siduda
//"""
//  * ^binding.strength = #preferred
  * ^requirements = "vajadus"

* TTOISSiseneTervishoiukontaktiID 1..1 string "Isiku perekonnanimi"
//  * ^binding.description = """
//1.3.6.1.4.1.12559.11.10.1.3.1.42.18 eHDSIAdverseEventType (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/allergy-intolerance-type (HL7, required in HL7 FHIR)
//"""
//  * ^binding.strength = #preferred
  * ^requirements = "vajadus"

* AndmeteKonfidentsiaalsus 1..1 string "Isiku EE isikukood."
  * ^requirements = "identifikaatorite domeen"

* TervishoiukontaktiVersiooniID 1..1 string "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)"
//  * ^binding.description = """
//"""
//  * ^binding.strength = #preferred
  * ^requirements = "vajadus"

* TervishoiukontaktiPlaneeritudPeriood 0..1 CodeableConcept "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)"
  * ^binding.description = """
https://fhir.ee/ValueSet/tervishoiutootaja-kutse
"""
  * ^binding.strength = #preferred
  * ^requirements = "MEDRE kutse loend"

* TervishoiukontaktiSubjekt 1..1 CodeableConcept "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)"
  * ^binding.description = """
https://fhir.ee/ValueSet/erialad
"""
  * ^binding.strength = #preferred
  * ^requirements = "Erialade loend, Ametite klassifikaator"  