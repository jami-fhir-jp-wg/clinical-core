// 
Invariant: checkExist-CDASection-or-structuredSection
Description: "【セクション構成はCDAセクションと構造情報セクションのどちらか一方だけ存在している必要がある。】"
Severity: #error
Expression: "((section.code.coding.where(code = '200')).exists()) xor ((section.code.coding.where(code = '300')).exists())"

Profile: JP_Composition_eDischargeSummary
Parent: Composition
Id: JP-Composition-eDischargeSummary
Description:  "退院時サマリーのリソース構成情報と文書日付に関するCompositionの派生プロファイル"
// 2025.5.4 * author 2..2 MS    //2025.5.4　実装ガイド表5-1に合わせて2..2として追加
// * obeys checkValidCategoryTitle
// * obeys checkValidCategory
// * obeys checkValidSections
* obeys checkExist-CDASection-or-structuredSection
* ^url = "http://jpfhir.jp/fhir/eDischargeSummary/StructureDefinition/JP_Composition_eDischargeSummary"

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
  * insert relative_short_definition("準拠しているプロファイルとして次のURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_eDischargeSummary|x.y.z")

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
* identifier.value ^definition = "その医療機関が発行した診療情報提供書をその医療機関内において一意に識別するID（診療情報提供書番号）を設定する。\r\n
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
* type.coding.system MS
* type.coding.version MS
* type.coding.code 1.. MS
* type.coding.code = #18842-5 (exactly)
* type.coding.code ^definition = "退院時サマリー\"18842-5\"を指定。固定値。"
* type.coding.display = "退院時サマリー" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display MS

* category 1..1 MS
* category ^short = "文書カテゴリーコード"
//* category ^definition = "文書カテゴリーコード。　退院時サマリーではtype.coding.codeに記述される文書区分コードと同一。"
* category ^definition = "文書カテゴリーコード。　退院時サマリーでは文書サブ区分からDISCHARGE:退院時文書 を使用する。"
* category.coding 1..1 MS
//* category from http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes (required)
* category from $doc-subtypecodes_VS (required)
* category.coding.system 1.. MS
//* category.coding.system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes" (exactly)
* category.coding.system = $doc-subtypecodes_CS (exactly)
* category.coding.system ^short = "文書カテゴリコードのコード体系"
* category.coding.system ^definition = "文書カテゴリコードのコード体系を識別するURI。固定値。"
* category.coding.code 1.. MS
* category.coding.code = #DISCHARGE (exactly)
* category.coding.code ^short = "文書カテゴリコード"
* category.coding.code ^definition = "文書カテゴリコード　 退院時サマリーでは、文書サブ区分からDISCHARGE:　退院時文書　を使用する。"
* category.coding.display ^short = "文書カテゴリコードの表示名"
* category.coding.display ^definition = "文書カテゴリ　 退院時サマリーでは、文書サブ区分からDISCHARGE:　退院時文書　を使用する。"

* subject 1.. MS
* subject ^short = "患者情報を表すPatientリソースへの参照。"
* subject ^definition = "患者情報を表すPatientリソースへの参照。"
* subject.reference 1..1 MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^definition = "Bundleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:11f0a9a6_a91d_3aef_fc4e_069995b89c4f\""
* subject only  Reference(JP_Patient_eCS)

* encounter ^short = "この文書が作成された受診時状況情報を表すEncounterリソースへの参照"
* encounter ^definition = "この文書が作成された受診時状況情報を表すEncounterリソースへの参照"
* encounter 0..1 MS
* encounter.reference ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"
* encounter.reference ^definition = "Bundleリソースに記述されるEncounterリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:12f0a9a6_a91d_8aef_d14e_069795b89c9f\""
* encounter.reference 1..1 MS
* encounter only Reference(JP_Encounter_eCS)

* date ^definition = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。\r\n午前0時を\"24:00\"と記録することはできないため\"00:00\"と記録すること。　\r\n例：\"2020_08_21T12:28:21+09:00\""
* date 1..1 MS

/*
* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open

* author contains
    authorPractitioner 1..1 MS 
and authorOrganization 1..1 MS
and authorDepartment 0..1 MS
* author[authorPractitioner] only  Reference(JP_Practitioner_eCS)
* author[authorOrganization] only  Reference(JP_Organization_eCS)
* author[authorDepartment] only  Reference(JP_Organization_eCS_department) */

