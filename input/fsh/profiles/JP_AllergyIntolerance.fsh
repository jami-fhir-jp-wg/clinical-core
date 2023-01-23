// ==============================
//   Profile 定義
// ==============================
Profile: JP_AllergyIntolerance_CCS
Parent: JP_AllergyIntolerance
Id: jp-allergyintolerance-ccs
Title: "FHIR臨床コア情報 Clinical-coreセットのひとつ。アレルギー・不耐性情報AllergyIntoleranceプロファイル"
Description: "FHIR臨床コア情報 Clinical-coreセットのひとつ。アレルギー・不耐性情報AllergyIntoleranceプロファイル。JP_AllergyIntoleranceの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_CCS"
* ^status = #active
* ^date = "2023-01-23"

* . ^short = "アレルギー不耐症 (特定の物質への暴露で生じた有害反応)"
* . ^definition = "このリソースは患者のアレルギー不耐症を表現する。具体的には、特定の物質または物質群への暴露によって生じる有害反応の傾向や、潜在的なリスクを表現する。"
* text ^short = "このリソースを人間が解釈するためのテキスト要約"
* clinicalStatus ^short = "このアレルギー不耐症のステータス"
* clinicalStatus ^definition = "このアレルギー不耐症のステータス。active | inactive | resolved (アクティブ | 非アクティブ | 解決済み"
* verificationStatus ^short = "unconfirmed | confirmed | refuted | entered-in-error (未確認 | 確認済み | 否定された | 入力エラー)"
* verificationStatus ^definition = "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).\r\n\r\n特定された物質（医薬品を含む）が有害反応を誘発する確実性の度合い。"

* type MS
* type ^short = "アレルギーか不耐性かの区分。allergy | intolerance - Underlying mechanism (if known) （アレルギー | 不耐症）"
* type ^definition = "有害反応を誘発する生理的なメカニズムが特定できる場合にアレルギーか不耐性かを区別する。"

// IAM-2 アレルゲン分類
* category 0..1 MS 
* category ^short = "同定された物質のカテゴリー. food | medication | environment | biologic (食品 | 薬品 | 環境 | 生体)"
* category ^definition = "同定された物質のカテゴリー"
* category ^comment = "【SS-MIX2】<IAM-2> アレルゲン分類「0127-アレルゲン分類」コード表　DA(薬物)->\"medication\"、FA(食物)->\"food\"、EA(環境)->\"environment\"、AA(動物),PA(植物),LA(花粉)->\"biologic\"、MA(種々のアレルギー),MC(種々の禁忌)については適切な分類先コードがないので、分類先不能の場合には\"biologic\"としておく。" 

// IAM-4 アレルギー重症度
* criticality MS
* criticality ^short = "同定された物質が誘発する有害反応の臨床的な重要度。low | high | unable-to-assess (低い | 高い | 評価できない)"
* criticality ^definition = "同定された物質が誘発する有害反応の臨床的な重要度。"
* criticality ^comment = "【SS-MIX2】<IAM-4> アレルギー重症度「0128-アレルゲン重症度」コード表　SV(重度)->\"high\"、MO(中等度)->\"high\"、MI(軽度)->\"low\"、U（不明）->\"high\""

// IAM-3 アレルゲン情報
* code MS
* code from JP_AllergyIntolerance_VS (example)
* code ^short = "このアレルギー不耐症の識別コード"
* code ^definition = "アレルギー不耐症を識別するためのコード（肯定または否定・除外の両者を含む）。このコードは、アレルゲンとなる物資（例:Latex）、状態としてのアレルギー不耐性（例:Latex allergy）、特定の物質やクラスに対する否定・除外コード（例: No latex allergy）、物質やクラス全般に対する否定・除外コード（例: No known allergy, No known drug allergies）などが考えられる。\r\n\r\n注: 特定の有害反応を誘発する物質は、原因として特定された物質と異なっていてもよいが、整合がとれていなければならない。たとえば、より具体的な物質（ブランド薬など）や、特定された物質を含む複合製品の場合がある。\r\nAllergyIntolerance.codeのみを処理し、AllergyIntolerance.reaction.substanceを無視しても、臨床的に安全でなければならない。\r\n受信システムがAllergyIntolerance.reaction.substanceがAllergyIntolerance.codeのセマンティックスコープ内に（前者が後者の意味的な下位概念にあること）を確認できない場合、受信システムはAllergyIntolerance.reaction.substanceを無視する必要がある。"
* code ^comment = "【SS-MIX2】<IAM-3>アレルゲン情報。【JP Core仕様】このプロファイルを利用するにあたっては注意事項も参照のこと。[JP Core Allergyintoleranceプロファイル 注意事項]"

* patient only Reference(JP_Patient)
* patient ^short = "このアレルギー不耐症を有する患者"
* patient ^definition = "このアレルギー不耐症を有する患者。"
* patient ^comment = "Patient/患者ID　と記述する。"

