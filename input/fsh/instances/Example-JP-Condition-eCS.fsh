// JP_Condition_eCS
Instance: Example-JP-Condition-eCS-01
InstanceOf: JP_Condition_eCS
Usage: #example
Description: "conditionExample01 必須要素だけのサンプル"

* contained[+] = Example-JP-Patient-eCS-01-Contained

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value = "202934701"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
 // active | recurrence | relapse | inactive | remission | resolved

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

* category = #encounter-diagnosis

// low | high | unable-to-assess 低、高、評価不能
//* criticality = #unable-to-assess

//病名情報
* code.coding = http://medis.or.jp/CodeSystem/master-disease-keyNumber#20064049 "十二指腸潰瘍"
* code.text = "十二指腸潰瘍・H1期"

* subject = Reference(Example-JP-Patient-eCS-01-Contained)

//--------------------------
// JP_Condition_eCS
Instance: Example-JP-Condition-eCS-02
InstanceOf: JP_Condition_eCS
Usage: #example
Description: "conditionExample01 必須要素と推奨要素を記述したサンプル、未告知、長期保存、病名管理コードとICD10分類の両方でコーディング"

* contained[+] = Example-JP-Patient-eCS-01-Contained
* contained[+] = Example-JP-Encounter-OW-eCS-01-Contained

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_Condition_eCS
* meta.tag[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#LTS "長期保存"
* meta.tag[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#UNINFORMED "未告知"

* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value = "202934702"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
 // active | recurrence | relapse | inactive | remission | resolved

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

* category = #encounter-diagnosis

//病名情報
* code.coding = http://medis.or.jp/CodeSystem/master-disease-keyNumber#20054178 "胃癌"
* code.coding = http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full#C169 "胃の悪性新生物＜腫瘍＞，胃，部位不明"
* code.text = "胃癌"

* subject = Reference(Example-JP-Patient-eCS-01-Contained)
* encounter = Reference(Example-JP-Encounter-OW-eCS-01-Contained)

* onsetDateTime = "2020-04-10"
* recordedDate = "2020-04-18"
* recorder.display = "消化器内科　田中太郎"


// JP_Condition_eCS 疑い病名
Instance: Example-JP-Condition-eCS-03
InstanceOf: JP_Condition_eCS
Usage: #example
Description: "conditionExample01 必須要素と推奨要素を記述したサンプル、病名交換コードでコーディング、疑い病名で終了"

* contained[+] = Example-JP-Patient-eCS-01-Contained
* contained[+] = Example-JP-Encounter-OW-eCS-01-Contained

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_Condition_eCS


* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value = "202934703"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive "Inactive"
 // active（存続）, remission(軽快、寛解), inactive（治癒以外での病名の終了）, resolved (治癒) 、unknown（不明）

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed "Unconfirmed"

* category = #encounter-diagnosis

//病名情報
* code.coding = http://medis.or.jp/CodeSystem/master-disease-exCode#L3RF "噴門癌"
* code.text = "噴門癌早期"

* subject = Reference(Example-JP-Patient-eCS-01-Contained)
* encounter = Reference(Example-JP-Encounter-OW-eCS-01-Contained)

* onsetDateTime = "2020-04-10"
* abatementDateTime = "2020-05-01"
* recordedDate = "2020-04-18"
* recorder.display = "消化器内科　田中太郎"

