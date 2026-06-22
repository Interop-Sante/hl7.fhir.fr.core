<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AdverseEvent
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:AdverseEvent</sch:title>
    <sch:rule context="f:AdverseEvent">
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:detected) &gt;= 1">detected: minimum cardinality of 'detected' is 1</sch:assert>
      <sch:assert test="count(f:seriousness) &gt;= 1">seriousness: minimum cardinality of 'seriousness' is 1</sch:assert>
      <sch:assert test="count(f:suspectEntity) &gt;= 1">suspectEntity: minimum cardinality of 'suspectEntity' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdverseEvent/f:suspectEntity</sch:title>
    <sch:rule context="f:AdverseEvent/f:suspectEntity">
      <sch:assert test="count(f:causality) &lt;= 1">causality: maximum cardinality of 'causality' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AdverseEvent/f:suspectEntity/f:causality</sch:title>
    <sch:rule context="f:AdverseEvent/f:suspectEntity/f:causality">
      <sch:assert test="count(f:assessment) &gt;= 1">assessment: minimum cardinality of 'assessment' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
