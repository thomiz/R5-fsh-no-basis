Profile: NoBasisMedication
Parent: Medication
Id: no-basis-Medication
Title: "no-basis-Medication"
Description: "Basis profile for medication to be used in Norway. The profile is adapted to use FEST as source of indoseFormation."
* ^version = "2.0.0"
* ^status = #active
* ^date = "2019-07-03"
* . ^definition = "This resource is primarily used for the identification and definition of a medication. It covers the ingredients and the packaging for a medication.\r\n\r\nThe resource has been changed to support norwegian FEST. The following changes are done:\r\n- it is required to use a code identifying the medication in FEST. Special use when medication not present in FEST.\r\n- ATC is a prefered code and should allways be identied if medication is present in FEST.\r\n- isBrand is a required filed. \r\n- doseForm is required and will follow norwegian codingsystem\r\n- the profile is extended with no-basis-Prescriptiongroup"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NoBasisPrescriptiongroup named prescriptiongroup 0..*
* extension[prescriptiongroup] ^definition = "Prescription group is refered in IDMP as Legal status of supply."
* code 1..
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    FEST-Medication 1..1 and
    ATC 0..1
* code.coding[FEST-Medication] ^short = "Medication defined in FEST"
* code.coding[FEST-Medication] ^definition = "Medication is one of the following types: LegemiddelVirkestoff, LegemiddelMerkevare, Legemiddelpakning, Legemiddeldose."
* code.coding[FEST-Medication].system 1..
* code.coding[FEST-Medication].system = "http://ehelse.no/fhir/CodeSystem/FEST" (exactly)
* code.coding[FEST-Medication].display 1..
* code.coding[ATC] ^short = "ATC"
* code.coding[ATC] ^definition = "Medications ATC code if present."
* code.coding[ATC].system 1..
* code.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* code.coding[ATC].code 1..
* code.coding[ATC].display 1..
* doseForm 1..
* doseForm ^short = "Code from volven 7448"
* doseForm ^definition = "Code as defined in"
* doseForm.coding 1..
* doseForm.coding ^slicing.discriminator.type = #value
* doseForm.coding ^slicing.discriminator.path = "system"
* doseForm.coding ^slicing.rules = #open
* doseForm.coding contains FEST-Form 0..1
* doseForm.coding[FEST-Form] ^short = "Form given by norwegian codingsystem"
* doseForm.coding[FEST-Form] ^definition = "Norwegian coding of the medication doseForm, as given in FEST and based on codingsystem 7448."
* doseForm.coding[FEST-Form].system 1..
* doseForm.coding[FEST-Form].system = "urn:oid:2.16.578.1.12.4.1.1.7448" (exactly)
* doseForm.coding[FEST-Form].code 1..
* doseForm.coding[FEST-Form].display 1..