// ==================================================
//   Profile 定義 電子カルテ共有サービス用
//   検体検査結果／感染症検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult_eCS
// ==================================================
Profile: JP_Observation_LabResult_CLINS_eCS
Parent: JP_Observation_LabResult_eCS
Id: JP-Observation-LabResult-CLINS-eCS
Title:  "CLINS電子カルテ情報共有サービス用:JP_Observation_LabResult_CLINS_eCS"
Description: "CLINS 電子カルテ共有サービス用 Observationリソース（検体検査結果／感染症検体検査結果）プロファイル。 JP_Observation_LabResult_eCSからの派生プロファイル。"

* obeys resource-needs-extension-of-institutionNumber

* extension[eCS_InstitutionNumber] 0..1 MS
* ^url = $JP_Observation_LabResult_CLINS_eCS
* ^status = #active
* ^date = "2024-02-25"
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルである。"

* meta.profile 1..1 MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Observation_LabResult_eCS　を設定する。")


// 患者情報
* subject ^comment = "電子カルテ共有サービスでは、別途BundleリソースでPatientリソースが送信されているので、その被保険者個人識別子を明示することにより患者を参照する。"
* subject.identifier.system = $JP_Insurance_memberID (exactly)