* author 2..2 MS    //2025.5.4　実装ガイド表5-1に合わせて2..2として追加
* author ^short = "文書作成責任者と文書作成機関とへの参照。"
* author ^definition = "文書作成責任者を表すPractitionerリソースへの参照、および,文書作成機関か、または文書作成機関の診療科と文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。"

* author only  Reference(JP_Practitioner_eCS or JP_Organization_eCS)

* title 1..1 MS
* title = "退院時サマリー" (exactly)

* custodian 1..1 MS
* custodian ^short = "文書の作成・修正を行い、文書の管理責任を持つ医療機関（Organizationリソース）への参照"
* custodian ^definition = "文書作成機関と同一の組織の場合、custodian要素からは文書作成機関を表すOrganizationリソースへの参照となる。文書作成機関とは異なる組織である場合は、文書作成機関とは別のOrganizationリソースで表現し、custodian要素からはそのOrganizationリソースを参照する。"
* custodian only Reference(JP_Organization_eCS)
* custodian.reference 1..1
* custodian.reference ^short = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* custodian.reference ^definition = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:179f9f7f_e546_04c2_6888_a9e0b24e5720\""

/* 退院時サマリーでは診療情報提供書と異なり、この文書が対象とした入院日と退院日を格納する。入院中に作成している場合には退院日は空欄となることもある　*/
* event 1..1 MS 
* event ^short = "退院時サマリーの発行イベントの情報"
* event ^definition = "退院時サマリーの発行イベントの情報　診療情報提供書と違いこの要素はなくてもよい"
* event.code ..0 
* event.period 1..  MS 
* event.period ^short = "退院時サマリーの対象となる入院期間"
* event.period ^definition = "退院時サマリーの対象となる入院期間。ISO8601に準拠yyyy-mm-dd形式で記述する。"
* event.period.start 1..  MS 
* event.period.start ^short = "退院時サマリーの対象となる入院期間の入院日"
* event.period.start ^definition = "退院時サマリーの対象となる入院期間の入院日。ISO8601に準拠yyyy-mm-dd形式で記述する。"
* event.period.end 1..  MS 
* event.period.end ^short = "退院時サマリーの対象となる入院期間の退院日"
* event.period.end ^definition = "退院時サマリーの対象となる入院期間の退院日。ISO8601に準拠yyyy-mm-dd形式で記述する。"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
/*
* section.title 1.. MS
* section.title ^short = "セクションタイトル"
* section.title ^definition = "セクションタイトル。固定値。"
* section.code 1.. MS
* section.code ^short = "セクション区分コード"
* section.code ^definition = "セクション区分コード"
* section.code.coding 1..1 MS
* section.code.coding from http://jpfhir.jp/fhir/eDischargeSummary/ValueSet/document-section
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
* section.text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報に追加すべき叙述表現であることを示す。"
* section.text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section.text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。"
* section.mode ..0
* section.orderedBy ..0
*/
* section contains
    cdaSection   0..1 MS // CDA参照セクション    cdaSection
    and structuredSection     0..1 MS // 構造情報セクション   structuredSection
	and attachmentSection    0..*    MS  //  添付情報セクション	attachmentSection
    and pdfSection    0..*    MS  //  PDFセクション	pdfSection
// CDA参照セクションと構造情報セクションは、どちらか一方だけが出現する。制約条件の記述が必要。
//
//
* insert sectionTitleCodeDefinition(eDischargeSummary,cdaSection,CDA参照,200,-本セクションは電子カルテ情報共有サービスでは使用しない。)
* insert sectionTextDefinition(cdaSection)
* section[cdaSection].mode ..0
* section[cdaSection].orderedBy ..0
* section[cdaSection].entry 1..1
* section[cdaSection].entry only Reference(DocumentReference)
* section[cdaSection].entry ^short = "CDA規約文書ファイルへの参照"
* section[cdaSection].entry ^definition = "CDA規約文書ファイルへの参照"
* section[cdaSection].emptyReason ..1
* section[cdaSection].section ..0

//
* insert sectionTitleCodeDefinition(eDischargeSummary,attachmentSection,添付情報,210,)
* insert sectionTextDefinition(attachmentSection)

* section[attachmentSection].entry 1..*
* section[attachmentSection].entry only Reference(DocumentReference or Bundle) 
* section[attachmentSection].entry ^short = "添付情報ファイルへの参照"
* section[attachmentSection].entry ^definition = "添付情報ファイルへの参照"
* section[attachmentSection].emptyReason ..1
* section[attachmentSection].section ..0
* section[attachmentSection].mode ..0
* section[attachmentSection].orderedBy ..0

