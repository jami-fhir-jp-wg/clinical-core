// JP_Condition_eCS
Instance: Example-JP-Condition-eCS-01
InstanceOf: JP_Condition_eCS
Usage: #example
Description: "Conditionリソース 必須要素だけの データ作成例"
* note.text = "Conditionリソース 必須要素だけの データ作成例"


// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>必須要素だけの データ作成例</p> </div>"


* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_Condition_eCS

//-- CLINSの場合に必須
* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

//-- CLINSの場合に必須
* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "202934701"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
 // active | recurrence | relapse | inactive | remission | resolved

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

// low | high | unable-to-assess 低、高、評価不能
//* criticality = #unable-to-assess

//病名情報
* code.coding = $JP_Disease_MEDIS_ManagementID_CS#20064049 "十二指腸潰瘍"
* code.text = "十二指腸潰瘍・H1期"

//* subject = Reference(Example-JP-Patient-eCS-01-Contained)
//* patient 
* subject.identifier.system = $JP_Insurance_memberID
* subject.identifier.value = "00012345:あいう:１８７:05"

* encounter = Reference(Example-Contained-JP-Encounter-AMB)

* onsetDateTime = "2020-04-10"

//--------------------------
// JP_Condition_eCS
Instance: Example-JP-Condition-eCS-02
InstanceOf: JP_Condition_eCS
Usage: #example
Description: "Conditionリソース 必須要素と推奨要素を記述した データ作成例、主病名、未告知、長期保存、病名管理コードとICD10分類の両方でコーディング"
* note.text =  "Conditionリソース 必須要素と推奨要素を記述した データ作成例、主病名、未告知、長期保存、病名管理コードとICD10分類の両方でコーディング　患者参照を被保険者番号のしている例"


* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_Condition_eCS
* meta.tag[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#LTS "長期保存"
* meta.tag[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#UNINFORMED "未告知"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>必須要素と推奨要素を記述した データ作成例、未告知、長期保存、病名管理コードとICD10分類の両方でコーディング</p> </div>"

//-- CLINSの場合に必須
* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

//-- CLINSの場合に必須
* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

// 主傷病
* extension[eCS_DiagnosisType].url = $JP_eCS_DiagnosisType
* extension[eCS_DiagnosisType].valueCodeableConcept = $ex-diagnosistype-cs#principal "主病名"
 

//* contained[+] = Example-Contained-JP-Patient-eCS-01-Contained
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "202934702"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
 // active | recurrence | relapse | inactive | remission | resolved

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

//病名情報
* code.coding = $JP_Disease_MEDIS_ManagementID_CS#20054178 "胃癌"
* code.coding = $JP_DiseaseCategory_WHO_ICD10_CS#C169 "胃の悪性新生物＜腫瘍＞，胃，部位不明"
* code.text = "胃癌"

//* subject = Reference(Example-JP-Patient-eCS-01-Contained)
//* patient 
* subject.identifier.system = $JP_Insurance_memberID
* subject.identifier.value = "00012345:あいう:１８７:05"

* encounter = Reference(Example-Contained-JP-Encounter-AMB)

* onsetDateTime = "2020-04-10"
* recordedDate = "2020-04-18"
* recorder.display = "消化器内科　田中太郎"


// JP_Condition_eCS 疑い病名
Instance: Example-JP-Condition-eCS-03
InstanceOf: JP_Condition_eCS
Usage: #example
Description: "Conditionリソース 必須要素と推奨要素を記述した データ作成例、病名交換コードでコーディング、疑い病名で終了"
* note.text = "Conditionリソース 必須要素と推奨要素を記述した データ作成例、病名交換コードでコーディング、疑い病名で終了　患者参照を被保険者番号のしている例"
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>必須要素と推奨要素を記述した データ作成例、病名交換コードでコーディング、疑い病名で終了</p> </div>"


* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_Condition_eCS

//-- CLINSの場合に必須
* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

//-- CLINSの場合に必須
* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "202934703"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive "Inactive"
 // active（存続）, remission(軽快、寛解), inactive（治癒以外での病名の終了）, resolved (治癒) 、unknown（不明）

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed "Unconfirmed"

* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

//病名情報
* code.coding = $JP_Disease_MEDIS_Concept_CS#L3RF "噴門癌"
* code.text = "噴門癌早期"

//* subject = Reference(Example-JP-Patient-eCS-01-Contained)
//* patient 
* subject.identifier.system = $JP_Insurance_memberID
* subject.identifier.value = "00012345:あいう:１８７:05"

* encounter = Reference(Example-Contained-JP-Encounter-AMB)

* onsetDateTime = "2020-04-10"
* abatementDateTime = "2020-05-01"
* recordedDate = "2020-04-18"
* recorder.display = "消化器内科　田中太郎"

// ------------- 主病名 狭心症
Instance: Example-JP-Condition-eCS-ANGINA-Principal
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "Conditionリソース 現在の傷病名（主病名）　例1　狭心症"
* note.text = "Conditionリソース 現在の傷病名（主病名）　例1　狭心症　患者参照を被保険者番号のしている例"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"

//-- CLINSの場合に必須
* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

//-- CLINSの場合に必須
* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

//-- 主病名　には必須
* extension[eCS_DiagnosisType].url = $JP_eCS_DiagnosisType
* extension[eCS_DiagnosisType].valueCodeableConcept.coding[+] = $JP_eCS_DiagnosisType#principal

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.coding = $JP_Disease_MEDIS_ManagementID_CS#20058911 "狭心症"
* code.text = "狭心症"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* encounter = Reference(Example-Contained-JP-Encounter-AMB)

// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018-08-21"

