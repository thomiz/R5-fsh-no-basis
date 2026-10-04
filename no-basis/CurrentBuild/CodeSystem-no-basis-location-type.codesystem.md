# no-basis-location-type.codesystem - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-location-type.codesystem**

## CodeSystem: no-basis-location-type.codesystem 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/CodeSystem/no-basis-location-type | *Version*:3.0.0-alpha |
| Draft as of 2021-12-16 | *Computable Name*:NoBasisLocationType |

 
Additional codes for location.type used by no-basis-Location 

 This Code system is referenced in the content logical definition of the following value sets: 

* [no-basis-location-type.valueset](ValueSet-no-basis-location-type.valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-basis-location-type.codesystem",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2019-05-07T00:00:00+00:00"
  },
  "url" : "http://hl7.no/fhir/CodeSystem/no-basis-location-type",
  "version" : "3.0.0-alpha",
  "name" : "NoBasisLocationType",
  "title" : "no-basis-location-type.codesystem",
  "status" : "draft",
  "date" : "2021-12-16T00:00:00+00:00",
  "description" : "Additional codes for location.type used by no-basis-Location",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "video",
    "display" : "Video",
    "definition" : "Any two-way video+audio communication/conference system"
  },
  {
    "code" : "telephone",
    "display" : "Telephone",
    "definition" : "Telephone or other two-way audio communication"
  }]
}

```
