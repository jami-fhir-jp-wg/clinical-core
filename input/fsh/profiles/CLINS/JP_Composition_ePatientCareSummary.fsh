Profile: JP_Composition_ePCS
Parent: Composition
Id: JP-Composition-ePCS
Description:  "患者療養計画サマリーのリソース構成情報と文書日付に関するCompositionの派生プロファイル"
// * obeys checkValidCategoryTitle
// * obeys checkValidCategory
// * obeys checkValidSections
* ^url = "http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_ePCS"

* ^version = "1.4.0"
* ^status = #active
* ^date = "2024-06-24"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja


* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = "http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_ePCS"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $composition-clinicaldocument-versionNumber named version 1..1
* extension[version] ^short = "文書バージョンを表す拡張"
* extension[version] 1..1 MS
* extension[version].url 1..1 MS
* extension[version].value[x] ^short = "文書のバージョン番号を表す文字列。"
* extension[version].value[x] ^definition = "文書のバージョン番号を表す文字列。\r\n例 : 第１版は  \"1\" とする。"
* extension[version].value[x] 1..1 MS

* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier" (exactly)
* identifier.system ^short = "文書リソースIDの名前空間を表すURI。固定値。"
* identifier.system ^definition = "文書リソースIDの名前空間を表すURI。固定値。"
* identifier.value 1.. MS
* identifier.value ^short = "文書リソースID"
* identifier.value ^definition = "その医療機関が発行した患者療養計画をその医療機関内において一意に識別するID（患者療養計画サマリー番号）を設定する。\r\n
Identifier型のvalue要素に、保険医療機関番号（10桁）、発行年（4桁）、施設内において発行年内で一意となる番号（32桁以内）をハット文字(“＾”)で連結した文字列を指定する。\r\n
例：”1311234567-2020-00123456"

* status = #final (exactly)
* status ^short = "この文書のステータス。"
* status ^definition = "この文書のステータス。\r\n仕様上は、preliminary | final | amended | entered_in_error　のいずれかを設定できるが、医療機関から登録される段階では、\"final\" でなければならない。"

* type ^short = "文書区分コード"
* type ^definition = "documentタイプのうち文書種別"
* type MS
* type.coding 1..1 MS
* type from $doc-typecodes_VS (required)
* type.coding.system = $doc-typecodes_CS (exactly)
* type.coding.system ^definition = "文書区分コードのコード体系を識別するURI。固定値"
* type.coding.system MS
* type.coding.version
* type.coding.code 1.. MS
* type.coding.code = #56447-6 (exactly)
* type.coding.code ^definition = "計画書\"56447-6\"を指定。固定値。"
* type.coding.display = "計画書" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display

* category 1..1 MS
* category ^short = "文書カテゴリーコード"
//* category ^definition = "文書カテゴリーコード。　患者サマリー（計画書）ではtype.coding.codeに記述される文書区分コードと同一。"
* category ^definition = "文書カテゴリーコード。　患者サマリー（計画書）では文書サブ区分からDISCHARGE:退院時文書、OUTPATIENT:外来文書 のいずれかを使用する。"
* category.coding 1..1 MS
//* category from http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes (required)
* category from $doc-subtypecodes_VS (required)

* category.coding.system 1.. MS
* category.coding.system = $doc-subtypecodes_CS (exactly)
* category.coding.system ^short = "文書カテゴリコードのコード体系"
* category.coding.system ^definition = "文書カテゴリコードのコード体系を識別するURI。固定値。"
* category.coding.code 1.. MS
* category.coding.code ^short = "文書カテゴリコード"
* category.coding.code ^definition = "文書カテゴリコード 患者サマリー（計画書）では、文書サブ区分からDISCHARGE:退院時文書、OUTPATIENT:外来文書 のいずれかを使用する。"
* category.coding.display ^short = "文書カテゴリコードの表示名"
* category.coding.display ^definition = "文書カテゴリ"


