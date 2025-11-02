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
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-short-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/organization-period|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/note']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/note': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/note']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/note': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/StructureDefinition/organization-member']) &lt;= 1">extension with URL = 'http://example.org/fhir/StructureDefinition/organization-member': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-equipement']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-discipline-equipement': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-type-activite']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-type-activite': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-champ-activite': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-place-hebergement-theorique': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-uf-externe': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-demandeuse-acte']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-demandeuse-acte': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-executante-acte']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-executante-acte': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
