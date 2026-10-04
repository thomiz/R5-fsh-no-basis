# no-basis-felleshjelpenummer - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-felleshjelpenummer**

## NamingSystem: no-basis-felleshjelpenummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-felleshjelpenummer | *Version*:3.0.0-alpha |
| Active as of 2018-10-26 | *Computable Name*:FellesHjelpenummer |

 
Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-felleshjelpenummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "url" : "http://hl7.no/fhir/NamingSystem/no-basis-felleshjelpenummer",
  "version" : "3.0.0-alpha",
  "name" : "FellesHjelpenummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Norsk helsenett",
  "description" : "Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://hl7.no/fhir/NamingSystem/FHNR",
    "preferred" : false
  },
  {
    "type" : "oid",
    "value" : "2.16.578.1.12.4.1.4.3",
    "preferred" : true
  }]
}

```
