Logical: EETISEncounterLM
Parent: Base
Title: "Tervishoiukontakt. TEST"
Description: """TEST model for Encounter"""
//Characteristics: #can-be-target

* TervishoiukontaktiID 1..1 string "TIS poolt andmete vastuvõtmisel  genereeritud unikaalne identifikaator."
//*/  * ^binding.description = """
//siia tuleb kirjeldus kui vaja siduda
//"""
//  * ^binding.strength = #preferred
  * ^requirements = "vajadus"

* TTOISSiseneTervishoiukontaktiID 1..1 string "TTO poolt genereeritud TTO IS-i Tervishoiukontakti ID vastavalt iga TTO IS-i sisese unikaalse nummerdamise reeglitele. "
//  * ^binding.description = """
//1.3.6.1.4.1.12559.11.10.1.3.1.42.18 eHDSIAdverseEventType (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/allergy-intolerance-type (HL7, required in HL7 FHIR)
//"""
//  * ^binding.strength = #preferred
  * ^requirements = "vajadus"

* AndmeteKonfidentsiaalsus 1..1 string "Tervishoiukontakti andmete konfidentsiaalsus erinevatele rollidele."
  * ^requirements = "identifikaatorite domeen"

* TervishoiukontaktiVersiooniID 1..1 string "Automaatne versiooninumber, mis muutub iga andmekirje muudatusega (nt staatus, kuupäev, jne). "
//  * ^binding.description = """
//"""
//  * ^binding.strength = #preferred
  * ^requirements = "vajadus"

* TervishoiukontaktiPlaneeritudPeriood 0..1 string "Alguse- ja lõpukuupäev ning kellaaeg, millal Tervishoiukontakt on planeeritud toimuma."
  /* * ^binding.description = """
https://fhir.ee/ValueSet/tervishoiutootaja-kutse
"""
  * ^binding.strength = #preferred
  * ^requirements = "MEDRE kutse loend" */

* TervishoiukontaktiSubjekt 1..1  EEMPIPatientVerified "Patsient, kes on Tervishoiukontaktiga seotud."
  //* ^binding.description = """
//https://fhir.ee/ValueSet/erialad
//"""
 // * ^binding.strength = #preferred
 // * ^requirements = "Erialade loend, Ametite klassifikaator"  

* TervishoiukontaktiOsalised 1..1 string "TTO-st isikud, kes osalesid Tervishoiukontaktis (nt arst, õde, dokumenteerija)."
  * ^requirements = "vajadus"

* MuuAbipersonalOsalised 1..1 string "Muu abipersonal või osalised, kes Tervishoiukontaktiga seotud olid. Võimaldab Tervishoiukontakti andmestikku lisada isikuid, kes Tervishoiukontaktis on olulised välja tuua (nt tõlk, sotsiaaltöötaja, jne)."
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

* Episood 1..1 EETISEpisodeOfCare "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiDiagnoos 1..1 string "tbc"
  * ^requirements = "vajadus"

* HaiglaraviLoppemiseTulemus 1..1 string "tbc"
  * ^requirements = "vajadus"

* SaatekirjaAndmed 1..1 string "tbc"
  * ^requirements = "vajadus"

* TervishoiukontaktiKokkuvoteRavist 1..1 string "tbc"
  * ^requirements = "vajadus"
