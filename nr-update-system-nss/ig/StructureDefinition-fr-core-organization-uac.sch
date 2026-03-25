<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile FRCoreOrganizationProfile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Organization</sch:title>
    <sch:rule context="f:Organization">
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name|2.2.0-ballot-2']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name|2.2.0-ballot-2': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/note|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/note|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/note|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/note|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member|2.2.0-ballot-2']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-member|2.2.0-ballot-2': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation|2.2.0-ballot-2']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-prestation|2.2.0-ballot-2': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif|2.2.0-ballot-2']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-tarif|2.2.0-ballot-2': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
