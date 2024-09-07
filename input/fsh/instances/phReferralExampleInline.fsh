// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: Example-JP-Condition-eCS-ANGINAInline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　既往歴例1　狭心症"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.coding[+].system = "urn:oid:1.2.392.200119.4.101.2"
* code.coding[=].code = #20058911
* code.coding[=].display = "狭心症"
* code.text = "狭心症"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018"

* note.text = "2018年　狭心症　２ヶ月治療で軽快。"


Instance: Example-JP-Condition-eCS-FxInline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　既往歴例2　左前腕骨折"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"
* language = #ja

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePrefixModifier"
* code.extension[=].valueCodeableConcept.coding[+].system = "urn:oid:1.2.392.200119.4.201.2"
* code.extension[=].valueCodeableConcept.coding[=].code = #27000358
* code.extension[=].valueCodeableConcept.coding[=].display = "左"
* code.coding[+].system = "urn:oid:1.2.392.200119.4.101.2"
* code.coding[=].code = #20080427
* code.coding[=].display = "前腕骨折"
* code.text = "左前腕骨折"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

// 2019 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2021"

* note.text = "交通事故で左前腕骨折　３ヶ月ギプス固定。"