//
* insert sectionTitleCodeDefinition(eDischargeSummary,pdfSection,PDF,230,)
* insert sectionTextDefinition(pdfSection)

* section[pdfSection].entry 1..*
* section[pdfSection].entry only Reference(DocumentReference)
* section[pdfSection].entry ^short = "PDFファイルへの参照"
* section[pdfSection].entry ^definition = "PDFファイルへの参照"
* section[pdfSection].emptyReason ..1
* section[pdfSection].section ..0
* section[pdfSection].mode ..0
* section[pdfSection].orderedBy ..0

//
* insert sectionTitleCodeDefinition(eDischargeSummary,structuredSection,構造情報,300,)
* insert sectionTextDefinition(structuredSection)
* section[structuredSection].text ..0 
* section[structuredSection].emptyReason ..1  MS

* section[structuredSection].section ^slicing.discriminator.type = #value
* section[structuredSection].section ^slicing.discriminator.path = "code.coding.code"
* section[structuredSection].section ^slicing.rules = #open

* section[structuredSection].section   contains 
        detailsOnAdmissionSection	  1..1    MS  // 入院時詳細セクション
    and diagnosesOnAdmissionSection    1..1    MS  // 入院時診断セクション
    and allergyIntoleranceSection     0..1    MS  // アレルギー・不耐性反応セクション
    and chiefComplaintsSection    1..1    MS  // 主訴セクション
    and reasonForAdmissionSection      1..1    MS  // 入院理由セクション
    and presentIllnessSection     1..1    MS  // 現病歴セクション
    and pastIllnessSection    0..1    MS  // 既往歴セクション
    and medicationsOnAdmissionSection   0..1    MS  //  入院時服薬セクション
    and socialHistorySection      0..1    MS  //  社会歴・生活習慣セクション
	and physicalStatusOnAdmissionSection   0..1    MS  //  入院時身体所見セクション
	and familiyHistorySection      0..1    MS  //  家族歴セクション
	and hospitalCourseSection     1..1    MS  //  入院中経過セクション
	and detailsOnDischargeSection     1..1    MS  //  退院時詳細セクション
	and diagnosesOnDischargeSection     1..1    MS  //  退院時診断セクション
	and medicationOnDischargeSection     1..1    MS  //  退院時投薬指示セクション 
	and instructionOnDischargeSection     1..1    MS  //  退院時方針指示セクション
	and physicalStatusOnDischargeSection    0..1    MS  //  退院時身体所見セクション
	and hospitalProcedureSection 0..1 MS // 入院中治療セクション
    and hospitalStudySection   0..1 MS // 入院中検査結果セクション
    and medicalDeviceSection      0..1    MS  //  医療機器セクション
    and immunizationSection      0..1    MS  // 予防接種歴セクション
	and advanceDirectiveSection   0..1    MS  //  事前指示セクション
	and researchParticipationSection      0..1    MS  //  臨床研究参加セクション
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,detailsOnAdmissionSection,入院時詳細,322)
* insert compositionSectionTextDefinition(structuredSection,detailsOnAdmissionSection)
* section[structuredSection].section[detailsOnAdmissionSection].mode ..0
* section[structuredSection].section[detailsOnAdmissionSection].orderedBy ..0
* section[structuredSection].section[detailsOnAdmissionSection].entry 1..1 MS
* section[structuredSection].section[detailsOnAdmissionSection].entry only Reference(JP_Encounte_eCS)
* section[structuredSection].section[detailsOnAdmissionSection].entry ^short = "Encounterリソースを参照"
* section[structuredSection].section[detailsOnAdmissionSection].entry ^definition = "Encounterリソースを参照"
* section[structuredSection].section[detailsOnAdmissionSection].emptyReason ..1 MS
* section[structuredSection].section[detailsOnAdmissionSection].section ..0
//
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,diagnosesOnAdmissionSection,入院時診断,342)
* insert compositionSectionTextDefinition(structuredSection,diagnosesOnAdmissionSection)
* section[structuredSection].section[diagnosesOnAdmissionSection].mode ..0
* section[structuredSection].section[diagnosesOnAdmissionSection].orderedBy ..0
* section[structuredSection].section[diagnosesOnAdmissionSection].entry 0..* MS
* section[structuredSection].section[diagnosesOnAdmissionSection].entry only Reference(JP_Condition)
* section[structuredSection].section[diagnosesOnAdmissionSection].entry ^short = "必須。（入院時の）傷病名・主訴を１個以上必ず記述する。"
* section[structuredSection].section[diagnosesOnAdmissionSection].entry ^definition = "（入院時の）傷病名"
* section[structuredSection].section[diagnosesOnAdmissionSection].emptyReason ..1 MS
* section[structuredSection].section[diagnosesOnAdmissionSection].section ..0
//
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,allergyIntoleranceSection,アレルギー・不耐性反応,510)
* insert compositionSectionTextDefinition(structuredSection,allergyIntoleranceSection)
* section[structuredSection].section[allergyIntoleranceSection].mode ..0
* section[structuredSection].section[allergyIntoleranceSection].orderedBy ..0
* section[structuredSection].section[allergyIntoleranceSection].entry 0..* MS
* section[structuredSection].section[allergyIntoleranceSection].entry only Reference(JP_AllergyIntolerance)
* section[structuredSection].section[allergyIntoleranceSection].entry ^short = "アレルギー・不耐性反応情報を記述したAllergyIntoleranceリソースを参照"
* section[structuredSection].section[allergyIntoleranceSection].entry ^definition = """アレルギー・不耐性反応情報を記述して参照する。
                                                                1つのアレルギーにつき1つのAllergyIntoleranceリソースで記述されたものを参照する。
                                                                記述すべきアレルギー・不耐性反応情報が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                アレルギー・不耐性反応情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。                                                                
                                                                """
