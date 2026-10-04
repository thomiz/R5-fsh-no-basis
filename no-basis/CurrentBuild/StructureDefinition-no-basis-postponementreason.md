# no-basis-postponementreason - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-postponementreason**

## Extension: no-basis-postponementreason 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/structuredefinition/no-basis-postponementreason | *Version*:3.0.0-alpha |
| Draft as of 2026-10-04 | *Computable Name*:NoBasisPostponementReason |

The basis extension defines the reason for a postponement for example of an appointment or an encounter.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.basis|current/StructureDefinition/StructureDefinition-no-basis-postponementreason.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-postponementreason.csv), [Excel](StructureDefinition-no-basis-postponementreason.xlsx), [Schematron](StructureDefinition-no-basis-postponementreason.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-postponementreason",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://example.org/fhir/structuredefinition/no-basis-postponementreason",
  "version" : "3.0.0-alpha",
  "name" : "NoBasisPostponementReason",
  "title" : "no-basis-postponementreason",
  "status" : "draft",
  "date" : "2026-10-04T16:26:34+00:00",
  "description" : "The basis extension defines the reason for a postponement for example of an appointment or an encounter.",
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
      "fixedUri" : "https://example.org/fhir/structuredefinition/no-basis-postponementreason"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "The reason for postponing the appointment",
      "definition" : "The reason for postponing the appointment",
      "type" : [{
        "code" : "code"
      }],
      "mustSupport" : false,
      "isModifier" : false,
      "binding" : {
        "strength" : "preferred",
        "description" : "Volven",
        "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8446"
      }
    }]
  }
}

```
