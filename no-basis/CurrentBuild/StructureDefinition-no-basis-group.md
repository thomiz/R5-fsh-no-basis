# no-basis-group - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-group**

## Extension: no-basis-group 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/structuredefinition/no-basis-appointment/no-basis-group | *Version*:3.0.0-alpha |
| Draft as of 2026-10-04 | *Computable Name*:NoBasisGroup |

The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.basis|current/StructureDefinition/StructureDefinition-no-basis-group.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-group.csv), [Excel](StructureDefinition-no-basis-group.xlsx), [Schematron](StructureDefinition-no-basis-group.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-group",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hl7.no/fhir/structuredefinition/no-basis-appointment/no-basis-group",
  "version" : "3.0.0-alpha",
  "name" : "NoBasisGroup",
  "title" : "no-basis-group",
  "status" : "draft",
  "date" : "2026-10-04T16:26:34+00:00",
  "description" : "The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots.",
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
      "path" : "Extension",
      "max" : "1",
      "mustSupport" : false,
      "isModifier" : false
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.no/fhir/structuredefinition/no-basis-appointment/no-basis-group"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "The appointment is a group session.",
      "type" : [{
        "code" : "boolean"
      }],
      "defaultValueBoolean" : false,
      "mustSupport" : false,
      "isModifier" : false
    }]
  }
}

```
