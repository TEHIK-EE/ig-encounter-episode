Profile: EETISEpisodeOfCare
Parent: EEBaseEpisodeOfCare
Id: ee-tis-episode-of-care
Title: "EE TIS Episode of Care"
Description: "A profile for basic Episode of Care.(ee RAVIEPISOOD)"
* extension contains
    ExtensionEETISEoCorEncounterReference named relations 0..*
* identifier 0..1 
* identifier ^short = "Identifier. (ee Unikaalne identifikaator, mis määratleb konkreetse raviepisoodi. Luuakse automaatselt ja jääb püsima kogu elutsükli jooksul.)"
* status ^short = "(ee Näitab episoodi hetkeolekut ehk millises olekutsüklis see parajasti on. Kohustuslik väli.HL7 LOENDi tõlge?)"
* statusHistory ^short = "(ee Loetleb varasemad olekud koos ajavahemikega, mil need kehtisid. Tekib süsteemis automaatselt muudatuste põhjal.)"
* type ^short = "(ee Kirjeldab, millise ravi- või hooldustüübiga on tegemist. Võib olla mitu paralleelselt. LOEND?)"
* period ^short = "(ee Määratleb episoodi alguse ja lõpu kuupäeva ning kellaaja. Vajalik kestvuse ja aruandluse jaoks.)"
* reason ^short = "(ee Selgitab, miks raviepisood loodi.)"
* diagnosis ^short = "(ee Loetleb diagnoosid või seisundid, mis on episoodiga seotud. Iga diagnoosi juures saab määrata rolli ja tähtsuse.)"
* patient only Reference($ee-mpi-patient)
* managingOrganization only Reference(EEBaseOrganization)
* careManager only Reference(EEBasePractitioner or EEBasePractitionerRole)
* careTeam ^short = "(ee Episoodiga seotud tervishoiutöötajad või meeskonnad.)"
* referralRequest ^short = " (ee Viide saatekirjale või suunamisele, mille alusel episood algatati.)"
* account ^short = "(ee Episoodiga seotud arveldus- või finantskonto.)"