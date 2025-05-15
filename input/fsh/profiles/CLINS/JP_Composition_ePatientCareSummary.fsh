Profile: JP_Composition_ePCS
Parent: Composition
Id: JP-Composition-ePCS
Description:  "患者療養計画サマリーのリソース構成情報と文書日付に関するCompositionの派生プロファイル"
// 履歴from 2025.4.1
// * meta 1..1 MS  行新規追加


// * obeys checkValidCategoryTitle
// * obeys checkValidCategory
// * obeys checkValidSections
* ^url = "http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_ePCS"

* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta 1..1 MS
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_ePCS|x.y.z")
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
例：”1311234567^2020^00123456"

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
* type.coding.system 1..1 MS
//* type.coding.version
* type.coding.code 1..1 MS
* type.coding.code = #56447-6 (exactly)
* type.coding.code ^definition = "計画書\"56447-6\"を指定。固定値。"
* type.coding.display = "計画書" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"


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
* title = "患者サマリー（療養計画書）" (exactly)  // 長音はU+E383BC　SJIS:815B
* title ^short = "人間が読みやすい名前/タイトル。長音文字はUTF8:E383BC、SJIS:815B の文字を使用する。"
* title ^definition = "人間が読みやすい名前/タイトル。長音文字はUTF8:E383BC、SJIS:815B の文字を使用する。"

* custodian ..0 MS

* event ..0 MS

* section 1..1 MS 
* section ^short = "計画サマリー"
* section ^definition = "計画サマリーセクション"
* section.title 1.. MS
* section.title ^short = "セクションタイトル。長音文字はUTF8:E383BC、SJIS:815B の文字を使用する。"
* section.title ^definition = "セクションタイトル。固定値。長音文字はUTF8:E383BC、SJIS:815B の文字を使用する。"
* section.title = "計画サマリー" (exactly)

* section.code 1.. MS
* section.code ^short = "セクション区分コード"
* section.code ^definition = "セクション区分コード"
* section.code.coding 1..1 MS
//* section.code.coding from http://jpfhir.jp/fhir/ePCS/ValueSet/document-section
* section.code.coding.system 1.. MS
* section.code.coding.system = "http://jpfhir.jp/fhir/clins/CodeSystem/document-section" (exactly)
* section.code.coding.system ^short = "セクション区分コードのコード体系"
* section.code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section.code.coding.code 1.. MS
* section.code.coding.code ^short = "セクション区分のコード値"
* section.code.coding.code ^definition = "計画サマリーセクションを表すセクションコード"
* section.code.coding.code = #422 (exactly)
* section.code.coding.display ^short = "セクション区分コードの表示名"
* section.code.coding.display ^definition = "セクション区分コードの表示名。"
* section.code.coding.display 0..1 MS
* section.code.coding.userSelected ..0
* section.code.text ..0
* section.author ..0
* section.focus ..0
* section.text ..0
/* 
* section.text ^short = "本セクションの内容の全部または一部をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであるが、この情報の取り扱いはcommentの詳細を必ず参照すること。"
* section.text ^definition = "本セクションの内容の全部または一部をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであるが、この情報の取り扱いはcommentの詳細を必ず参照すること。"
* section.text ^comment = "entryが空（存在しない）場合には、このセクションが表す完全なテキスト記述をこの要素に記述しなければならない。受信側はこのテキスト記述を必要に応じて利用することができる。構造情報（FHIRリソース）を参照するentryが存在する場合には、この要素は省略して構わないが、entryが持つ情報の概要とそれだけでは記述しきれない追加情報を記述してもよい。受信側はこの要素はentryが持つ完全な情報を伝えていないことがあるため、正確な情報を利用するにはentryの構造情報を使用しなければならず、この要素の情報だけを利用することは適切でない。この要素の情報は、entryの構造情報へのあくまで追加的な補足情報として利用する。"
* section.text MS
* section.text.status MS
* section.text.status = #additional (exactly)
* section.text.status ^short = "セクションの内容作成状態コード"
* section.text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報に追加すべき叙述表現であることを示す。"
* section.text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section.text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。"
*/
* section.mode ..0
* section.orderedBy ..0

//
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

* section.entry[condition] only Reference(JP_Condition_eCS)
* section.entry[condition] ^short = "傷病名"
* section.entry[condition] ^definition = "傷病名"

* section.emptyReason ..0
* section.section ..0
