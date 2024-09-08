// Compositionリース PCS
//Alias: $doc-typecodes_CS = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
//Alias: $doc-subtypecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-subtypecodes
//Alias: $PCS-section = http://jpfhir.jp/fhir/clins/CodeSystem/document-section

Instance: compositionPCSExample01Inline
InstanceOf: JP_Composition_ePCS
Usage: #inline

Description: "患者療養計画サマリー　Compositionリソース データ作成例　composition"


* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_ePCS"
* language = #ja


* extension[version].url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension[version].valueString = "1.0"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1311234567-2021-12345678"
* status = #final
* type = $doc-typecodes_CS#56447-6 "計画書"
* category = $doc-subtypecodes_CS#OUTPATIENT "外来文書"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* subject.type = "Patient"
* subject.display = "患者　Patientリソース"

// * encounter.reference = "Example-JP-Encounter-eCS-AMB-01Inline"
* encounter.reference = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
* encounter.type = "Encounter"
* encounter.display = "受診　Encounterリソース"

// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2024-07-07T12:12:20+09:00"

// * author[0].reference = "Example-JP-Practitioner-eCS-PCSFrom01Inline"
* author[0].reference = "urn:uuid:22212c2d-4837-fd90-c6c5-6ee2a4b7eed2"
* author[=].type = "Practitioner"
* author[=].display = "患者療養計画サマリー作成者　Practitionerリソース"

// * author[+].reference = "Example-JP-Org-eCS-Inst-PCS01Inline"
* author[1].reference = "urn:uuid:ee271941-92f0-07cf-7b6e-db8ce65c9543"
* author[=].type = "Organization"
* author[=].display = "患者療養計画サマリー作成機関と診療科　Organizationリソース"


* title = "患者サマリー（療養計画書）"

* section.title = "計画サマリー"
* section.code.coding = http://jpfhir.jp/fhir/clins/CodeSystem/document-section#422 "計画サマリーセクション"

* section.entry[carePlan].reference = "urn:uuid:6399da0f-77c7-4eb9-fd93-4559d39f1beb"
* section.entry[condition][0].reference = "urn:uuid:4c604fad-f24c-da56-d777-8f233bc9f835" // 副傷病　狭心症
* section.entry[condition][1].reference = "urn:uuid:54b73122-69e7-6864-d6b2-eb8dbf372e65" // 主傷病　高血圧

