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

// IAM-17 アレルギー臨床確認状況
* verificationStatus ^short = "unconfirmed | confirmed | refuted | entered-in-error (未確認 | 確認済み | 否定された | 入力エラー)"
* verificationStatus ^definition = "特定された物質（医薬品を含む）が有害反応を誘発する確実性の度合い。"
* verificationStatus  ^comment = "【SS-MIX2】<IAM-17> コード表「-#0438 アレルギー臨床状態」U(未確認)->\"unconfirmed\"、(P)保留、(S)疑わしい、(C)確認済み->\"confirmed\"、(I)確認済み（非活性）->\"confirmed\"、(E)誤り->\"entered-in-error\"、(D)疑問あり->\"unconfirmed\""

// IAM-9 アレルギー物質に対する感受性 (コード表「#0436 アレルギー物質に対する感受性」）
* type MS
* type ^short = "アレルギーか不耐性かの区分。allergy | intolerance - Underlying mechanism (if known) （アレルギー | 不耐症）"
* type ^definition = "有害反応を誘発する生理的なメカニズムが特定できる場合にアレルギーか不耐性かを区別する。"
* type  ^comment = "【SS-MIX2】<IAM-9> アレルギー物質に対する感受性 (コード表「#0436 アレルギー物質に対する感受性」AD(他に分類できない副作用)->\"intolerance\"、 AL(アレルギー)->\"allergy\"、CT(禁忌)->\"intolerance\"、IN(過敏症)->\"intolerance\""

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

// 対象患者
* patient only Reference(JP_Patient)
* patient ^short = "このアレルギー不耐症を有する患者"
* patient ^definition = "このアレルギー不耐症を有する患者。"
* patient ^comment = "Patient/患者ID　と記述する。"

// 情報取得時の受診情報
* encounter MS
* encounter only Reference(JP_Encounter)
* encounter ^short = "このアレルギー不耐症が判明した受療の状況（外来、入院、救急、在宅など）"
* encounter ^definition = "このアレルギー不耐症が判明した受療の状況（外来、入院、救急、在宅など）"

// IAM-11 アレルゲン発症日
* onset[x] MS
* onset[x] ^short = "このアレルギー不耐症の発症（検出）時期"
* onset[x] ^definition = "このアレルギー不耐症が同定された事実もしくは推定された時期（日付、日時、年齢）。"
* onset[x] ^comment = "【SS-MIX2】<IAM-11>アレルゲン発症日 YYYY-MM-DD 形式に変換"

// IAM-13 情報提供日時
* recordedDate MS
* recordedDate ^short = "このアレルギー不耐症が初めて記録された日時"
* recordedDate ^definition = "このアレルギー不耐症の記録がシステムで作成された日時を表し、多くの場合、システムが生成した日付である。"
* onset[x] ^comment = "？【SS-MIX2】<IAM-13>情報提供日時(アレルギーが医療提供者に情報提供された日時) でよいか？"

// IAM-18 確認者（アレルギー臨床状態を指定した医療提供者を示す）
* recorder MS
* recorder only Reference(JP_Practitioner or JP_PractitionerRole or JP_Patient or RelatedPerson)
* recorder ^short = "誰がこのアレルギー不耐症を記録したか"
* recorder ^definition = "このアレルギー不耐症を記録しその内容に責任を持つ個人。"

// IAM-14 情報提供者（医療提供者へ、IAM-13 情報提供日時にアレルギー情報を提供した人の名前）
* asserter MS
* asserter only Reference(JP_Patient or RelatedPerson or JP_Practitioner or JP_PractitionerRole)
* asserter ^short = "このアレルギー不耐症の情報源"
* asserter ^definition = "このアレルギー不耐症に関する情報の発生源または取得元。"

* lastOccurrence MS
* lastOccurrence ^short = "このアレルギー不耐症が最も直近に発生した日時"
* lastOccurrence ^definition = "最も直近に発生した日時を表す。"

* note MS
* note ^short = "他のフィールド要素では記述できない追加テキスト"
* note ^definition = "他のフィールド要素では表現できない、このアレルギー不耐症に関する追加的な記述。"

* reaction 0..0 MS
* reaction ^short = "このアレルゲンへの暴露に関連する有害反応"
* reaction ^definition = "同定された物質への暴露に関連する個々の有害反応に関する詳細情報。"
