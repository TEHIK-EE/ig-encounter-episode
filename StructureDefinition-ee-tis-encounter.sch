<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EEBaseEncounter
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/base/StructureDefinition/ee-mode-of-arrival']) &lt;= 1">extension with URL = 'https://fhir.ee/base/StructureDefinition/ee-mode-of-arrival': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary']) &lt;= 1">extension with URL = 'https://fhir.ee/encounter-episode/StructureDefinition/ee-tis-summary': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:class) &gt;= 1">class: minimum cardinality of 'class' is 1</sch:assert>
      <sch:assert test="count(f:class) &lt;= 1">class: maximum cardinality of 'class' is 1</sch:assert>
      <sch:assert test="count(f:episodeOfCare) &gt;= 1">episodeOfCare: minimum cardinality of 'episodeOfCare' is 1</sch:assert>
      <sch:assert test="count(f:episodeOfCare) &lt;= 1">episodeOfCare: maximum cardinality of 'episodeOfCare' is 1</sch:assert>
      <sch:assert test="count(f:serviceProvider) &gt;= 1">serviceProvider: minimum cardinality of 'serviceProvider' is 1</sch:assert>
      <sch:assert test="count(f:virtualService) &lt;= 0">virtualService: maximum cardinality of 'virtualService' is 0</sch:assert>
      <sch:assert test="count(f:length) &lt;= 0">length: maximum cardinality of 'length' is 0</sch:assert>
      <sch:assert test="count(f:account) &lt;= 0">account: maximum cardinality of 'account' is 0</sch:assert>
      <sch:assert test="count(f:dietPreference) &lt;= 0">dietPreference: maximum cardinality of 'dietPreference' is 0</sch:assert>
      <sch:assert test="count(f:specialArrangement) &lt;= 0">specialArrangement: maximum cardinality of 'specialArrangement' is 0</sch:assert>
      <sch:assert test="count(f:specialCourtesy) &lt;= 0">specialCourtesy: maximum cardinality of 'specialCourtesy' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:meta</sch:title>
    <sch:rule context="f:Encounter/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:participant/f:actor</sch:title>
    <sch:rule context="f:Encounter/f:participant/f:actor">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
