# no-basis-kommunenummer - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-kommunenummer**

## NamingSystem: no-basis-kommunenummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-kommunenummer | *Version*:3.0.0-alpha |
| Active as of 2018-10-26 | *Computable Name*:Kommunenummer |

 
Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-kommunenummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "url" : "http://hl7.no/fhir/NamingSystem/no-basis-kommunenummer",
  "version" : "3.0.0-alpha",
  "name" : "Kommunenummer",
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
    "value" : "http://hl7.no/fhir/NamingSystem/kommunenummer",
    "preferred" : false
  },
  {
    "type" : "uri",
    "value" : "https://register.geonorge.no/subregister/sosi-kodelister/kartverket/kommunenummer-alle",
    "preferred" : true
  },
  {
    "type" : "uri",
    "value" : "urn:oid:2.16.578.1.12.4.1.1.3402",
    "preferred" : false
  }]
}

```
