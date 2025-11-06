// このファイルには2つのProfileが定義されている
// １：JP_CarePlan_eCS 　eCS 診療情報・サマリー汎用
// ２：JP_CarePlan_ePCS  eCarePatientSummary 用
/*
Profile:        JP_CarePlan
Parent:			CarePlan
Id:             JP-CarePlan
Description:    "Derived Profile from JP-Core"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_CarePlan"
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
*/

Profile:        JP_CarePlan_eCS
Parent:			JP_CarePlan
Id:             JP-CarePlan-eCS
Description:    "診療情報・サマリー汎用 CarePlan"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_CarePlan_eCS"
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja



* meta 1..1 MS
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 1.. MS
  * insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。")


* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^short = "generated"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status = #generated
* text.div MS
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式"

* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value 1..1 MS

* status 1..1 MS
* status ^short = "プランのステータス"
* status ^definition = "\"http://hl7.org/fhir/request-status\" コードから　draft | active | on-hold | revoked | completed | entered-in-error | unknown　など。
案、有効、保留、取消、完了、エラー、不明"
* status = #active

* intent 1..1 MS
* intent ^short = "趣旨区分"
* intent ^definition = "趣旨区分 \"http://hl7.org/fhir/request-intent\" proposal | plan | order | option 提案|計画|指示|オプション 入院時または退院時の方針では、内容によりいずれにもなりうるので、適切なコードを適宜選択して使用する。"
* intent = #plan

* category 1..1 MS
* category ^short = "プランのタイプ"
* category ^definition = "followup-plan、admission-plan、hospital-plan、discharge-plan"
* category.coding from $JP_carePlanCategory_VS

* title 1..1 MS
* title ^short = "プランの課題名称"
* title ^definition = "\"外来診療計画\" \"入院時方針\"　\"入院中の方針\"　\"退院時の方針\" など。その他の課題名称でも構わない。"

* description   1..1 MS
* description ^short = "プランの内容サマリー"
* description ^definition = "ここに具体的な内容を文字列で記述する。1MB以内。"

* subject   1..1    MS
* subject ^short = "患者Patientリソースへの参照"
* subject ^definition = "患者Patientリソースへの参照"
* subject  only Reference(JP_Patient)

* encounter  0..1    MS
* encounter ^short = "対象となる入院情報または退院情報を含む入院詳細情報"
* encounter ^definition = "対象となる入院情報または退院情報を含む入院詳細情報"
* encounter  only Reference(JP_Encounter_eCS)

* period    1..1 MS
* period ^short = "このプランがカバーする期間"
* period ^definition = "このプランがカバーする期間"
* period.start 1..1 MS
* period.start ^short = "入院日または、退院日または退院日以降のこのプランのカバー開始日付"
* period.start ^definition = "入院日または、退院日または退院日以降のこのプランのカバー開始日付"
* period.end 0..1 MS
* period.end ^short = "退院日または退院日以降のこのプランのカバー終了日付。通常省略されるが、ひき続き、次のプランに引き継ぐ場合には終了日付が入る。"
* period.end ^definition = "退院日または退院日以降のこのプランのカバー終了日付。通常省略されるが、ひき続き、次のプランに引き継ぐ場合には終了日付が入る。"

* created   0..1 MS
* created ^short = "このプランが最初に作成された日付"
* created ^definition = "このプランが最初に作成された日付"

* author 0..1 MS
* author ^short = "このプランの責任者情報への参照"
* author ^definition = "このプランの責任者情報への参照"
* author   only Reference(JP_Practitioner)

* contributor ..0 MS
* careTeam ..0 MS

//----- 患者療養計画サマリー専用のCarePlan-----------------

Profile:        JP_CarePlan_ePCS
Parent:			JP_CarePlan
Id:             JP-CarePlan-ePCS
Description:    "療養計画患者サマリー専用のCarePlan"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_CarePlan_ePCS"
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-07-04"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* obeys limitOfLength-description-1000chars

* meta.lastUpdated 1.. MS

* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value 1..1 MS
* status 1..1 MS
* status ^short = "プランのステータス"
* status ^definition = "\"http://hl7.org/fhir/request-status\" コードから active"
* status = #active

* intent 1..1 MS
* intent ^short = "趣旨区分"
* intent ^definition = "趣旨区分 \"http://hl7.org/fhir/request-intent\" コードから plan"
* intent = #plan

* category 0..1 MS
* category ^short = "プランのタイプ"
* category ^definition = "followup-plan、admission-plan、hospital-plan、discharge-plan"
* category.coding from $JP_carePlanCategory_VS

* title 1..1 MS
* title ^short = "プランの課題名称"
* title ^definition = "\"療養計画\" \"入院時方針\"　または　\"退院時の方針\" その他の課題名称でも構わない。"
* title = "療養計画"  (exactly)

* description   1..1 MS
* description ^short = "療養計画内容サマリー"
* description ^definition = "ここに具体的な内容を文字列で記述する。1MB以内。"

* subject   1..1    MS
* subject ^short = "患者Patientリソースへの参照"
* subject ^definition = "患者Patientリソースへの参照"
* subject  only Reference(JP_Patient_eCS)

* encounter  ..0    MS
* encounter ^short = "受診情報"
* encounter ^definition = "本計画を作成した外来受診情報、または入院情報、または退院情報"
* encounter   only Reference(JP_Encounter_eCS)

* period  1..1 MS
* period ^short = "このプランがカバーする対象期間"
* period ^definition = "指導日など指導、計画の期間"
* period.start 1..1 MS
* period.start ^short = "指導日、計画適用開始日"
* period.start ^definition = "指導日、計画適用開始日 dateTime型"
* period.start
* period.end 0..1 MS
* period.end ^short = "対象期間終了日"
* period.end ^definition = "指導終了予定日、計画適用終了日 dateTime型"

* created   1..1 MS
* created ^short = "この療養計画書が作成された日付"
* created ^definition = "この療養計画書が作成された日付 dateTime型"

* author ..0 MS
* author ^short = "作成者情報への参照"
* author ^definition = "作成者情報への参照"
* author   only Reference(JP_Practitioner_eCS)

* contributor ..0 MS
* careTeam ..0 MS
