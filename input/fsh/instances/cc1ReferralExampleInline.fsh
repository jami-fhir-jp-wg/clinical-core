// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: Example-JP-Condition-eCS-cc1-Referral01Inline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "conditionReferralExample01CC1 診療情報提供書　主訴例　上腹部痛"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|1"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed

 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code.coding[+].system = $JP_Disease_MEDIS_ManagementID_CS
* code.coding[=].code = #20065011
* code.coding[=].display = "上腹部痛"
* code.text = "上腹部痛"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

// 2022-06-09 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-06-09"


Instance: Example-JP-Condition-eCS-cc2-Referral01Inline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "conditionReferralExample01CC2 診療情報提供書　主訴例　腰痛"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed

 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code.coding[+].system = $JP_Disease_MEDIS_ManagementID_CS
* code.coding[=].code = #20075383
* code.coding[=].display = "腹痛症"
* code.text = "腰痛"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"


// 2022-05 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-05"


