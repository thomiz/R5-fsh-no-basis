# no-basis-partof - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-partof**

## Extension: no-basis-partof 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/structuredefinition/no-basis-appointment/no-basis-partof | *Version*:3.0.0-alpha |
| Draft as of 2026-10-04 | *Computable Name*:NoBasisPartOf |

This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.basis|current/StructureDefinition/StructureDefinition-no-basis-partof.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-partof.csv), [Excel](StructureDefinition-no-basis-partof.xlsx), [Schematron](StructureDefinition-no-basis-partof.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-partof",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hl7.no/fhir/structuredefinition/no-basis-appointment/no-basis-partof",
  "version" : "3.0.0-alpha",
  "name" : "NoBasisPartOf",
  "title" : "no-basis-partof",
  "status" : "draft",
  "date" : "2026-10-04T16:26:34+00:00",
  "description" : "This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Appointment"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.no/fhir/structuredefinition/no-basis-appointment/no-basis-partof"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Appoinment partOf structure.",
      "definition" : "A larger appointment of which this particular appointment is a component or step.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Appointment"]
      }]
    }]
  }
}

```