* section[structuredSection].section[allergyIntoleranceSection].emptyReason ..1
* section[structuredSection].section[allergyIntoleranceSection].section ..0
//
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,chiefComplaintsSection,主訴,352)
* insert compositionSectionTextDefinition(structuredSection,chiefComplaintsSection)
* section[structuredSection].section[chiefComplaintsSection].mode ..0
* section[structuredSection].section[chiefComplaintsSection].orderedBy ..0
* section[structuredSection].section[chiefComplaintsSection].entry 0..* MS
* section[structuredSection].section[chiefComplaintsSection].entry only Reference(JP_Condition)
* section[structuredSection].section[chiefComplaintsSection].entry ^short = "主訴に対応するConditionリソースを参照"
* section[structuredSection].section[chiefComplaintsSection].entry ^definition = "主訴に対応するConditionリソースを参照"
* section[structuredSection].section[chiefComplaintsSection].emptyReason ..1
* section[structuredSection].section[chiefComplaintsSection].section ..0
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,reasonForAdmissionSection,入院理由,312)
* insert compositionSectionTextDefinition(structuredSection,reasonForAdmissionSection)
* section[structuredSection].section[reasonForAdmissionSection].mode ..0
* section[structuredSection].section[reasonForAdmissionSection].orderedBy ..0
* section[structuredSection].section[reasonForAdmissionSection].entry 0..1 MS
* section[structuredSection].section[reasonForAdmissionSection].entry only Reference(JP_Encounter_eCS)
* section[structuredSection].section[reasonForAdmissionSection].entry ^short = "入院理由をEncounter.reasonCodeに記述する"
* section[structuredSection].section[reasonForAdmissionSection].entry ^definition = "CodeableConceptであるEncounter.reasonCodeに病名あるいはtextで記述できる"
* section[structuredSection].section[reasonForAdmissionSection].emptyReason ..1
* section[structuredSection].section[reasonForAdmissionSection].section ..0
////
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,presentIllnessSection,現病歴,360)
* insert compositionSectionTextDefinition(structuredSection,presentIllnessSection)
* section[structuredSection].section[presentIllnessSection].mode ..0
* section[structuredSection].section[presentIllnessSection].orderedBy ..0
* section[structuredSection].section[presentIllnessSection].entry 0..* MS
* section[structuredSection].section[presentIllnessSection].entry only Reference(JP_Condition)
* section[structuredSection].section[presentIllnessSection].entry ^short = "必須。現病歴として記述すべき疾患に関する現在にいたる経過歴を１個以上必ず記述したConditionリソースを参照する。"
* section[structuredSection].section[presentIllnessSection].entry ^definition = """フリーテキストでしか記述できない場合には、それをCondition.code.text 
                                                                            およびCodition.noteに記述したConditionリソースを参照する。
                                                                            疾患ごとに分けて現病歴を記述できる場合には、それぞれをひとつのConditionリソースで記述して参照する。
                                                                            """
