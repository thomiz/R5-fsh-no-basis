# Home - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ImplementationGuide/hl7.fhir.no.basis | *Version*:3.0.0-alpha |
| Active as of 2026-10-04 | *Computable Name*:NoBasis |

# Introduction

| | |
| :--- | :--- |
| Publish date | 2023-04-28 |
| IG namespace | http://hl7.no/fhir/ImplementationGuide/no-basis-ImplementationGuide-v300-a |
| Latest package definition | https://simplifier.net/packages/hl7.fhir.no.basis/3.0.0-alpha |
| Last bugfix | 2023-04-28 |

The Norwegian base profiles (no-basis) are developed by HL7 Norway and The Norwegian Directorate of eHealth in cooperation with the industry. The profiles are use-case independent and have several purposes:

* Can be used directly in use cases where the use-case don't need additional information or restrictions
* Can be used as base for further profiling in use-cases where additional specification of the content is needed (national profiles). In this case the base profiles should be used as a base for national profiles developed by the user
* Can be used as inspiration for use-case specific profiling

The basis profiles are open, in effect it does not add any restrictions to the information content beyond what is necessary to apply FHIR resources in Norwegian context. The base profiles typically defines necessary identifiers and coding commonly used in Norway.

The model depicted below visualizes the role of Norwegian base profiles.

