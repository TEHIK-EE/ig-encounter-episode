Profile: EETISEncounter
Parent: EEBaseEncounter
Id: ee-tis-encounter
Title: "EE TIS Encounter"
Description: "A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT)"
* extension contains
    ExtensionEETISSummary named summary 0..1 and
    ExtensionEETISEoCorEncounterReference named relations 0..*
* extension[summary] ^short = "Textual summary of encounter when needed. (ee Vabatekstiline kokkuvõte kontaktist.)"    
* extension[relations] ^short = "Related encounter when needed. (ee KAS partOf LAHENDAKS SELLE VAJADUSE ÄRA?!?!?! )"
* meta.versionId ^short = "(ee Versiooni identifikaator)"
* meta.security ^short = "Confidentiality for patient, practitioner and trustee. (ee Konfidentsiaalsus siia? HL7 codesystem. Seda saaks ka sliceda...? Konf.patsiendile/konf arstile/konf usaldusisikule, 3 slice.)"
* identifier ^short = "Identifier for local systems and across systems. (ee Identifikaator TTO siseseks kasutamiseks ja IS üleselt. NB! Vaja erinevaid systemeid.)"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "When there is a need for local identifier and across systems identifier, different systems must be used."
* identifier ^slicing.ordered = false
* identifier contains
    ttoLocalIdentifier 0..1 and
    crossTtoIdentifier 0..1
* status ^short = "(ee HL7 loend, vaja tõlget.)"
* class 1..1
* class ^short = "(ee KLASS. Describes the form of encounter (|ambulatoorne|,|statsionaarne|; HL7 loendile mäping+tõlge? Fix kood per profiil?)"
* priority ^short = "(ee ERAKORRALISUS. |erakorraline|, |vältimatu|, |plaaniline| - kas saab HL7 loendit kasutada?)"
* type ^short = "Types of encounter. (ee Tervishoiukontakti TÜÜP |visiit|,|videokonsultatsioon|, |email|, |telefonikonsultatsioon|, ja LIIK (|esmane|, |korduv|). ( VAJA LOENDIT kas korduva lahendada re-admissioniga? Kui see pole täidetud on alati esmane???)"
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "system"
* type ^slicing.rules = #open
* type ^slicing.ordered = false
* type contains
    encounterType 0..1 and
    encounterRecurrence 0..1
* type[encounterType] ^short = "tervishoiukontakti tüüp (näiteks |visiit|,|videokonsultatsioon|, |email|, |telefonikonsultatsioon|)"
* type[encounterRecurrence] ^short = "kontakti liik (|esmane|, |korduv|)"
* plannedStartDate ^short = "When the encounter is supposed to start. (ee Kontakti planeeritud algusaeg)"
* plannedEndDate ^short = "When the encounter is supposed to end. (ee Kontakti planeeeritud lõpuaeg)"
* serviceType ^short = "AMB.teenuste loend?????"
* subject only Reference($ee-mpi-patient or EEBasePatient)
* subject ^short = "Patient reference from MPI. (ee VIIDE patsiendile, PÜT!)"
//* basedOn only Reference(ServiceRequest)
* basedOn ^short = "Refferral or other document that is related to this encounter. (ee SAATEKIRI või muu dokument, mis on seotud tervishoiukontaktiga. NB! ServiceRequest pole profileeritud.)"
* participant.actor only Reference(EEBasePractitioner or EEBaseRelatedPerson or EEBasePractitionerRole)
* participant.actor.type ^short = "(ee Osaluse tüüp. NB! vaja uut loendit? |sotsiaaltöötaja|,|tõlk|,|kogemusnõustaja| jne)"
* participant ^short = "Use references to SPD when it is published! (ee Tervishoiukontakti osalejad PEAKSID tulema SPD-st, siis kui see avaldatud on. SLICE muu abipersonal!))"
* participant.period ^short = "(ee Osaluse periood. Kui kaua osaleja ja patsient kontaktis olid.)"
* actualPeriod ^short = "When encounter started and ended? (ee TEGELIK PERIOOD. Millal kontakt algas ja lõppes)"
* location.location only Reference(EEBaseLocation)
* location ^short = "Physical location of encounter (ee Füüsiline asukoht kus kontakt toimus (Muuta SPD-referentsiks kui valmis!)"
* reason ^short = "Reason(s) for encounter (ee Põhjused, miks tervishoiukontakt toimus)"
//* reason.value only CodeableReference(Condition)
* diagnosis ^short = "All diagnosis that are related to this encounter (ee Kõik diagnoosid, mis on seotud tervishoiukontaktiga.)"
//* diagnosis.condition only CodeableReference(Condition)
* serviceProvider only Reference(EEBaseOrganization)
* serviceProvider 1..1
* serviceProvider ^short = "Use SPD when it is published! (ee TTO, kelle juures Tervishoiukontakt toimus.)"
* admission ^short = "Haiglaravi lõppemise tulemus - seisund, kuhu (koju/teise ttosse), asukoht, vabatekst (!?); (kas re-admissioniga võiks lahendada esmane/korduv?)"
* episodeOfCare ^short = "EoC that is related to this encounter (ee Raviepisood, millega see kontakt seotud on)"
* episodeOfCare 1..1 
* specialArrangement 0..0
* specialCourtesy 0..0
* dietPreference 0..0
* account 0..0
* virtualService 0..0
* length 0..0