* section[structuredSection].section[presentIllnessSection].emptyReason ..1
* section[structuredSection].section[presentIllnessSection].section ..0
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,pastIllnessSection,既往歴,370)
* insert compositionSectionTextDefinition(structuredSection,pastIllnessSection)
* section[structuredSection].section[pastIllnessSection].mode ..0
* section[structuredSection].section[pastIllnessSection].orderedBy ..0
* section[structuredSection].section[pastIllnessSection].entry 0..* MS
* section[structuredSection].section[pastIllnessSection].entry only Reference(JP_Condition)
* section[structuredSection].section[pastIllnessSection].entry ^short = "既往歴をConditionリソースに記述して参照する。"
* section[structuredSection].section[pastIllnessSection].entry ^definition = """既往歴をConditionリソースに記述して参照する。
                                                                1つの既往疾患につき1つのConditionリソースで記述されたものを参照する。
                                                                記述すべき既往疾患が存在しないことを明示的に記述する（「既往特になし」など）場合にはentry要素は出現せず、emptyReasonにnilknownを記述する。
                                                                既往疾患情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                """
* section[structuredSection].section[pastIllnessSection].emptyReason ..1
* section[structuredSection].section[pastIllnessSection].section ..0
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,medicationsOnAdmissionSection,入院時服薬,432)
* insert compositionSectionTextDefinition(structuredSection,medicationsOnAdmissionSection)
* section[structuredSection].section[medicationsOnAdmissionSection].mode ..0
* section[structuredSection].section[medicationsOnAdmissionSection].orderedBy ..0
* section[structuredSection].section[medicationsOnAdmissionSection].entry 0..* MS
* section[structuredSection].section[medicationsOnAdmissionSection].entry only Reference(JP_MedicationRequest_eCS)
* section[structuredSection].section[medicationsOnAdmissionSection].entry ^short = "投薬情報を記述したMedicationStatementを参照"
* section[structuredSection].section[medicationsOnAdmissionSection].entry ^definition = """入院時の服薬情報（正確には入院直前までの服薬情報）は、1医薬品ごとに1つのMedicationStatementリソースを使用して記述する。
    MedicationStatementでは、1医薬品ごとに用法を記述することができ、
    それが必要な場合で情報が入手できる場合には、MedicationStatement.dosage要素に記述する"""
