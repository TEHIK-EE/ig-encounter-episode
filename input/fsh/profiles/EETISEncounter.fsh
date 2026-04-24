Profile: EETISEncounter
Parent: EEBaseEncounter
Id: ee-tis-encounter
Title: "EE TIS Encounter"
Description: "A profile for basic encounter. (ee TERVISHOIUKONTAKT v KONTAKT)"

* identifier ^short = "Kas see oleks vaja sliceda?"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "When there is a need for inhouse identifier and overall identifier, different systems must be used."
* identifier ^slicing.ordered = false
* identifier contains
    ttoInhouseIdentifier 0..1 and
    crossTtoIdentifier 0..1
* status ^short = "Kas on vaja HL7 LOEND tõlkida? Või äkki ikkagi pole?"
* class 1..1
* class ^short = "Describes the form of encounter (|ambulatoorne|,|statsionaarne|, |kiirabi|... HL7 loendile mäping+tõlge?)"
* type ^short = "Type or aim of encounter. (|ravi|,|erakorraline|, |ennetus|... VAJA LOENDIT)"
* subject only Reference($ee-mpi-patient or EEBasePatient)
* participant.actor only Reference(EEBasePractitioner or EEBaseRelatedPerson or EEBasePractitionerRole)
* participant ^short = "Use references to SPD when it is published!"
* actualPeriod ^short = "When encounter started and ended? (ee Millal kontakt algas ja lõppes)"
* location.location only Reference(EEBaseLocation)
* location ^short = "Physical location of encounter (ee Füüsiline asukoht kus kontakt toimus (AGA KUI ON VIRTUAALNE?)"
* reason ^short = "Reason(s) for encounter (ee Põhjused, miks tervishoiukontakt toimus)"
* diagnosis ^short = "All diagnosis that are related to this encounter (ee Kõik diagnoosid, mis on seotud tervishoiukontaktiga.)"
* serviceProvider only Reference(EEBaseOrganization)
* admission ^short = "Describes how was the condition or where the patient went after discharge (ee Kirjeldab, kuhu patsient suunati või milline oli seisund lahkumisel.)"
* episodeOfCare ^short = "EoC that is related to this encounter (ee Raviepisood, millega see kontakt seotud on)"