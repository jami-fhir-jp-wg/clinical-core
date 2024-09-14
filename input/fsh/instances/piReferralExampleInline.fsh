// Condition_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）


Instance: Example-JP-Condition-eCS-ABDPAINInline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　現病歴例　上腹部痛"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS|1"
* language = #ja


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

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192838"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.coding[medisRecordNo].system = "urn:oid:1.2.392.200119.4.101.2"
* code.coding[medisRecordNo].code = #20065011
* code.coding[medisRecordNo].display = "上腹部痛"   
* code.text = "上腹部痛"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* encounter.reference = "Encounter/Example-Contained-JP-Encounter-AMB"

* note.text = "２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。"

// 主病名
Instance: Example-JP-Condition-eCS-ANGINA-Principal-Active-Inline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "Conditionリソース 現在の傷病名（主病名）　例1　狭心症"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS"
* language = #ja

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
* extension[eCS_DiagnosisType].valueCodeableConcept.coding[+] = $ex-diagnosistype-cs#principal "主病名"

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.coding[medisRecordNo] = $JP_Disease_MEDIS_ManagementID_CS#20058911 "狭心症"
* code.text = "狭心症"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* encounter.reference = "Encounter/Example-Contained-JP-Encounter-AMB"
// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018-08-21"


// 副傷病
Instance: Example-JP-Condition-eCS-ANGINA-NoPrincipal-Active-Inline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "Conditionリソース 現在の傷病名（副病名）　例1　狭心症"

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
//* extension[eCS_DiagnosisType].url = $JP_eCS_DiagnosisType
//* extension[eCS_DiagnosisType].valueCodeableConcept.coding[+] = $ex-diagnosistype-cs#principal "主病名"

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.coding[medisRecordNo] = $JP_Disease_MEDIS_ManagementID_CS#20058911 "狭心症"
* code.text = "狭心症"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* encounter.reference = "Encounter/Example-Contained-JP-Encounter-AMB"
// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018-08-21"

//ーーーーーー 主病名　高血圧
Instance: Example-JP-Condition-eCS-HT-Principal-Active-Inline
InstanceOf: JP_Condition_eCS
Usage: #inline

Description: "Conditionリソース 現在の傷病名（主病名）　例2　高血圧"

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
* extension[eCS_DiagnosisType].valueCodeableConcept.coding[+] = $ex-diagnosistype-cs#principal "主病名"

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

* code.coding[medisRecordNo] = $JP_Disease_MEDIS_ManagementID_CS#20061593 "高血圧症"
* code.text = "高血圧"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* encounter.reference = "Encounter/Example-Contained-JP-Encounter-AMB"
// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018-08-21"