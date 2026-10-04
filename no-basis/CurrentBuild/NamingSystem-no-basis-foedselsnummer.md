# no-basis-foedselsnummer - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-foedselsnummer**

## NamingSystem: no-basis-foedselsnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-foedselsnummer | *Version*:3.0.0-alpha |
| Active as of 2018-08-13 | *Computable Name*:Foedselsnummer |

 
Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-foedselsnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "url" : "http://hl7.no/fhir/NamingSystem/no-basis-foedselsnummer",
  "version" : "3.0.0-alpha",
  "name" : "Foedselsnummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-08-13",
  "responsible" : "Skatteetaten",
  "description" : "Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://hl7.no/fhir/NamingSystem/FNR",
    "preferred" : false
  },
  {
    "type" : "oid",
    "value" : "2.16.578.1.12.4.1.4.1",
    "preferred" : true
  }]
}

```
