Profile: NoBasisSubstance
Parent: Substance
Id: no-basis-Substance
Title: "no-basis-Substance"
Description: "Basis profile for Substances to be used in Norway. The profile is adapted to use FEST as source of information."
* ^version = "2.0.0"
* ^status = #active
* ^date = "2019-07-03"
* . ^definition = "A homogeneous material with a definite composition.\r\n\r\nThe profile is adapted to use FEST information for coding the substance."
* code.concept.coding ^slicing.discriminator.type = #value
* code.concept.coding ^slicing.discriminator.path = "system"
* code.concept.coding ^slicing.rules = #openAtEnd
* code.concept.coding contains FEST-Substance 0..1
* code.concept.coding[FEST-Substance] ^short = "Substance defined in FEST"
* code.concept.coding[FEST-Substance] ^definition = "A reference to a substance defined in FEST. Using the Substance-id in FEST as code and the Substance name as display. When communicating with other systems in Norway FEST Id shouuld be provided."
* code.concept.coding[FEST-Substance].system 1..
* code.concept.coding[FEST-Substance].system = "http://ehelse.no/fhir/CodeSystem/FEST" (exactly)
* code.concept.coding[FEST-Substance].system ^short = "FEST"
* code.concept.coding[FEST-Substance].system ^definition = "FEST is the national DB"
* code.concept.coding[FEST-Substance].code 1..
* code.concept.coding[FEST-Substance].code ^short = "Substance Id in FEST"
* code.concept.coding[FEST-Substance].code ^definition = "The FEST Id is unique across versions of FEST."
* code.concept.coding[FEST-Substance].display 1..
* code.concept.coding[FEST-Substance].display ^short = "Substance name from FEST"
* code.concept.coding[FEST-Substance].display ^definition = "The name of the substance as defiend in FEST."