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

* TervishoiukontaktiPlaneeritudPeriood 0..1 string "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)"
  /* * ^binding.description = """
https://fhir.ee/ValueSet/tervishoiutootaja-kutse
"""
  * ^binding.strength = #preferred
  * ^requirements = "MEDRE kutse loend" */

* TervishoiukontaktiSubjekt 1..1  string "Isiku kontaktandmed (kontakti tüüp ja väärtus), mis kehtivad üle kõikide töökohtade (nt mobiiltelefon)"
  //* ^binding.description = """
//https://fhir.ee/ValueSet/erialad
//"""
 // * ^binding.strength = #preferred
 // * ^requirements = "Erialade loend, Ametite klassifikaator"  

* TervishoiukontaktiOsalised 1..1 string "tbc"
  * ^requirements = "vajadus"

* MuuAbipersonalOsalised 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiTeenusepakkuja 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiToimumiseAsukoht 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiStaatus 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiLiik 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiErakorralisus 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiKlass 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiTyyp 1..1 string "tbc"
  * ^requirements = "vajadus"

* TegelikPeriood 1..1 string "tbc"
  * ^requirements = "vajadus"

* SaabumiseViis 1..1 string "tbc"
  * ^requirements = "vajadus"

* Episood 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiDiagnoos 1..1 string "tbc"
  * ^requirements = "vajadus"

* HaiglaraviLoppemiseTulemus 1..1 string "tbc"
  * ^requirements = "vajadus"

* SaatekirjaAndmed 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiKokkuvoteRavist 1..1 string "tbc"
  * ^requirements = "vajadus"
