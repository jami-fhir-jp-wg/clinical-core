// ==================================================
//   Profile 定義 診療６情報Bundle
//   診療６情報　処方情報のBundle
//   
// ==================================================
Profile:        JP_Bundle_CLINS_MedicationRequest
Parent:			Bundle
Id:             JP-Bundle-CLINS-MedicationRequest
Title:  "Core6 : JP_Condition_eCS"
Description: "診療６情報　処方情報のBundle プロファイル"



* ^url = $JP_Bundle_CLINS_MedicationRequest
// ^url = http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS_MedicationRequest
* ^status = #active
* ^date = "2023-10-04"
* insert toplevel_short_definition("診療６情報　処方情報のBundleのValidationに使用する")
* . ^comment = ""


* meta.profile 1.. MS
* meta.profile = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_CLINS_MedicationRequest"

* identifier 1.. MS
* identifier ^short = "この文書Bundleの固定識別番号。報告単位識別IDを設定する。"
* identifier ^definition = "報告単位識別ID：次の３つの文字列を半角ハット記号（^）で連携した文字列。\r\n
  - 保険医療機関番号10桁：（内訳：都道府県番号２桁、点数表コード（医療機関区分）１桁、医療機関番号７桁）\r\n
  -	被保険者個人識別子：内訳：保険者等番号８桁、被保険者証（手帳）等の記号、被保険者証（手帳）等の番号、被保険者証等枝番２桁を半角コロンで結合した文字列）最大51文字（全角38文字＋半角13文字、全角19文字＋半角32文字、または半角51文字）\r\n
  - 報告単位のデータを医療機関のシステムとして医療機関内で一意に識別できる粒度のID文字列：当該システムが当該患者データの中で一意性を保証できるよう生成した半角文字列（英大文字、数字、ハイフン記号のみ可）最大128文字とすること。。"
* identifier ^comment = "この仕様を満たすidentifierに加えて、これとは異なるsystem値をもつidentifierは複数存在しても構わない。"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains bundle-identifier 1..1 MS
* identifier[bundle-identifier].system = $JP_BundleIdentifier (exactly) // "http://jpfhir.jp/fhir/clins/bundle-identifier"

* type = #collenction (exactly)
* type ^definition = "このバンドルのタイプコード。本プロファイルでは colletion 固定とする。"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""

* link 1..1 MS
* link.relation = #type
* link.url = ""
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    patient 1..1 MS // JP_Patient_CLINS_eCS
    and medicationRequest 0..* MS  // JP_MedicationRequest_CLINS_eCS

* entry[patient].resource only  JP_Patient_CLINS_eCS
* entry[patient] ^short = "処方情報を記述したMedicationStatementリソースを参照"
* entry[patient] ^definition = "処方情報を記述して参照する。"

* entry[medicationRequest].resource only  JP_MedicationRequest_CLINS_eCS
* entry[medicationRequest] ^short = "処方情報を記述したMedicationStatementリソースを参照"
* entry[medicationRequest] ^definition = "処方情報を記述して参照する。"


