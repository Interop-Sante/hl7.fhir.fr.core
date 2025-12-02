<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AddressEu
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Address</sch:title>
    <sch:rule context="f:Address">
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Address/f:country</sch:title>
    <sch:rule context="f:Address/f:country">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-codedString']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-codedString': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
