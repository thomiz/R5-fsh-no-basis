# no-basis-Appointment - v3.0.0-alpha

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Appointment**

## Resource Profile: no-basis-Appointment 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Appointment | *Version*:3.0.0-alpha |
| Draft as of 2026-10-04 | *Computable Name*:NoBasisAppointment |

 
Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) must be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

**Usages:**

* Refer to this Profile: [no-basis-partof](StructureDefinition-no-basis-partof.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.basis|current/StructureDefinition/StructureDefinition-no-basis-Appointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Appointment.csv), [Excel](StructureDefinition-no-basis-Appointment.xlsx), [Schematron](StructureDefinition-no-basis-Appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Appointment",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Appointment",
  "version" : "3.0.0-alpha",
  "name" : "NoBasisAppointment",
  "title" : "no-basis-Appointment",
  "status" : "draft",
  "date" : "2026-10-04T16:26:34+00:00",
  "description" : "Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) must be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.cancellationReason",
      "path" : "Appointment.cancellationReason",
      "code" : [{
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8445",
        "display" : "Volven kodeverk 8445 - Ventetid sluttkode"
      }]
    },
    {
      "id" : "Appointment.appointmentType.coding",
      "path" : "Appointment.appointmentType.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "Appointment.appointmentType.coding:omsorgsNiva",
      "path" : "Appointment.appointmentType.coding",
      "sliceName" : "omsorgsNiva",
      "short" : "Volven 8406",
      "definition" : "Volven 8406",
      "min" : 0,
      "max" : "1",
      "mustSupport" : false,
      "binding" : {
        "strength" : "extensible",
        "description" : "Volven",
        "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8406"
      }
    },
    {
      "id" : "Appointment.appointmentType.coding:kontaktType",
      "path" : "Appointment.appointmentType.coding",
      "sliceName" : "kontaktType",
      "short" : "Volven 8432",
      "definition" : "Volven 8432",
      "min" : 0,
      "max" : "1",
      "mustSupport" : false,
      "binding" : {
        "strength" : "extensible",
        "description" : "Volven",
        "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8432"
      }
    },
    {
      "id" : "Appointment.appointmentType.coding:innbygger",
      "path" : "Appointment.appointmentType.coding",
      "sliceName" : "innbygger",
      "short" : "Volven 7617",
      "definition" : "Volven 7617",
      "min" : 0,
      "max" : "1",
      "mustSupport" : false,
      "binding" : {
        "strength" : "extensible",
        "description" : "Volven",
        "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.7617"
      }
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resolve().actor"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Appointment.participant:practitioner",
      "path" : "Appointment.participant",
      "sliceName" : "practitioner",
      "short" : "Appointments should contain information regarding the pracitioner involved. The Appointment.actor should contain a Practitioner or PractitionerRole reference",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Appointment.participant:practitioner.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "Appointment.participant:patient",
      "path" : "Appointment.participant",
      "sliceName" : "patient",
      "short" : "Appointments should contain information regarding the patient involved. The Appointment.actor should contain  a Patient reference",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Appointment.participant:patient.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Appointment.participant:location",
      "path" : "Appointment.participant",
      "sliceName" : "location",
      "short" : "Appointments should contain information regarding where the appointment is executed. The Appointment.actor should contain a Location or HealthcareService reference",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Appointment.participant:location.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location",
        "http://hl7.org/fhir/StructureDefinition/HealthcareService"]
      }]
    }]
  }
}

```