* encounter MS
* encounter only Reference(JP_Encounter)
* encounter ^short = "このアレルギー不耐症が判明した受療の状況（外来、入院、救急、在宅など）"
* encounter ^definition = "このアレルギー不耐症が判明した受療の状況（外来、入院、救急、在宅など）"
* onset[x] MS
* onset[x] ^short = "このアレルギー不耐症の発症（検出）時期"
* onset[x] ^definition = "このアレルギー不耐症が同定された事実もしくは推定された時期（日付、日時、年齢）。"

* recordedDate MS
* recordedDate ^short = "このアレルギー不耐症が初めて記録された日時"
* recordedDate ^definition = "このアレルギー不耐症の記録がシステムで作成された日時を表し、多くの場合、システムが生成した日付である。"

* recorder MS
* recorder only Reference(JP_Practitioner or JP_PractitionerRole or JP_Patient or RelatedPerson)
* recorder ^short = "Who recorded the sensitivity. 誰がこのアレルギー不耐症を記録したか"
* recorder ^definition = "Individual who recorded the record and takes responsibility for its content.\r\n\r\nこのアレルギー不耐症を記録しその内容に責任を持つ個人。"
* asserter only Reference(JP_Patient or RelatedPerson or JP_Practitioner or JP_PractitionerRole)
* asserter ^short = "Source of the information about the allergy. このアレルギー不耐症の情報源"
* asserter ^definition = "The source of the information about the allergy that is recorded.\r\n\r\nこのアレルギー不耐症に関する情報の発生源または取得元。"
* lastOccurrence ^short = "Date(/time) of last known occurrence of a reaction. このアレルギー不耐症が最も直近に発生した日時"
* lastOccurrence ^definition = "Represents the date and/or time of the last known occurrence of a reaction event.\r\n\r\n最も直近に発生した日時を表す。"
* note ^short = "Additional text not captured in other fields. 他のフィールド要素では記述できない追加テキスト"
* note ^definition = "Additional narrative about the propensity for the Adverse Reaction, not captured in other fields.\r\n\r\n他のフィールド要素では表現できない、このアレルギー不耐症に関する追加的な記述。"
* reaction ^short = "Adverse Reaction Events linked to exposure to substance. このアレルゲンへの暴露に関連する有害反応"
* reaction ^definition = "Details about each adverse reaction event linked to exposure to the identified substance.\r\n\r\n同定された物質への暴露に関連する個々の有害反応に関する詳細情報。"
* reaction.substance ^short = "Specific substance or pharmaceutical product considered to be responsible for event. 有害反応の原因と考えられる特定の物質または医薬品"
* reaction.substance ^definition = "Identification of the specific substance (or pharmaceutical product) considered to be responsible for the Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'.  If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.\r\n\r\n有害反応の原因と考えられる物質（または医薬品）。\r\n\r\n注：特定の有害反応を誘発する物質は、原因として特定された物質と異なっていてもよいが、整合がとれていなければならない。たとえば、より具体的な物質（ブランド薬など）や、特定された物質を含む複合製品の場合がある。\r\nAllergyIntolerance.codeのみを処理し、AllergyIntolerance.reaction.substanceを無視しても、臨床的に安全でなければならない。\r\n受信システムがAllergyIntolerance.reaction.substanceがAllergyIntolerance.codeのセマンティックスコープ内に（前者が後者の意味的な下位概念にあること）を確認できない場合、受信システムはAllergyIntolerance.reaction.substanceを無視する必要がある。"
* reaction.manifestation ^short = "Clinical symptoms/signs associated with the Event. この有害反応に関連する症状や兆候"
* reaction.manifestation ^definition = "Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.\r\n\r\nこの有害反応に関連する症状や兆候。"
* reaction.description ^short = "Description of the event as a whole. この有害反応に関する全般的な記述"
* reaction.description ^definition = "Text description about the reaction as a whole, including details of the manifestation if required.\r\n\r\n必要であれば症状兆候の詳細も含めた、有害反応全体に関するテキストによる記述。"
* reaction.onset ^short = "Date(/time) when manifestations showed. この有害反応がみられた日時"
* reaction.onset ^definition = "Record of the date and/or time of the onset of the Reaction.\r\n\r\nこの有害反応の開始の日付もしくは日時の記録。"
* reaction.severity ^short = "mild | moderate | severe (of event as a whole) （軽度 | 中度 | 重度）"
* reaction.severity ^definition = "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.\r\n\r\n有害反応の重症度の全体としての臨床的な評価で、潜在的には複数の異なる症状兆候を考慮して決める。"
* reaction.exposureRoute ^short = "How the subject was exposed to the substance. 患者がこの物質にどのように暴露したか"
* reaction.exposureRoute ^definition = "Identification of the route by which the subject was exposed to the substance.\r\n\r\n患者がどのような経路でこの物質に暴露したかの同定。"
* reaction.note ^short = "Text about event not captured in other fields. 他のフィールド要素では記述できない追加テキスト"
* reaction.note ^definition = "Additional text about the adverse reaction event not captured in other fields.\r\n\r\n他のフィールド要素では記述できない、有害反応に関する追加テキスト。"
