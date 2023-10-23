// ==================================================
//   Profile 定義 電子カルテ共有サービス用
//   患者情報 リソースタイプ Patient
//   親プロファイル:JP_MedicationRequest
// ==================================================


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