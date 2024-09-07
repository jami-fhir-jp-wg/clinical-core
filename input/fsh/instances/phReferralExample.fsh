// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: Example-JP-Condition-eCS-ANGINA
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　既往歴テキスト　狭心症）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code.coding[+].system = "urn:oid:1.2.392.200119.4.101.2"
* code.coding[=].code = #20058911
* code.coding[=].display = "狭心症"
* code.text = "狭心症"

* subject.reference = "Patient/Example-JP-Patient-eCS-MAKINO"

// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018"

* note.text = "2018年　狭心症　２ヶ月治療で軽快。"


Instance: Example-JP-Condition-eCS-Fx
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　既往歴テキスト　左前腕骨折）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"
* language = #ja

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code.extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePrefixModifier"
* code.extension[=].valueCodeableConcept.coding[+].system = "urn:oid:1.2.392.200119.4.201.2"
* code.extension[=].valueCodeableConcept.coding[=].code = #27000358
* code.extension[=].valueCodeableConcept.coding[=].display = "左"
* code.coding[+].system = "urn:oid:1.2.392.200119.4.101.2"
* code.coding[=].code = #20080427
* code.coding[=].display = "前腕骨折"
* code.text = "左前腕骨折"

* subject.reference = "Patient/Example-JP-Patient-eCS-MAKINO"

// 2019 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2019"

* note.text = "交通事故で左前腕骨折　３ヶ月ギプス固定。"




