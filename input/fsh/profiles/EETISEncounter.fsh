Profile: EETISEncounter
Parent: EEBaseEncounter
Id: ee-tis-encounter
Title: "EE TIS Encounter"
Description: "A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT)"
* extension contains
    ExtensionEETISSummary named summary 0..1
* meta.versionId ^short = "versiooni identifikaator"
* meta.security ^short = "Konfidentsiaalsus siia? HL7 codesystem. Seda saaks ka sliceda...? Konf.patsiendile/konf arstile/konf usaldusisikule, 3 slice."
* identifier ^short = "Kas see oleks vaja sliceda?"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "When there is a need for local identifier and overall identifier, different systems must be used."
* identifier ^slicing.ordered = false
* identifier contains
    ttoLocalIdentifier 0..1 and
    crossTtoIdentifier 0..1
* status ^short = "HL7 loend"
* class 1..1
* class ^short = "(ee KLASS. Describes the form of encounter (|ambulatoorne|,|statsionaarne|; HL7 loendile mäping+tõlge? Fix kood per profiil?)"
* priority ^short = "(ee ERAKORRALISUS. |erakorraline|, |vältimatu|, |plaaniline|)"
* type ^short = "Tervishoiukontakti TÜÜP ja LIIK (|esmane|, |korduv|). Type or aim of encounter. (|visiit|,|videokonsultatsioon|, |email|, |telefonikonsultatsioon|,... VAJA LOENDIT)"
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "system"
* type ^slicing.rules = #open
* type ^slicing.description = "When there is a need for local identifier and overall identifier, different systems must be used."
* type ^slicing.ordered = false
* type contains
    encounterType 0..1 and
    encounterRecurrence 0..1
* plannedStartDate ^short = "(ee Kontakti planeeritud algusaeg)"
* plannedEndDate ^short = "(ee Kontakti planeeeritud lõpuaeg)"
* serviceType ^short = "AMB.teenuste loend?"
* subject only Reference($ee-mpi-patient or EEBasePatient)
//* basedOn only Reference(ServiceRequest)
* basedOn ^short = "Refferral or other document that is related to this encounter. (ee SAATEKIRI või muu dokument, mis on seotud tervishoiukontaktiga. NB! ServiceRequest pole profileeritud.)"
* participant.actor only Reference(EEBasePractitioner or EEBaseRelatedPerson or EEBasePractitionerRole)
* participant ^short = "Use references to SPD when it is published! (ee Tervishoiukontakti osalejad PEAKSID tulema SPD-st, siis kui see avaldatud on. SLICE muu abipersonal!))"
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
* admission ^short = "Describes how was the condition or where the patient went after discharge (ee Kirjeldab, kuhu patsient suunati või milline oli seisund lahkumisel.)"
* episodeOfCare ^short = "EoC that is related to this encounter (ee Raviepisood, millega see kontakt seotud on)"
* episodeOfCare 1..1 
* specialArrangement 0..0
* specialCourtesy 0..0
* dietPreference 0..0
* account 0..0
