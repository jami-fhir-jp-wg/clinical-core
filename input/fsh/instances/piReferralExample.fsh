// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）


Instance: Example-JP-Condition-eCS-ABDPAIN
InstanceOf: JP_Condition_eCS
Usage: #example
  
Description: "Conditionリソース　（診療情報提供書　既往歴テキスト　上腹部痛）"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|1"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192838"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code.coding[+].system = "urn:oid:1.2.392.200119.4.101.2"
* code.coding[=].code = #20065011
* code.coding[=].display = "上腹部痛"
* code.text = "上腹部痛"

* subject.reference = "Patient/Example-JP-Patient-eCS-MAKINO"

* note.text = "２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。"


