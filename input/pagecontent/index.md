# Health Connect FHIR ImplementationGuide

> {% include active-development-boilerplate.md %}
{% include feedback-boilerplate.md %}
### Introduction

Health Connect Australia is a national health information exchange program designed to enable the sharing of health information between healthcare participants quickly and securely. By integrating advanced digital infrastructure, standards, privacy protections and enabling real-time data sharing, Health Connect Australia will support multidisciplinary collaboration across care settings. As a key enabler of the [National Digital Health Strategy 2023–2028](https://www.digitalhealth.gov.au/national-digital-health-strategy) and the [National Healthcare Interoperability Plan 2023-2028](https://www.digitalhealth.gov.au/about-us/strategies-and-plans/national-healthcare-interoperability-plan), it ensures secure, connected digital solutions that improve access, efficiency and care quality—paving the way for a smarter, more integrated future in digital health. The program is being delivered in phases, beginning with foundational capabilities and expanding to support secure communication, record discovery, and value-added services for both providers and consumers. 

The Directory and Authorisation Service Project is the first initiative under the Foundations phase. It enables healthcare providers to discover accurate, up-to-date information about other providers and the services they offer, while establishing a trust framework to support consistent and secure access to health information. By connecting provider data from multiple primary sources through a single access point and ensuring near real-time updates, the project lays the groundwork for broader interoperability and trusted information exchange across the national health ecosystem. 

One of the key objectives of the Directory and Authorisation Service Project is to enable interoperability through contemporary standards—such as FHIR APIs—to ensure seamless integration across clinical and administrative systems. To support this, the project is establishing a centralised directory hosted on a FHIR repository, where provider and organisation data will be structured using HL7® FHIR® and terminology standards. To guide consistent implementation and promote national alignment, the project is developing a FHIR Implementation Guide that defines how provider information should be represented and exchanged. This guide will build on existing standards, including the HL7 Australia Provider Directory FHIR IG, and provide a clear reference for integrators and system vendors to support secure, scalable, and standards-compliant access to directory data.

### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for the implementation guide.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page lists the FHIR profiles and extensions that are defined in this guide.
  - [Terminology](terminology.html): This page lists the FHIR terminology that are defined in this guide.
  - [Search Parameters](artifacts.html#behavior-search-parameters): This page lists the FHIR search parameters that are defined in this guide.
  - [Capability Statements](capability-statements.html): This page defines the expected FHIR capabilities of Health Connect Reader.
  - [Actor Definitions](actors.html): This page defines the Health Connect actors, Health Connect Reader.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide including Capability Statements and Actor definitions.
- [Examples](examples.html): This page lists the sample instances of FHIR resources conforming to the FHIR profiles.
- [Disclaimers](disclaimers.html): This page lists the licensing, copyright, and disclaimers under which this guide is issued.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the Agency FHIR NPM package.

### Document purpose and scope

The primary aim of this implementation guide is to support implementers integrating with the Directory services using [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4). It provides the technical specifications, FHIR profiles, and terminology definitions required for healthcare provider data exchange through Health Connect APIs.
 
This document describes specific system behaviours such as obligations, API HTTP response codes, and search parameters. Other system behavioural requirements such as the presentation of information and user experience are managed separately and must be met before systems can be assessed for conformance and granted access to Health Connect APIs.

Reference has been made to International and Australian Standards, and to Standards from HL7. The following standards are referred to in the text in such a way that some or all of its content constitutes requirements for the purposes of this specification:
* [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4)
* [Australian Base Profiles Implementation Guide [HL7AUBIG]](#HL7AUBIG)
* [Australian Core Profiles Implementation Guide [HL7AUCIG]](#HL7AUCIG)

Wherever possible, material in this specification is based on existing standards. All efforts have been made to minimise divergence from the HL7 Australia profiles of HL7 International standards ([Australian Core Profiles Implementation Guide [HL7AUCIG]](#HL7AUCIG) and [Australian Base Profiles Implementation Guide [HL7AUBIG]](#HL7AUBIG)) to provide for system interoperability and compatibility with other profiles. Issues of an editorial nature in the source material (such as spelling or punctuation errors) are intentionally reproduced. For a list of known issues (see below).

### Intended audience

This implementation guide is aimed at software development teams, architects, and designers that integrate with the Health Connect service.

This implementation guide and related artefacts are technical in nature and the audience is expected to be familiar with the language of health data specifications and to have some familiarity with health information standards and specifications, such as FHIR.

### Relationships with other work

This implementation guide builds on other specifications, helping ensure a consistent approach to data sharing that should ease adoption. The specific guides used, and the portions relevant from each of them are as follows:

{% include dependency-table-short.xhtml %}

### Cross version analysis

{% include cross-version-analysis.xhtml %}

### Global profiles

{% include globals-table.xhtml %}

### Data model overview

The Health Connect Australia Provider Directory uses FHIR resources to represent healthcare providers, their roles, organisational affiliations, service locations, and the healthcare services they provide. The diagram below illustrates the key relationships between these FHIR resources:

<div style="text-align: center;">
  <img src="HC ER proposal-2.svg" alt="Health Connect Entity Relationship Diagram" style="width:75%; display:block; margin:auto;" />
</div>
<br />

- Practitioner - Individual healthcare providers with their professional qualifications and identifiers
- Organization - Healthcare organisations and facilities that employ or affiliate with practitioners
- HealthcareService - Specific services offered by organisations at locations
- Location - Physical or virtual locations where healthcare services are delivered
- Endpoint - Technical endpoints for digital service integration and communication

This model supports complex healthcare delivery scenarios while maintaining FHIR R4 compliance and enabling efficient provider directory searches and integrations.

### Intellectual property considerations

This implementation guide and the underlying FHIR specification are licensed as public domain under the [FHIR license](http://hl7.org/fhir/R4/license.html). The license page also describes rules for the use of the FHIR name and logo.

{% include ip-statements.xhtml %}

### Known issues

This table lists known issues with this specification at the time of publishing. We are working on solutions to these issues and encourage comments to help us develop these solutions.

<table border="1" cellpadding="1" valign="middle">
 <tbody>
   <col width="15%" />
   <col width="auto" />
   <tr bgcolor="#DCDCDC">
     <th>Reference</th>
     <th>Description</th>
   </tr>
   <tr>
     <td>Example system URI</td>
     <td>An inherited example system (e.g. <code>http://www.acme.com/identifiers/patient</code>) erroneously infers patient context. Implementers must use their own namespace URIs. The affected identifier profile is Endpoint (HC-EPI) — this profile includes the erroneous example `system` in their documentation.</td>
   </tr>
 </tbody>
</table>

### References

|[<a name="HL7AUBIG">HL7AUBIG</a>]| HL7 Australia, FHIR R4 standard for AU Base Implementation Guide, v6.0.0-ballot (Ballot)|
||[https://hl7.org.au/fhir/6.0.0-ballot/index.html](https://hl7.org.au/fhir/6.0.0-ballot/index.html)|  

|[<a name="HL7FHIR4">HL7FHIR4</a>]|Health Level Seven, Inc., 30 October 2019, FHIR R4.|
||[http://hl7.org/fhir/R4/](http://hl7.org/fhir/R4/)|

|[<a name="HL7AUCIG">HL7AUCIG</a>]| HL7 Australia, FHIR R4 standard for AU Core Implementation Guide, v2.0.0-ballot - Ballot (Ballot)|
||[https://hl7.org.au/fhir/core/2.0.0-ballot/index.html](https://hl7.org.au/fhir/core/2.0.0-ballot/index.html)|  