* subject 1.. MS
* subject ^short = "患者情報を表すPatientリソースへの参照。"
* subject ^definition = "患者情報を表すPatientリソースへの参照。"
* subject.reference 1..1 MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^definition = "Bundleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:11f0a9a6_a91d_3aef_fc4e_069995b89c4f\""
* subject only  Reference(JP_Patient_eCS)

* encounter ^short = "この文書が作成された受診時状況情報を表すEncounterリソースへの参照"
* encounter ^definition = "この文書が作成された受診時状況情報を表すEncounterリソースへの参照。入院外来区分を表すために記述する。"
* encounter 1..1 MS

* date ^definition = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。\r\n午前0時を\"24:00\"と記録することはできないため\"00:00\"と記録すること。　\r\n例：\"2020_08_21T12:28:21+09:00\""
* date 1..1 MS

* author 2..2 MS
* author ^short = "文書作成責任者、文書作成機関（診療科拡張あり）への参照。"
* author ^definition = "文書作成責任者を表すPractitionerリソースへの参照、および文書作成機関の診療科と文書作成機関を表すOrganizationリソースへの参照の2つのReference。"
* author only  Reference(JP_Practitioner_eCS or JP_Organization_eCS)
 
* title 1..1 MS
* title = "患者サマリー（療養計画書）" (exactly)

* custodian ..0 MS

* event ..0 MS

* section ..1 MS
* section.title 1.. MS
* section.title ^short = "セクションタイトル"
* section.title ^definition = "セクションタイトル。固定値。"
* section.code 1.. MS
* section.code ^short = "セクション区分コード"
* section.code ^definition = "セクション区分コード"
* section.code.coding 1..1 MS
* section.code.coding from http://jpfhir.jp/fhir/ePCS/ValueSet/document-section
* section.code.coding.system 1.. MS
* section.code.coding.system = "http://jpfhir.jp/fhir/clins/CodeSystem/document-section" (exactly)
* section.code.coding.system ^short = "セクション区分コードのコード体系"
* section.code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section.code.coding.code 1.. MS
* section.code.coding.code ^short = "セクション区分のコード値"
* section.code.coding.code ^definition = "セクション区分のコード値。\r\n固定値。"
* section.code.coding.display ^short = "セクション区分コードの表示名"
* section.code.coding.display ^definition = "セクション区分コードの表示名。"
* section.code.coding.display MS
* section.code.coding.userSelected ..0
* section.code.text ..0
* section.text ^short = "このセクションに含められるすべてのテキスト（叙述的記述）表現"
* section.text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section.text MS
* section.text.status MS
* section.text.status = #additional (exactly)
* section.text.status ^short = "セクションの内容作成状態コード"
* section.text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報も含めた完全な叙述表現であることを示す。"
* section.text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section.text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section.mode ..0
* section.orderedBy ..0

//
* section ^short = "計画サマリー"
* section ^definition = "計画サマリーセクション"
* section.title = "計画サマリー" (exactly)

* section.code.coding = http://jpfhir.jp/fhir/clins/CodeSystem/document-section#422 "計画サマリーセクション" (exactly)

* section.entry 
* section.entry  ^slicing.discriminator.type = #profile
* section.entry  ^slicing.discriminator.path = "resolve()"
* section.entry  ^slicing.rules = #closed

* section.entry contains
    carePlan 1..1 MS // 療養上の計画／アドバイス
and condition 1..* MS // 療養計画の対象となる傷病名（主病名とそれ以外）

* section.entry[carePlan] only Reference(JP_CarePlan_ePCS)
* section.entry[carePlan] ^short = "療養計画"
* section.entry[carePlan] ^definition = "療養計画"
* section.emptyReason ..1
* section.section ..0

* section.entry[condition] only Reference(JP_Condition_eCS)
* section.entry[condition] ^short = "傷病名"
* section.entry[condition] ^definition = "傷病名"
* section.emptyReason ..1
* section.section ..0
