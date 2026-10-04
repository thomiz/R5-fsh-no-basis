# no-basis-Substance - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Substance**

## Resource Profile: no-basis-Substance 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Substance | *Version*:3.0.0-alpha |
| Active as of 2019-07-03 | *Computable Name*:NoBasisSubstance |

 
Basis profile for Substances to be used in Norway. The profile is adapted to use FEST as source of information. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.basis|current/StructureDefinition/StructureDefinition-no-basis-Substance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Substance.csv), [Excel](StructureDefinition-no-basis-Substance.xlsx), [Schematron](StructureDefinition-no-basis-Substance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Substance",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Substance",
  "version" : "3.0.0-alpha",
  "name" : "NoBasisSubstance",
  "title" : "no-basis-Substance",
  "status" : "active",
  "date" : "2019-07-03",
  "description" : "Basis profile for Substances to be used in Norway. The profile is adapted to use FEST as source of information.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Substance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Substance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Substance",
      "path" : "Substance",
      "definition" : "A homogeneous material with a definite composition.\r\n\r\nThe profile is adapted to use FEST information for coding the substance."
    },
    {
      "id" : "Substance.code.concept.coding",
      "path" : "Substance.code.concept.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "openAtEnd"
      }
    },
    {
      "id" : "Substance.code.concept.coding:FEST-Substance",
      "path" : "Substance.code.concept.coding",
      "sliceName" : "FEST-Substance",
      "short" : "Substance defined in FEST",
      "definition" : "A reference to a substance defined in FEST. Using the Substance-id in FEST as code and the Substance name as display. When communicating with other systems in Norway FEST Id shouuld be provided.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Substance.code.concept.coding:FEST-Substance.system",
      "path" : "Substance.code.concept.coding.system",
      "short" : "FEST",
      "definition" : "FEST is the national DB",
      "min" : 1,
      "fixedUri" : "http://ehelse.no/fhir/CodeSystem/FEST"
    },
    {
      "id" : "Substance.code.concept.coding:FEST-Substance.code",
      "path" : "Substance.code.concept.coding.code",
      "short" : "Substance Id in FEST",
      "definition" : "The FEST Id is unique across versions of FEST.",
      "min" : 1
    },
    {
      "id" : "Substance.code.concept.coding:FEST-Substance.display",
      "path" : "Substance.code.concept.coding.display",
      "short" : "Substance name from FEST",
      "definition" : "The name of the substance as defiend in FEST.",
      "min" : 1
    }]
  }
}

```