* section[structuredSection].section[medicationsOnAdmissionSection].emptyReason ..1
* section[structuredSection].section[medicationsOnAdmissionSection].section ..0
////
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,socialHistorySection,社会歴・生活習慣,640)
* insert compositionSectionTextDefinition(structuredSection,socialHistorySection)
* section[structuredSection].section[socialHistorySection].mode ..0
* section[structuredSection].section[socialHistorySection].orderedBy ..0
* section[structuredSection].section[socialHistorySection].entry 0..* MS
* section[structuredSection].section[socialHistorySection].entry only Reference(JP_Observation_SocialHistory)
* section[structuredSection].section[socialHistorySection].entry ^short = "社会歴・生活習慣情報を記述したObservationリソースを参照"
* section[structuredSection].section[socialHistorySection].entry ^definition = """社会歴・生活習慣情報を記述して参照する。
                                                                1つの社会歴・生活習慣につき1つのObservationリソースで記述されたものを参照する。
                                                                記述すべき社会歴・生活習慣情報が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                社会歴・生活習慣情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[socialHistorySection].emptyReason ..1
* section[structuredSection].section[socialHistorySection].section ..0
//
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,physicalStatusOnAdmissionSection,入院時身体所見,612)
* insert compositionSectionTextDefinition(structuredSection,physicalStatusOnAdmissionSection)
* section[structuredSection].section[physicalStatusOnAdmissionSection].mode ..0
* section[structuredSection].section[physicalStatusOnAdmissionSection].orderedBy ..0
* section[structuredSection].section[physicalStatusOnAdmissionSection].entry 0..* MS
* section[structuredSection].section[physicalStatusOnAdmissionSection].entry only Reference(JP_Observation_Common)
* section[structuredSection].section[physicalStatusOnAdmissionSection].entry ^short = "入院時の身体所見を記述したObservationリソースを参照"
* section[structuredSection].section[physicalStatusOnAdmissionSection].entry ^definition = """入院時の身体所見を記述して参照する。
                                                                1つの身体所見につき1つのObservationリソースで記述されたものを参照する。
                                                                記述すべき身体所見が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                身体所見を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                """
* section[structuredSection].section[physicalStatusOnAdmissionSection].emptyReason ..1
* section[structuredSection].section[physicalStatusOnAdmissionSection].section ..0
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,familiyHistorySection,家族歴,550)
* insert compositionSectionTextDefinition(structuredSection,familiyHistorySection)
* section[structuredSection].section[familiyHistorySection].mode ..0
* section[structuredSection].section[familiyHistorySection].orderedBy ..0
* section[structuredSection].section[familiyHistorySection].entry 0..* MS
* section[structuredSection].section[familiyHistorySection].entry only Reference(JP_FamilyMemberHistory)
* section[structuredSection].section[familiyHistorySection].entry ^short = "入院時に取得した家族歴情報を記述したFamilyMemberHistoryリソースを参照"
* section[structuredSection].section[familiyHistorySection].entry ^definition = """入院時に取得した家族歴情報情報を記述して参照する。
                                                                1つの家族歴につき1つのFamilyMemberHistoryリソースで記述されたものを参照する。
                                                                記述すべき家族歴情報が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                家族歴情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                """
* section[structuredSection].section[familiyHistorySection].emptyReason ..1
* section[structuredSection].section[familiyHistorySection].section ..0
//
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,hospitalCourseSection,入院中経過,333)
* insert compositionSectionTextDefinition(structuredSection,hospitalCourseSection)
* section[structuredSection].section[hospitalCourseSection].mode ..0
* section[structuredSection].section[hospitalCourseSection].orderedBy ..0
* section[structuredSection].section[hospitalCourseSection].entry 1..* MS
* section[structuredSection].section[hospitalCourseSection].entry only Reference(JP_DocumentReference)
* section[structuredSection].section[hospitalCourseSection].entry ^short = "臨床経過を記述したDocumentReferenceリソースを参照"
* section[structuredSection].section[hospitalCourseSection].entry ^definition = """臨床経過を記述して参照する。
                                                                1つ以上のDocumentReferenceリソースで記述されたものを参照する。
                                                                診療情報提供書では臨床経過の記述は常に必要である。
                                                                """
* section[structuredSection].section[hospitalCourseSection].emptyReason ..1
* section[structuredSection].section[hospitalCourseSection].section ..0
////
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,detailsOnDischargeSection,退院時詳細,324)
* insert compositionSectionTextDefinition(structuredSection,detailsOnDischargeSection)
* section[structuredSection].section[detailsOnDischargeSection].mode ..0
* section[structuredSection].section[detailsOnDischargeSection].orderedBy ..0
* section[structuredSection].section[detailsOnDischargeSection].entry 1..1 MS
* section[structuredSection].section[detailsOnDischargeSection].entry only Reference(JP_Encounter_eCS)
* section[structuredSection].section[detailsOnDischargeSection].entry ^short = "Encounterへの参照"
* section[structuredSection].section[detailsOnDischargeSection].entry ^definition = "Encounterへの参照"
* section[structuredSection].section[detailsOnDischargeSection].emptyReason ..1
* section[structuredSection].section[detailsOnDischargeSection].section ..0
//
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,diagnosesOnDischargeSection,退院時診断,344)
* insert compositionSectionTextDefinition(structuredSection,diagnosesOnDischargeSection)
* section[structuredSection].section[diagnosesOnDischargeSection].mode ..0
* section[structuredSection].section[diagnosesOnDischargeSection].orderedBy ..0
* section[structuredSection].section[diagnosesOnDischargeSection].entry 1..* MS
* section[structuredSection].section[diagnosesOnDischargeSection].entry only Reference(JP_Condition)
* section[structuredSection].section[diagnosesOnDischargeSection].entry ^short = "必須。傷病名・主訴を１個以上必ず記述する。"
* section[structuredSection].section[diagnosesOnDischargeSection].entry ^definition = """傷病名・主訴を１個以上必ず記述する。1つにつき1つのConditionで記述されたものを参照する。
    フリーテキストでしか記述できない場合には、Condition.code.text に記述する。
    """
* section[structuredSection].section[diagnosesOnDischargeSection].emptyReason ..1 MS
* section[structuredSection].section[diagnosesOnDischargeSection].section ..0
////
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,medicationOnDischargeSection,退院時投薬指示,444)
* insert compositionSectionTextDefinition(structuredSection,medicationOnDischargeSection)
* section[structuredSection].section[medicationOnDischargeSection].mode ..0
* section[structuredSection].section[medicationOnDischargeSection].orderedBy ..0
* section[structuredSection].section[medicationOnDischargeSection].entry 0..* MS
* section[structuredSection].section[medicationOnDischargeSection].entry only Reference(JP_MedicationRequest_eCS)
* section[structuredSection].section[medicationOnDischargeSection].entry ^short = "退院時の投薬指示情報を記述したMedicationRequestリソースを参照"
* section[structuredSection].section[medicationOnDischargeSection].entry ^definition = """投薬指示情報を記述して参照する。
                                                                1つの投薬指示情報につき1つのMedicationRequestリソースで記述されたものを参照する。
                                                                記述すべき投薬指示情報が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                投薬指示情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[medicationOnDischargeSection].emptyReason ..1
