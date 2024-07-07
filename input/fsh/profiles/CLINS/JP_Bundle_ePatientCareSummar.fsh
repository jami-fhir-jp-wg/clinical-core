
Profile: JP_Bundle_ePCS
Parent: Bundle
Id: JP-Bundle-ePCS
Description: "療養計画患者サマリー Bundle"
* ^url = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS"

* ^version = "1"
* ^status = #active
* ^date = "2024-07-05"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1

* . ^short = "電子カルテ情報共有サービスに送信可能な患者療養計画サマリーのための文書 Bundleリソース"
* . ^definition = "電子カルテ情報共有サービスに送信可能な患者療養計画サマリーのための文書 Bundleリソース"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS"

* identifier 1.. MS
* identifier ^short = "この文書Bundleの固定識別番号。Bundle作成時にシステムが設定し、サーバ間で移動、コピーされても変更されないID。"
* identifier ^definition = "この文書Bundleの固定識別番号。identifierがグローバルに一意になるように生成される必要がある。"
* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/clins/bundle-identifier" (exactly)
* identifier.value 1.. MS

* type = #document (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは document 固定とする。\r\n（document | message | transaction | transaction_response | batch | batch_response | history | searchset | collection）"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 MS  // 文書構成情報
and patient 1..1 MS  //  患者情報
and practitioners 1.. MS // 作成した医師情報
and organization 2.. MS // 作成した医療機関と診療科情報
and encounter 1.. MS
and carePlan 1..* MS // 療養上の計画／アドバイス
and condition 1..* MS // 療養計画の対象となる傷病名（主病名とそれ以外）

* entry[composition] ^short = "documentタイプのBundleリソースの先頭entryはCompositionリソース。"
* entry[composition] ^definition = "compositionリソースのエントリー。"
* entry[composition].fullUrl 1.. MS
* entry[composition].fullUrl ^short = "埋め込まれているCompositionリソースを一意に識別するためのUUID"
* entry[composition].fullUrl ^definition = "埋め込まれているCompositionリソースを一意に識別するためのUUID。"
* entry[composition].resource 1.. MS
* entry[composition].resource only  JP_Composition_ePCS
* entry[composition].resource ^short = "Compositionリソースのインスタンス本体"
* entry[composition].resource ^definition = "Compositionリソースのインスタンス本体。"
* entry[composition].search ..0
* entry[composition].request ..0
* entry[composition].response ..0

* entry[patient] ^short = "Patientリソース"
* entry[patient] ^definition = "Patientリソースのエントリー。"
* entry[patient].fullUrl 1.. MS
* entry[patient].fullUrl ^short = "埋め込まれているPatientリソースを一意に識別するためのUUID"
* entry[patient].fullUrl ^definition = "埋め込まれているPatientリソースを一意に識別するためのUUID。"
* entry[patient].resource 1.. MS
* entry[patient].resource only JP_Patient_eCS  // 患者情報エントリ Composition.subject
* entry[patient].resource ^short = "Patientリソースのインスタンス本体"
* entry[patient].resource ^definition = "Patientリソースのインスタンス本体。"
* entry[patient].search ..0
* entry[patient].request ..0
* entry[patient].response ..0

* entry[practitioners] ^short = "正当な権限があって文書を作成した個人の情報"
* entry[practitioners] ^definition = "正当な権限があって文書を作成した個人を表すPractitionerリソースで記述する。\r\nauthorisedAuthorRole要素が参照するPractitionerRoleから参照される。"
* entry[practitioners].fullUrl 1.. MS
* entry[practitioners].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[practitioners].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[practitioners].resource 1.. MS
* entry[practitioners].resource only JP_Practitioner_eCS
* entry[practitioners].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[practitioners].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[practitioners].search ..0
* entry[practitioners].request ..0
* entry[practitioners].response ..0

* entry[organization].resource only JP_Organization_eCS
* entry[organization] ^short = "文書作成医療機関、診療科"
* entry[organization] ^definition = "文書作成医療機関、診療科"
* entry[organization].search ..0
* entry[organization].request ..0
* entry[organization].response ..0

* entry[encounter].resource only JP_Encounter_eCS
* entry[encounter] ^short = "受診時状況のEncounterリソースを参照"
* entry[encounter] ^definition = "受診時状況のEncounterリソースを参照。"
* entry[encounter].search ..0
* entry[encounter].request ..0
* entry[encounter].response ..0

* entry[carePlan].resource only  JP_CarePlan_ePCS
* entry[carePlan] ^short = "療養計画を記述したCarePlanリソースを参照"
* entry[carePlan] ^definition = "療養計画をテキストで記述する。"
* entry[carePlan].search ..0
* entry[carePlan].request ..0
* entry[carePlan].response ..0

* entry[condition].resource only  JP_Condition_eCS
* entry[condition] ^short = "傷病名を１個以上必ず記述する。"
* entry[condition] ^definition = "1つにつき1つのConditionで記述されたものを参照する。主病名には拡張で主病名フラグをつける。"
* entry[condition].search ..0
* entry[condition].request ..0
* entry[condition].response ..0