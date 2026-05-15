Profile: EETISEpisodeOfCare
Parent: EEBaseEpisodeOfCare
Id: ee-tis-episode-of-care
Title: "EE TIS Episode of Care"
Description: "A profile for basic Episode of Care.(ee RAVIEPISOOD)"
* meta.versionId ^short = "versiooni identifikaator. Automaatne versiooninumber, mis muutub iga andmekirje muudatusega (nt staatus, kuupäev, jne). "
* meta.versionId 1..1
* meta.security ^short = "Konfidentsiaalsus slice? patsiendile/arstile/eestkostjale"
* text ^short = "Episoodi vabatekstiline nimetus arsti poolt.TTO poolt pandud vabatekstiline nimetus. Väljakuvamise vaatest patsiendile - kui see on olemas, siis kuvada seda (on inimkeelsem patsiendile)."
* extension contains
    ExtensionEETISEoCorEncounterReference named relations 0..*
* identifier ^short = "Kas see oleks vaja sliceda?"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "When there is a need for local identifier and overall identifier, different systems must be used. (ee Unikaalne identifikaator TIS-is. Luuakse automaatselt ja jääb püsima kogu elutsükli jooksul.)"
* identifier ^slicing.ordered = false
* identifier contains
    ttoLocalIdentifier 1..1 and
    crossTtoIdentifier 1..1
* identifier ^short = "Identifier. (ee Unikaalne identifikaator, mis määratleb konkreetse raviepisoodi. Luuakse automaatselt ja jääb püsima kogu elutsükli jooksul.)"
* status ^short = "(ee Näitab episoodi hetkeolekut ehk millises olekutsüklis see parajasti on. Kohustuslik väli.HL7 LOENDi tõlge?)"
* statusHistory ^short = "(ee Loetleb varasemad olekud koos ajavahemikega, mil need kehtisid. Tekib süsteemis automaatselt muudatuste põhjal.)"
* statusHistory.status ^short = "Varasem Episoodi olek.Sama loend nagu episoodi staatusel"
* statusHistory.status 1..1
* statusHistory.period 1..1
* statusHistory.period ^short = "Varasema Episoodi oleku periood (alguse ja lõpu kuupäev ning kellaajad.)"
* type ^short = "(ee Kirjeldab, millise ravi- või hooldustüübiga on tegemist. Võib olla mitu paralleelselt. LOEND?)"
* period ^short = "(ee Määratleb episoodi alguse ja lõpu kuupäeva ning kellaaja. Vajalik kestvuse ja aruandluse jaoks.)"
* period.start 0..1
* period.end 0..1
* reason ^short = "(ee Selgitab, miks raviepisood loodi.)"
* reason.use ^short = "Määratleb põhjuse kasutusotstarbe, st millist rolli konkreetne põhjus episoodis täidab."
* reason.value ^short = "Tuletatakse Episoodiga seotud Tervishoiukontaktide diagnoosi peal (RHK 10 loendi järgi). (VIIDE diagnoositeenusele!)"
* diagnosis ^short = "(ee Loetleb diagnoosid või seisundid, mis on episoodiga seotud. Iga diagnoosi juures saab määrata rolli ja tähtsuse.)"
* diagnosis.use ^short = "Määrab diagnoosi rolli kogu Episoodi kontekstis (nt juhtiv vs kaasuv seisund). Võimaldab eristada põhiteekonda toetavaid või komplitseerivaid diagnoose.Kasutatakse eelkõige raviteekonna haldamisel ja kliinilisel analüüsil. LOEND!"
* diagnosis.condition ^short = "VIIDE diagnoosi-teenusele!"
* patient only Reference($ee-mpi-patient)
* managingOrganization only Reference(EEBaseOrganization)
* careManager only Reference(EEBasePractitioner or EEBasePractitionerRole)
* careManager ^short = "TTO (nt arst), kes vastutab patsiendi ravi koordineerimise eest episoodi vältel. TTO IS-i ja TTO sisese tööprotsessi kokkuleppe küsimus. Viide TTO-le vastavalt SPD andmestikule. Ei ole manuaalselt täidetav vaid TTO IS-is poolt automaatselt defineeritav ja määratav."
* careTeam ^short = "(ee Episoodiga seotud tervishoiutöötajad või meeskonnad.)"
//* referralRequest ^short = " (ee Viide saatekirjale või suunamisele, mille alusel episood algatati.)"
* account 0..0 //^short = "(ee Episoodiga seotud arveldus- või finantskonto.)"