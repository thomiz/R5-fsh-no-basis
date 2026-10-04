# no-basis-dufnummer - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-dufnummer**

## NamingSystem: no-basis-dufnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-dufnummer | *Version*:3.0.0-alpha |
| Active as of 2018-10-26 | *Computable Name*:DUFnummer |

 
Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-dufnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "url" : "http://hl7.no/fhir/NamingSystem/no-basis-dufnummer",
  "version" : "3.0.0-alpha",
  "name" : "DUFnummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Utlendingsdirektoratet",
  "description" : "Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge. ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://hl7.no/fhir/NamingSystem/DUFN",
    "preferred" : false
  },
  {
    "type" : "oid",
    "value" : "2.16.578.1.12.4.1.4.5",
    "preferred" : true
  }]
}

```