* The top level are the FHIR resources as defined by HL7 International.
* The Norwegian base profiles describes the minimum restrictions necessary to use HL7 FHIR in Norwegian context independent of use-case.
* The national domain profiles specifies any reuseable patterns within a given use-case. This can for example be what information elements in Patient should be supported when exchanging patient data, or how Medication.dosage should be descried in an integration between an EHR and a charting system.
* The implemented profiles represents the implemented FHIR resources implemented in a given clinial application.

 ![](https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/profilering-hierarki.PNG)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.no.basis",
  "url" : "http://hl7.no/fhir/ImplementationGuide/hl7.fhir.no.basis",
  "version" : "3.0.0-alpha",
  "name" : "NoBasis",
  "status" : "active",
  "date" : "2026-10-04T16:26:34+00:00",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "packageId" : "hl7.fhir.no.basis",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.4.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-derived-Person.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/derived-Person"
      },
      "name" : "derived-Person",
      "description" : "Derived person from no-basis-Person for Norwegian Person information.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-Direktoratet-for-eHelse-Organization.html"
      }],
      "reference" : {
        "reference" : "Organization/Direktoratet-for-eHelse-Organization"
      },
      "name" : "Direktoratet-for-eHelse-Organization",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-EspenEksempel.html"
      }],
      "reference" : {
        "reference" : "Patient/EspenEksempel"
      },
      "name" : "EspenEksempel",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-JanniceSoreng.html"
      }],
      "reference" : {
        "reference" : "Patient/JanniceSoreng"
      },
      "name" : "JanniceSoreng",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-JanniceSorengTo.html"
      }],
      "reference" : {
        "reference" : "Patient/JanniceSorengTo"
      },
      "name" : "JanniceSorengTo",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-Magnar-Komann-Practitioner.html"
      }],
      "reference" : {
        "reference" : "Practitioner/Magnar-Komann-Practitioner"
      },
      "name" : "Magnar-Komann-Practitioner",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Address.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Address"
      },
      "name" : "no-basis-Address",
      "description" : "Basisprofil for Norwegian Address information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-address-official.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-address-official"
      },
      "name" : "no-basis-address-official",
      "description" : "Defines the concept of an officialy registered address in Norway. Usually this will be the adress registered in \"Folkeregisteret\" for persons or \"Enhetsregisteret\" for organizations.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-AllergyIntolerance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-AllergyIntolerance"
      },
      "name" : "no-basis-AllergyIntolerance",
      "description" : "Basis profile for allergy intolerance, to be used in Norway. The profile is adapted to support the norwegian standard for critical information (KI standard).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Appointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Appointment"
      },
      "name" : "no-basis-Appointment",
      "description" : "Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) must be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-AppointmentResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-AppointmentResponse"
      },
      "name" : "no-basis-AppointmentResponse",
      "description" : "Basisprofil for Norwegian AppointmentResponse information. Defined by HL7 Norway. Should be used as a basis for further profiling in use-cases where specific appointment respons information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-bydelsnummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-bydelsnummer"
      },
      "name" : "no-basis-bydelsnummer",
      "description" : "Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Composition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Composition"
      },
      "name" : "no-basis-Composition",
      "description" : "Basisprofil for Norwegian Composition. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to the relevant use-case.\n\nThe profile sets the absolute minimum requirements, identifies the extensions and terminology which can be present.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-no-basis-connection-type.codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/no-basis-connection-type.codesystem"
      },
      "name" : "no-basis-connection-type.codesystem",
      "description" : "Codes to describe Norwegian message based communication protocols.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-connection-type.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-connection-type.valueset"
      },
      "name" : "no-basis-connection-type.valueset",
      "description" : "ValueSet for connection types used in Endpoint definition. Includes all Norwegian specific types (no-basis-connection-type) and the extensible HL7 CodeSystem for connection-type",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-dnummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-dnummer"
      },
      "name" : "no-basis-dnummer",
      "description" : "Personidentifikator for personer som ikke har fødselsnummer og som ikke skal registreres som bosatt i Norge. The D-nummer of the patient. (assigned by the norwegian Skatteetaten)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-DocumentReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-DocumentReference"
      },
      "name" : "no-basis-DocumentReference",
      "description" : "Basisprofil for Norwegian DocumentReference. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to specification relevant to the use-case.\n\nThe profile sets the absolute minimum requirements when searching, fething and storing documents within the healtcare domain. It sets the basic requirements for extensions and terminology which can be present.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-documentreference-type.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-documentreference-type.valueset"
      },
      "name" : "no-basis-documentreference-type.valueset",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-dufnummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-dufnummer"
      },
      "name" : "no-basis-dufnummer",
      "description" : "Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Endpoint.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Endpoint"
      },
      "name" : "no-basis-Endpoint",
      "description" : "Basisprofil for Norwegian Endpoint information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Endpoing. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nResource profile for definition of electronic endpoints used by healthcare organizations to communicate using different protocols. The norwegian profile use-case is to represent endpoints for electronic communication. Fallback solutions using mail or fax has to be indexed in the norwegian master index for healthcare organizations and are not described using this profile.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-no-basis-family-relation.codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/no-basis-family-relation.codesystem"
      },
      "name" : "no-basis-family-relation.codesystem",
      "description" : "Copy of Codes from Familierelasjon defined by Skatteetaten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-family-relation.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-family-relation.valueset"
      },
      "name" : "no-basis-family-relation.valueset",
      "description" : "Copy of Codes from Familierelasjon defined by Skatteetaten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-felleshjelpenummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-felleshjelpenummer"
      },
      "name" : "no-basis-felleshjelpenummer",
      "description" : "Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-foedselsnummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-foedselsnummer"
      },
      "name" : "no-basis-foedselsnummer",
      "description" : "Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-group.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-group"
      },
      "name" : "no-basis-group",
      "description" : "The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-HealthcareService.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-HealthcareService"
      },
      "name" : "no-basis-HealthcareService",
      "description" : "Basisprofil for Norwegian Healthcare Service information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Healthcare Services. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nThe typical use-case is to include information regarding what Healthcare related services, support functions or activities provided by an Organization or awailable at a Location.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-helsepersonellnummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-helsepersonellnummer"
      },
      "name" : "no-basis-helsepersonellnummer",
      "description" : "In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-HumanName.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-HumanName"
      },
      "name" : "no-basis-HumanName",
      "description" : "Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-kommunenummer.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-kommunenummer"
      },
      "name" : "no-basis-kommunenummer",
      "description" : "Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Location.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Location"
      },
      "name" : "no-basis-Location",
      "description" : "Basisprofil for Norwegian Location information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific location information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-no-basis-location-type.codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/no-basis-location-type.codesystem"
      },
      "name" : "no-basis-location-type.codesystem",
      "description" : "Additional codes for location.type used by no-basis-Location",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-location-type.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-location-type.valueset"
      },
      "name" : "no-basis-location-type.valueset",
      "description" : "ValueSet for location types used in Location definition. Includes all Norwegian specific types (no-basis-location-type.codesystem) and all codes from v3.ServiceDeliveryLocationRoleType defined by HL7",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-no-basis-marital-status.codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/no-basis-marital-status.codesystem"
      },
      "name" : "no-basis-marital-status.codesystem",
      "description" : "Copy of Codes from Sivilstandstype defined by Skatteetaten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-marital-status.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-marital-status.valueset"
      },
      "name" : "no-basis-marital-status.valueset",
      "description" : "Copy of Codes from Sivilstandstype defined by Skatteetaten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Medication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Medication"
      },
      "name" : "no-basis-Medication",
      "description" : "Basis profile for medication to be used in Norway. The profile is adapted to use FEST as source of indoseFormation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-MedicationStatement.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-MedicationStatement"
      },
      "name" : "no-basis-MedicationStatement",
      "description" : "Basis profile for medication statement, to be used in Norway. The profile is adapted to include norwegian specific features and constraints.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-middlename.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-middlename"
      },
      "name" : "no-basis-middlename",
      "description" : "The basis extension defines the Norwegian middlename wich is called \"mellomnavn\" and defined by Norwegian legislation (Lov om personnavn).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-no-basis-middlename.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/no-basis-middlename"
      },
      "name" : "no-basis-middlename",
      "description" : "SearchParameter for the Norwegian middlename extension http://hl7.no/fhir/StructureDefinition/no-basis-middlename",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-municipalitycode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-municipalitycode"
      },
      "name" : "no-basis-municipalitycode",
      "description" : "Coded value for municipality/county Norwegian kommune",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Organization"
      },
      "name" : "no-basis-Organization",
      "description" : "Basisprofil for Norwegian Organization information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The basis profile describes information structures typically used for identifying norwegian organizations. Should be used as a basis for further profiling in use-cases where other specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-no-basis-parental-responsibility.codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/no-basis-parental-responsibility.codesystem"
      },
      "name" : "no-basis-parental-responsibility.codesystem",
      "description" : "Copy of Codes from Foreldreansvar defined by Skatteetaten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-parental-responsibility.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-parental-responsibility.valueset"
      },
      "name" : "no-basis-parental-responsibility.valueset",
      "description" : "Copy of Codes from Foreldreansvar defined by Skatteetaten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-partof.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-partof"
      },
      "name" : "no-basis-partof",
      "description" : "This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Patient"
      },
      "name" : "no-basis-Patient",
      "description" : "Basisprofil for Norwegian Patient information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Person.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Person"
      },
      "name" : "no-basis-Person",
      "description" : "Basisprofil for Norwegian Person information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nThe no-basis-Person resource main use-case is with regards to information describing persons that are living in Norway. The information is typically available from the Norwegian \"folkeregister\" and contains information describing all Norweigan citizens and individuals working and living in Norway.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-person-citizenship.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-person-citizenship"
      },
      "name" : "no-basis-person-citizenship",
      "description" : "The Person's legal status as citizen of a country.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-postponementreason.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-postponementreason"
      },
      "name" : "no-basis-postponementreason",
      "description" : "The basis extension defines the reason for a postponement for example of an appointment or an encounter.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Practitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Practitioner"
      },
      "name" : "no-basis-Practitioner",
      "description" : "Basisprofil for Norwegian Practitioner information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\n2019-03 - The no-basis-Practitioner resource main use-case is to represent the actual Practitioner, e.g. a person. The resource can include information about how to identify the practitioner in addition to the practitioner's education, qualifications and speciality. The resource can also include approvals and other centrally registered capabilities recorded for the practitioner.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-PractitionerRole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-PractitionerRole"
      },
      "name" : "no-basis-PractitionerRole",
      "description" : "Basisprofil for Norwegian PractitionerRole information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific role information is available. The basis profile is open, but derived profiles should close down the information elements according to specifications relevant to the use-case.\n\nThe main use-case of no-basis-PractitionerRole is to represent the role or function of a Practitioner wihtin an organization. The resource can include information about services performed by a Practitioner, a location where the practitioner performes the functions as well as information about the nature of the employment at an organization.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-prescriptiongroup.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-prescriptiongroup"
      },
      "name" : "no-basis-prescriptiongroup",
      "description" : "Part of norwegian standard for describing a prescription.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Procedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Procedure"
      },
      "name" : "no-basis-Procedure",
      "description" : "Basis profile for a procedure, to be used in Norway. The profile is adapted to include norwegian specific features and constraints.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-no-basis-Procedure-example.html"
      }],
      "reference" : {
        "reference" : "Procedure/no-basis-Procedure-example"
      },
      "name" : "no-basis-Procedure-example",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Procedure"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-propertyinformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-propertyinformation"
      },
      "name" : "no-basis-propertyinformation",
      "description" : "This basis extension describes information identifying norwegian real property.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-RelatedPerson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-RelatedPerson"
      },
      "name" : "no-basis-RelatedPerson",
      "description" : "Basisprofil for Norwegian RelatedPerson information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nTypical use-case for no-basis-RelatedPerson involves information about relations person-patient.\n- Relations registered in norwegian Master Person Information Index (aka Folkeregisteret)\n- Other relationship information registered on a patient or person neccessary for patient treatment\n- Should not be used for contact persons for the patient with a predefined role in the patient care, as information as this is registered separately in the Patient resource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-no-basis-service-type.valueset.html"
      }],
      "reference" : {
        "reference" : "ValueSet/no-basis-service-type.valueset"
      },
      "name" : "no-basis-service-type.valueset",
      "description" : "ValueSet including all codes for service type (tjenestetype) allowed in the Adressergister",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-shortnotice.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-shortnotice"
      },
      "name" : "no-basis-shortnotice",
      "description" : "The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-sourceofinformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-sourceofinformation"
      },
      "name" : "no-basis-sourceofinformation",
      "description" : "Part of norwegian KI standard.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-Substance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-Substance"
      },
      "name" : "no-basis-Substance",
      "description" : "Basis profile for Substances to be used in Norway. The profile is adapted to use FEST as source of information.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-urban-district.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-urban-district"
      },
      "name" : "no-basis-urban-district",
      "description" : "Simple extension containing information about what part of a norwegian city the patient is a resident. Administrative purpose.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-conferencetype.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-conferencetype"
      },
      "name" : "NoBasisConferenceType",
      "description" : "Norwegian valueset for conference type.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-no-basis-icpc-2.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/no-basis-icpc-2"
      },
      "name" : "NoBasisICPC2",
      "description" : "In Norway primary care uses ICPC-2 to document contact-reason, health related problem and diagnosis.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-no-basis-relatedperson-person-reference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-basis-relatedperson-person-reference"
      },
      "name" : "NoBasisRelatedpersonPersonReference",
      "description" : "If a person reference is needed in RelatedPerson.patient element, this optional extension should be used.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-Solid-Aresdoktor-RelatedPerson.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/Solid-Aresdoktor-RelatedPerson"
      },
      "name" : "Solid-Aresdoktor-RelatedPerson",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-Sorgard-Erlend-RelatedPerson.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/Sorgard-Erlend-RelatedPerson"
      },
      "name" : "Sorgard-Erlend-RelatedPerson",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"]
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "Appointment-and-Encounter.html",
        "name" : "Appointment-and-Encounter.html",
        "title" : "Appointment and Encounter",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "Changelog-STU3.html",
        "name" : "Changelog-STU3.html",
        "title" : "Changelog STU 3",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "Datatypes.html",
        "name" : "Datatypes.html",
        "title" : "Datatypes",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2023+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "http://hl7.no/fhir/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
