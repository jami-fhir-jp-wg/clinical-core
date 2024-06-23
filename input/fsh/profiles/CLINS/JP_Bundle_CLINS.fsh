
Profile: JP_Bundle_CLINS
Parent: Bundle
Id: JP-Bundle-CLINS
Title: "CLINS電子カルテ情報共有サービス用:JP_Bundle_CLINS"
Description: "CLINS 電子カルテ情報共有サービスへの6情報送信用 Bundleリソース プロファイル"
* ^url = $JP_Bundle_CLINS
* ^status = #active
* . ^short = "電子カルテ情報共有サービスへの6情報送信用 Bundleリソース"
* . ^definition = "電子カルテ情報共有サービスへの6情報送信用 Bundleリソース"

* obeys bundle-profile-is-JP-Bundle-CLINS
* obeys bundle-meta-tag-resourceType-exists //"R0214:Bundle.meta.tagに、収納するresourceTypeを記述しなければならない。"
* obeys bundle-meta-tag-resourceType-valid // "R0214:Bundle.meta.tagに記述されたresourceTypeは、'AllergyIntolerance', 'Observation', 'Condition'のいずれかであること。"
* obeys valid-system-bundleIdenfifier
* obeys valid-value-bundleIdenfifier

* obeys all-entries-needs-extension-of-institutionNumber //  R9012  Bundleに含まれるリソースには、医療機関識別IDが必須である。
* obeys all-entries-needs-valid-institutionNumber  // R9012  Bundleに含まれるリソースには、医療機関識別IDが記述され10桁数字であることが必須である。
* obeys patients-profile-is-JP-Patient-CLINS-eCS

/*
* obeys valid-valuePart0-bundleIdenfifier
* obeys valid-valuePart1-bundleIdenfifier
* obeys valid-valuePart2-0-bundleIdenfifier
* obeys valid-valuePart2-1-bundleIdenfifier
* obeys valid-valuePart2-2-bundleIdenfifier
* obeys valid-valuePart2-3-bundleIdenfifier
* obeys valid-valuePart2-4-bundleIdenfifier
* obeys valid-valuePart3-bundleIdenfifier
*/

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLを指定する。http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS")
//* meta.profile = $JP_Bundle_CLINS

* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "system"
* meta.tag  ^slicing.rules = #open
* meta.tag contains resourceType 1..1 MS
  * insert relative_short_definition("CLINSでのBundleリソースに含まれる６情報リソースカテゴリーをmeta.tag要素に記述する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("Bundleリソースに含まれる６情報リソースカテゴリーのいずれかを　http://jpfhir.jp/fhir/clins/ValueSet/BundleResourceType_VSのValuseSetから設定する。具体的には、\"AllergyIntolerance\"、\"Condition\"、\"Observation\"、\"MedicationRequest\"　のいずれかの値を設定する。")

* meta.tag[resourceType].system = $JP_CLINS_BundleResourceType_CS
* meta.tag[resourceType].code from $JP_CLINS_BundleResourceType_VS

* identifier 1.. MS
* identifier ^short = "この文書Bundleの固定識別子。Bundle作成時にシステムが設定する。"
* identifier ^definition = "Bundleリソースのidentifier要素は、電子カルテ情報共有サービス側で保存される。送信側は、後続の送信においてこのidentifierを指定することで、受信側は過去に受信したBundleリソースを特定し、それに含まれていた全データについて削除、更新などの処理を行うためにこれを使用する。"
* identifier ^comment = "Bundleリソースのidentifier要素は以下の通りとする。\r\n
この仕様を満たすidentifierに加えて、これとは異なるsystem値をもつidentifierは複数存在しても構わない。\r\n
Bundle.identifier.system : system値として、”http://jpfhir.jp/fhir/clins/bundle-identifier” を設定する。\r\n
Bundle.identifier.value : 実装ガイド本文 6情報送信仕様--Bundleリソースを識別するIdentifier要素-- に記載の[Bundle-ID]の仕様とする。"

* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/clins/bundle-identifier" (exactly)
* identifier.value 1.. MS

* type = #collection (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは collection 固定とする。\r\n（document | message | transaction | transaction_response | batch | batch_response | history | searchset | collection）"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""

/*
* link ^short = "このBundleが格納するPatientリソース以外のリソースタイプ。"
* link ^definition = "このBundleが6情報リソース（4種類）のどれを格納するためのものかを、そのリソースのprofile　URLにより記述する。"
* link.relation = #profile
* link ^slicing.discriminator.type = #value
* link ^slicing.discriminator.path = "url"
* link ^slicing.rules = #closed
* link contains 
    allergyIntolerance 0..1 
 and condition 0..1
 and medicationRequest 0..1
 and observationLaboResult 0..1

* link[allergyIntolerance].url = $JP_AllergyIntolerance_CLINS_eCS (exactly)
* link[condition].url = $JP_Condition_CLINS_eCS (exactly)
* link[medicationRequest].url = $JP_MedicationRequest_CLINS_eCS (exactly)
* link[observationLaboResult].url = $JP_Observation_LabResult_CLINS_eCS (exactly)
*/

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.ordered = true
* entry ^slicing.rules = #closed
* entry contains
    patient 1..1 MS  //  患者情報
 and allergyIntolerance 0..
 and condition 0..
 and medicationRequest 0..  // 処方情報は作成して送信してもよいが処理されない。
 and observationLaboResult 0..

* entry ^short = "このBundleが格納するリソースの情報。"
* entry.extension ..0
* entry.modifierExtension ..0
* entry.link ..0 MS
* entry.search ..0
* entry.request ..0
* entry.response ..0

* entry[patient] ^short = "Patientリソース"
* entry[patient] ^definition = "患者情報"

* entry[patient].fullUrl 1.. MS
* entry[patient].resource 1.. MS
* entry[patient].resource only $JP_Patient_eCS

* entry[allergyIntolerance] ^short = "AllergyIntoleranceリソース"
* entry[allergyIntolerance] ^definition = "アレルギー情報／薬剤アレルギー等情報"
* entry[allergyIntolerance].fullUrl 1.. MS
* entry[allergyIntolerance].resource 1.. MS
* entry[allergyIntolerance].resource only $JP_AllergyIntolerance_eCS

* entry[condition] ^short = "Conditionリソース"
* entry[condition] ^definition = "傷病名情報"
* entry[condition].fullUrl 1.. MS
* entry[condition].resource 1.. MS
* entry[condition].resource only $JP_Condition_eCS


* entry[medicationRequest] ^short = "MedicationRequestリソース"
* entry[medicationRequest] ^definition = "処方情報"
* entry[medicationRequest].fullUrl 1.. MS
* entry[medicationRequest].resource 1.. MS
* entry[medicationRequest].resource only $JP_MedicationRequest_eCS


* entry[observationLaboResult] ^short = "Observationリソース"
* entry[observationLaboResult] ^definition = "検体検査結果／感染症情報"
* entry[observationLaboResult].fullUrl 1.. MS
* entry[observationLaboResult].resource 1.. MS
* entry[observationLaboResult].resource only $JP_Observation_LabResult_eCS