* section[structuredSection].section[medicationOnDischargeSection].section ..0
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,instructionOnDischargeSection,退院時方針指示,424)
* insert compositionSectionTextDefinition(structuredSection,instructionOnDischargeSection)
* section[structuredSection].section[instructionOnDischargeSection].mode ..0
* section[structuredSection].section[instructionOnDischargeSection].orderedBy ..0
* section[structuredSection].section[instructionOnDischargeSection].entry 0..* MS
* section[structuredSection].section[instructionOnDischargeSection].entry only Reference(JP_CarePlan)
* section[structuredSection].section[instructionOnDischargeSection].entry ^short = "退院時方針指示を記述したCarePlanリソースを参照"
* section[structuredSection].section[instructionOnDischargeSection].entry ^definition = """診療方針指示を記述して参照する。
                                                                1つの指示をひとつのCarePlanリソースで記述されたものを参照する。
                                                                記述すべき診療方針指示が特にないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[instructionOnDischargeSection].emptyReason ..1
* section[structuredSection].section[instructionOnDischargeSection].section ..0
////
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,physicalStatusOnDischargeSection,退院時身体所見,614)
* insert compositionSectionTextDefinition(structuredSection,physicalStatusOnDischargeSection)
* section[structuredSection].section[physicalStatusOnDischargeSection].mode ..0
* section[structuredSection].section[physicalStatusOnDischargeSection].orderedBy ..0
* section[structuredSection].section[physicalStatusOnDischargeSection].entry 0..* MS
* section[structuredSection].section[physicalStatusOnDischargeSection].entry only Reference(JP_Observation_Common)
* section[structuredSection].section[physicalStatusOnDischargeSection].entry ^short = "退院時の身体所見を記述したObservationリソースを参照"
* section[structuredSection].section[physicalStatusOnDischargeSection].entry ^definition = """退院時の身体所見を記述して参照する。
                                                                1つの身体所見につき1つのObservationリソースで記述されたものを参照する。
                                                                記述すべき身体所見が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                身体所見を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                """
* section[structuredSection].section[physicalStatusOnDischargeSection].emptyReason ..1
* section[structuredSection].section[physicalStatusOnDischargeSection].section ..0

////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,hospitalProcedureSection,入院中治療,713)
* insert compositionSectionTextDefinition(structuredSection,hospitalProcedureSection)
* section[structuredSection].section[hospitalProcedureSection].mode ..0
* section[structuredSection].section[hospitalProcedureSection].orderedBy ..0
* section[structuredSection].section[hospitalProcedureSection].entry 0..* MS
* section[structuredSection].section[hospitalProcedureSection].entry only Reference(JP_Procedure)
* section[structuredSection].section[hospitalProcedureSection].entry ^short = "治療情報を記述したProcedureリソースを参照"
* section[structuredSection].section[hospitalProcedureSection].entry ^definition = """治療情報を記述して参照する。
                                                                1つの治療情報につき1つのProcedureリソースで記述されたものを参照する。
                                                                記述すべき治療情報が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                治療情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                               """
* section[structuredSection].section[hospitalProcedureSection].emptyReason ..1
* section[structuredSection].section[hospitalProcedureSection].section ..0
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,hospitalStudySection,入院中検査結果,623)
* insert compositionSectionTextDefinition(structuredSection,hospitalStudySection)
* section[structuredSection].section[hospitalStudySection].mode ..0
* section[structuredSection].section[hospitalStudySection].orderedBy ..0
* section[structuredSection].section[hospitalStudySection].entry 0..* MS
* section[structuredSection].section[hospitalStudySection].entry only Reference(JP_Observation_Common or JP_ImagingStudy_Radiology or JP_DiagnosticReport_Common or Bundle)
* section[structuredSection].section[hospitalStudySection].entry ^short = "入院中検査結果を記述したObservationリソースなどを参照"
* section[structuredSection].section[hospitalStudySection].entry ^definition = """入院中検査結果を記述して参照する。記述すべき結果が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                結果データを取得しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                """
* section[structuredSection].section[hospitalStudySection].emptyReason ..1
* section[structuredSection].section[hospitalStudySection].section ..0

////
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,medicalDeviceSection,医療機器,810)
* insert compositionSectionTextDefinition(structuredSection,medicalDeviceSection)
* section[structuredSection].section[medicalDeviceSection].mode ..0
* section[structuredSection].section[medicalDeviceSection].orderedBy ..0
* section[structuredSection].section[medicalDeviceSection].entry 0..* MS
* section[structuredSection].section[medicalDeviceSection].entry only Reference(JP_DeviceUseStatement)
* section[structuredSection].section[medicalDeviceSection].entry ^short = "医療機器情報を記述したDocumentReferenceリソースを参照"
* section[structuredSection].section[medicalDeviceSection].entry ^definition = """医療機器情報を記述して参照する。
                                                                1つの医療機器情報をひとつのDeviceUseStatementリソースで記述されたものを参照する。
                                                                記述すべき医療機器情報が特にないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[medicalDeviceSection].emptyReason ..1
