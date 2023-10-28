// ==================================================
//   Profile 定義 電子カルテ共有サービス用
//   患者情報 リソースタイプ Patient
//   親プロファイル:JP_MedicationRequest
// ==================================================

// * identifier[other_identifier].system = "urn:oid:1.2.392.100495.20.3.51.11318814790"
Invariant: valid-system-local-patientID
Description: "施設患者IDを記述する場合には、identifier.systemは、'urn:oid:1.2.392.100495.20.3.51.[1+施設番号10桁]'であり、かつその施設番号10桁はextension[eCS_InstitutionNumber].valueIdentifier.vaue値と一致しなければならない。"
Severity: #error
Expression: "(identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').count()=1 and (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.')).system.substring(31,11) = '1' + extension('http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_InstitutionNumber').valueIdentifier.value) or (identifier.where(system.substring(0,31) = 'urn:oid:1.2.392.100495.20.3.51.').empty())"

Invariant: valid-system-insurance-patientIdentifier
Description: "保険者・被保険者番号情報(system=\"http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID\")は１つだけ必須。"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID').count()=1)"


Invariant: valid-value-insurance-patientIdentifier
Description: "保険者・被保険者番号情報の形式は、\"保険者等番号:被保険者記号:被保険者番号:被保険者証等枝番\"で、それぞれ半角英数字8桁固定、半角または全角文字列(空白を含まない)、半角または全角文字列(同)、半角数字2桁固定(1文字目は0)であり、それぞれ存在しない場合には、空文字列とする。"
Severity: #error
Expression: "(identifier.where(system = 'http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID').count()=1 and identifier.where(system = 'http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID').value.matches('^[0-9]{8}:[^:^\\\\s^　]*:[^:^\\\\s^　]*:0[0-9]$')) "
// '^[0-9]{8}:[^:^\\s^　]*:[^:^\\s^　]*:0[0-9]$''
// '^[0-9]{8}:[^:]*:[^:]*:[0-9]{2}$'

Profile: JP_Patient_CLINS_eCS
Parent: JP_Patient_eCS
Id: JP-Patient-CLINS-eCS
Title: "CLINS電カル共有サービス用:JP_Patient_CLINS_eCS"
Description: "CLINS 電子カルテ共有サービス用: Patientリソース（患者情報）プロファイル。JP_Patient_eCSからの派生プロファイル。"

* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension[eCS_InstitutionNumber] 1..1 MS

* ^url = $JP_Patient_CLINS_eCS
* ^status = #active
* ^date = "2023-10-15"
* . ^short = "電子カルテ共有サービスにおける患者情報の記述に使用する。"
* . ^definition = "電子カルテ共有サービスにおける患者情報の記述に使用する。"
* . ^comment = "電子カルテ共有サービス以外では別のプロファイル　JP_Patient_eCSが用意されている。本プロファイルは、患者を識別するidentifierとして、被保険者個人識別子を必須としている。また親プロファイルJP_Patient_eCSでは、name.family, name.given, gender, birthdate,address.text, address.city, address.stateを必須としている。"

* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Patient_eCS")


* obeys valid-system-local-patientID
* obeys valid-system-insurance-patientIdentifier
* obeys valid-value-insurance-patientIdentifier
//* obeys institurionNumber

* identifier ^short = "電子カルテ情報共有サービスでは、保険者・被保険者番号情報(system=\"http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID\")は必須。被保険者個人識別子の仕様は「被保険者個人識別子」の文字列仕様を参照のこと。それに加えて自施設の患者番号（system=\"urn:oid:1.2.392.100495.20.3.51.[1+施設番号10桁]\"）やその他の識別子を記述することが可能。"

/*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
    insurance_memberID 1..1 MS

* identifier[insurance_memberID] 1.. MS
* identifier[insurance_memberID].system 1..1
* identifier[insurance_memberID].system  ^short = "保険者・被保険者番号情報のためのsystem値(url)"
* identifier[insurance_memberID].system  ^definition = "保険者・被保険者番号情報のためのsystem値(url)"
* identifier[insurance_memberID].system = $JP_Insurance_memberID (exactly)
* identifier[insurance_memberID].value 1..1
* identifier[insurance_memberID].value ^short = "被保険者個人識別子"
* identifier[insurance_memberID].value ^definition = "保険者・被保険者番号情報(被保険者個人識別子)"
* identifier[insurance_memberID].value ^comment = "被保険者個人識別子の仕様は「被保険者個人識別子」の文字列仕様を参照のこと。"
*/

//* identifier[other_identifier] 1.. MS
//* identifier[other_identifier].system 1..1


/*
* identifier[hospitalPatientID] 1.. MS
* identifier[hospitalPatientID].system 1..1
* identifier[hospitalPatientID].system  ^short = "施設内患者IDのためのsystem値(url)"
* identifier[hospitalPatientID].system  ^definition = "保険者・被保険者番号情報のためのsystem値(url)"
* identifier[hospitalPatientID].system = $JP_Hospital_PatientID (exactly)
* identifier[hospitalPatientID].value 1..1
* identifier[hospitalPatientID].value ^short = "施設内患者ID"
* identifier[hospitalPatientID].value ^definition = "施設内患者ID"
* identifier[hospitalPatientID].value ^comment = "identifier.assigner.display要素に１０桁医療機関番号を設定すること。"
* identifier[hospitalPatientID].assigner.display 1..1
* identifier[hospitalPatientID].assigner.display ^short = "この患者IDを発行した医療機関の１０桁医療機関番号"
* identifier[hospitalPatientID].assigner.display ^short = "この患者IDを発行した医療機関を識別するため１０桁医療機関番号を付与する。"

*/