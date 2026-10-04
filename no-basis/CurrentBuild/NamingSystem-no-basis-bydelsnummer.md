# no-basis-bydelsnummer - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-bydelsnummer**

## NamingSystem: no-basis-bydelsnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-bydelsnummer | *Version*:3.0.0-alpha |
| Active as of 2018-10-26 | *Computable Name*:Bydelsnummer |

 
Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-bydelsnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "url" : "http://hl7.no/fhir/NamingSystem/no-basis-bydelsnummer",
  "version" : "3.0.0-alpha",
  "name" : "Bydelsnummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Statistisk sentralbyrå",
  "description" : "Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://hl7.no/fhir/NamingSystem/bydelsnummer",
    "preferred" : false
  },
  {
    "type" : "uri",
    "value" : "http://data.ssb.no/api/klass/v1/versions/919",
    "preferred" : true
  },
  {
    "type" : "uri",
    "value" : "urn:oid:2.16.578.1.12.4.1.1.3403",
    "preferred" : false
  }]
}

```