* section[structuredSection].section[medicalDeviceSection].section ..0
////
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,immunizationSection,予防接種歴,530)
* insert compositionSectionTextDefinition(structuredSection,immunizationSection)
* section[structuredSection].section[immunizationSection].mode ..0
* section[structuredSection].section[immunizationSection].orderedBy ..0
* section[structuredSection].section[immunizationSection].entry 0..* MS
* section[structuredSection].section[immunizationSection].entry only Reference(JP_Immunization)
* section[structuredSection].section[immunizationSection].entry ^short = "予防接種歴情報を記述したImmunizationリソースを参照"
* section[structuredSection].section[immunizationSection].entry ^definition = """予防接種歴情報を記述して参照する。
                                                                1つの予防接種歴情報につき1つのImmunizationリソースで記述されたものを参照する。
                                                                記述すべき予防接種歴情報が存在しないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                予防接種歴情報を聴取しようとしていない場合でそれを明示的に記述する（「取得せず」など）場合にはentry要素は出現せず、emptyReasonに notasked を記述する。
                                                                情報が患者やシステムから取得できない状況でそれを明示的に記述する（「取得できず」「不明」など）場合にはentry要素は出現せず、emptyReasonに unavailable を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[immunizationSection].emptyReason ..1
* section[structuredSection].section[immunizationSection].section ..0
//
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,advanceDirectiveSection,事前指示,410)
* insert compositionSectionTextDefinition(structuredSection,advanceDirectiveSection)
* section[structuredSection].section[advanceDirectiveSection].mode ..0
* section[structuredSection].section[advanceDirectiveSection].orderedBy ..0
* section[structuredSection].section[advanceDirectiveSection].entry 0..* MS
* section[structuredSection].section[advanceDirectiveSection].entry only Reference(JP_Consent)
* section[structuredSection].section[advanceDirectiveSection].entry ^short = "事前指示を記述したConcentリソースを参照"
* section[structuredSection].section[advanceDirectiveSection].entry ^definition = """事前指示を記述して参照する。
                                                                1つの指示をひとつのConsentリソースで記述されたものを参照する。
                                                                記述すべき事前指示が特にないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[advanceDirectiveSection].emptyReason ..1
* section[structuredSection].section[advanceDirectiveSection].section ..0
////
* insert compositionSectionTitleCodeDefinition(structuredSection,eDischargeSummary,researchParticipationSection,臨床研究参加,830)
* insert compositionSectionTextDefinition(structuredSection,researchParticipationSection)
* section[structuredSection].section[researchParticipationSection].mode ..0
* section[structuredSection].section[researchParticipationSection].orderedBy ..0
* section[structuredSection].section[researchParticipationSection].entry 0..* MS
* section[structuredSection].section[researchParticipationSection].entry only Reference(JP_ResearchSubject)
* section[structuredSection].section[researchParticipationSection].entry ^short = "臨床研究参加情報を記述したDocumentReferenceリソースを参照"
* section[structuredSection].section[researchParticipationSection].entry ^definition = """臨床研究参加情報を記述して参照する。
                                                                1つの臨床研究参加情報をひとつのResearchSubjectリソースで記述されたものを参照する。
                                                                記述すべき臨床研究参加情報が特にないことを明示的に記述する（「特になし」など）場合にはentry要素は出現せず、emptyReasonに nilknown を記述する。
                                                                記述すべき情報が特にない場合であって、そのことを明示的に記述する必要もない場合には、このサブセクションを出現させない。
                                                                """
* section[structuredSection].section[researchParticipationSection].emptyReason ..1
* section[structuredSection].section[researchParticipationSection].section ..0
//