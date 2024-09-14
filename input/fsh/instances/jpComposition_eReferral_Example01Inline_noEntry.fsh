// Compositionリース
// Compositionリース
Alias: $doc-typecodes_CS = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/clins/CodeSystem/document-section

Instance: compositionReferralExample01InlineNoEntry
InstanceOf: JP_Composition_eReferral
Usage: #inline

Description: "診療情報提供書　Compositionリソース データ作成例　composition"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
//* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"
* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral|1"
* language = #ja


* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1311234567-2021-12345678"
* status = #final
* type = $doc-typecodes_CS#57133-1 "診療情報提供書"
* category = $doc-subtypecodes_CS#OUTPATIENT "外来文書"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"

// * encounter.reference = "Example-JP-Encounter-eCS-AMB-01Inline"
//* encounter.reference = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
//* encounter.type = "Encounter"
//* encounter.display = "受診Encounterリソース"

// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"

// * author[0].reference = "Example-JP-Practitioner-eCS-ReferralFrom01Inline"
* author[0].reference = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* author[=].type = "Practitioner"
* author[=].display = "診療情報提供書作成者Practitionerリソース"

// * author[+].reference = "Example-JP-Org-eCS-Inst-Referral01Inline"
* author[1].reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* author[=].type = "Organization"
* author[=].display = "診療情報提供書作成機関Organizationリソース"

* title = "診療情報提供書"
// * custodian.reference = "Example-JP-Org-eCS-Inst-Referral01Inline"
* custodian.reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* custodian.type = "Organization"
* custodian.display = "診療情報提供書交付責任機関Organizationリソース"

* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"

* section[referralToSection].title = "紹介先情報"
* section[referralToSection].code.coding = $referral-section#910 "紹介先情報セクション"
* section[referralToSection].text.status = #additional
* section[referralToSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">紹介先医療機関名：東京第一テスト病院<br />内科<br />紹介先医師：野口 英世丸先生</div>"

// * section[=].entry[+].reference = "Example-JP-Org-eCS-ReferralTo01Inline"
* section[referralToSection].entry[referralToOrganization].reference = "urn:uuid:a44951be-cdaa-4c53-9e35-6be013da5441"
* section[referralToSection].entry[referralToOrganization].type = "Organization"
* section[referralToSection].entry[referralToOrganization].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizationDeptExample01Inline"
/*
* section[referralToSection].entry[referralToDepartment].reference = "urn:uuid:9f92f003-69e6-4983-85eb-fb49a3110b59"
* section[referralToSection].entry[referralToDepartment].type = "Organization"
* section[referralToSection].entry[referralToDepartment].display = "紹介先診療科"
*/

// * section[=].entry[+].reference = "Example-JP-Practitioner-eCS-ReferralTo01Inline"
* section[referralToSection].entry[referralToDoctor].reference = "urn:uuid:f11535c2-043d-43b6-bf99-b8298ea3c946"
* section[referralToSection].entry[referralToDoctor].type = "Practitioner"
* section[referralToSection].entry[referralToDoctor].display = "紹介先医師"


* section[referralFromSection].title = "紹介元情報"
* section[referralFromSection].code.coding = $referral-section#920 "紹介元情報セクション"
* section[referralFromSection].text.status = #additional
* section[referralFromSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京都港区新橋１−２−３
<br />電話:03-9876-5432><br />港診療所<br />眼科<br />大河内 勘三郎</div>"
// * section[=].entry[+].reference = "Example-JP-Org-eCS-Inst-Referral01Inline"
* section[referralFromSection].entry[referralFromOrganization].reference = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* section[referralFromSection].entry[referralFromOrganization].type = "Organization"
* section[referralFromSection].entry[referralFromOrganization].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizationDeptExample01Inline"
/*
* section[referralFromSection].entry[referralFromDepartment].reference = "urn:uuid:2e979bec-720b-4e36-8eb9-ebe661172af3"
* section[referralFromSection].entry[referralFromDepartment].type = "Organization"
* section[referralFromSection].entry[referralFromDepartment].display = "紹介元診療科"
*/

// * section[=].entry[+].reference = "Example-JP-Practitioner-eCS-ReferralFrom01Inline"
* section[referralFromSection].entry[referralFromDoctor].reference = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* section[referralFromSection].entry[referralFromDoctor].type = "Practitioner"
* section[referralFromSection].entry[referralFromDoctor].display = "紹介元医師"


* section[compositionSection].title = "構造情報"
* section[compositionSection].code.coding = $referral-section#300 "構造情報セクション"
* section[compositionSection].section[referralPurposeSection].title = "紹介目的"
* section[compositionSection].section[referralPurposeSection].code.coding = $referral-section#950 "紹介目的セクション"
* section[compositionSection].section[referralPurposeSection].text.status = #additional
* section[compositionSection].section[referralPurposeSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
// Encounterへのエントリーを省略するケース
// * section[compositionSection].section[=].entry[+].reference = "Example-JP-Encounter-eCS-purpose-Referral01Inline"
//* section[compositionSection].section[referralPurposeSection].entry[+].reference = "urn:uuid:3acc3dc7-c79b-41f1-8eea-ac4de9b664b8"
//* section[compositionSection].section[referralPurposeSection].entry[=].type = "Encounter"
//* section[compositionSection].section[referralPurposeSection].entry[=].display = "紹介目的"

* section[compositionSection].section[problemSection].title = "傷病名・主訴"
* section[compositionSection].section[problemSection].code.coding = $referral-section#340 "傷病名・主訴セクション"
* section[compositionSection].section[problemSection].text.status = #additional
* section[compositionSection].section[problemSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2022-06-09 上腹部痛、2022-05 腰痛</div>"
// * section[compositionSection].section[=].entry[+].reference = "Example-JP-Condition-eCS-cc1-Referral01Inline"
//* section[compositionSection].section[problemSection].entry[+].reference = "urn:uuid:6a31db8e-109d-4349-b0cf-095131c3307a"
//* section[compositionSection].section[problemSection].entry[=].type = "Condition"
//* section[compositionSection].section[problemSection].entry[=].display = "傷病名・主訴"
// * section[compositionSection].section[problemSection].entry[+].reference = "Example-JP-Condition-eCS-cc2-Referral01Inline"
//* section[compositionSection].section[problemSection].entry[+].reference = "urn:uuid:a9358f3e-c743-4998-aa89-1be54c31b432"
//* section[compositionSection].section[problemSection].entry[=].type = "Condition"
//* section[compositionSection].section[problemSection].entry[=].display = "傷病名・主訴"


* section[compositionSection].section[presentIllnessSection].title = "現病歴"
* section[compositionSection].section[presentIllnessSection].code.coding = $referral-section#360 "現病歴セクション"
* section[compositionSection].section[presentIllnessSection].text.status = #additional
* section[compositionSection].section[presentIllnessSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
// * section[compositionSection].section[presentIllnessSection].entry[+].reference = "Example-JP-Condition-eCS-ABDPAINInline"
//* section[compositionSection].section[presentIllnessSection].entry[+].reference = "urn:uuid:5eab50b2-6741-467c-a2fd-a4adab1f835f"
//* section[compositionSection].section[presentIllnessSection].entry[=].type = "Condition"
//* section[compositionSection].section[presentIllnessSection].entry[=].display = "現病歴"


* section[compositionSection].section[pastIllnessSection].title = "既往歴"
* section[compositionSection].section[pastIllnessSection].code.coding = $referral-section#370 "既往歴セクション"
* section[compositionSection].section[pastIllnessSection].text.status = #additional
* section[compositionSection].section[pastIllnessSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
// * section[compositionSection].section[pastIllnessSection].entry[+].reference = "Example-JP-Condition-eCS-ANGINAInline"
//* section[compositionSection].section[pastIllnessSection].entry[+].reference = "urn:uuid:5c650562-f4e4-40b3-87c6-e9a0376be7a8"
//* section[compositionSection].section[pastIllnessSection].entry[=].type = "Condition"
//* section[compositionSection].section[pastIllnessSection].entry[=].display = "既往歴"
// * section[compositionSection].section[pastIllnessSection].entry[+].reference = "Example-JP-Condition-eCS-FxInline"
//* section[compositionSection].section[pastIllnessSection].entry[+].reference = "urn:uuid:a28198b9-6a23-4677-ba2e-5eb3e17d9792"
//* section[compositionSection].section[pastIllnessSection].entry[=].type = "Condition"
//* section[compositionSection].section[pastIllnessSection].entry[=].display = "既往歴"


* section[compositionSection].section[allergiesIIntoleranceSection].title = "アレルギー・不耐性反応"
* section[compositionSection].section[allergiesIIntoleranceSection].code.coding = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[compositionSection].section[allergiesIIntoleranceSection].text.status = #additional
* section[compositionSection].section[allergiesIIntoleranceSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ、キーウイ（発症:2020-04-10  情報源：本人　記録：2024-07-10　記録者：看護師A）、ヨード禁（ポビドンヨード含嗽後に嘔吐と全身に発疹）</div>"
//  Reference(JP_Condition) アレルギー
// * section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "Example-JP-Allergy-eCS-01Inline"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "urn:uuid:711b07ae-d20b-40b0-9aa9-c7f1981409e6"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"
// * section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "Example-JP-Allergy-eCS-01Inline"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "urn:uuid:5a1aae74-f720-415a-ba15-a6c8b5d4c5a1"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"
//"urn:uuid:0d51bf2a-4863-b36f-2ad3-cb5ea0df1023"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[+].reference = "urn:uuid:0d51bf2a-4863-b36f-2ad3-cb5ea0df1023"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].type = "AllergyIntolerance"
//* section[compositionSection].section[allergiesIIntoleranceSection].entry[=].display = "アレルギー・不耐性反応"

* section[compositionSection].section[familiyHistorySection].title = "家族歴"
* section[compositionSection].section[familiyHistorySection].code.coding = $referral-section#550 "家族歴セクション"
* section[compositionSection].section[familiyHistorySection].text.status = #additional
* section[compositionSection].section[familiyHistorySection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴


* section[compositionSection].section[admissionPhysicalStatusSection].title = "身体所見"
* section[compositionSection].section[admissionPhysicalStatusSection].code.coding = $referral-section#610 "身体所見セクション"
* section[compositionSection].section[admissionPhysicalStatusSection].text.status = #additional
* section[compositionSection].section[admissionPhysicalStatusSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
// * section[compositionSection].section[admissionPhysicalStatusSection].entry[+].reference = "psExample-JP-Obs-Common-eCS-textOnly01Inline"
//* section[compositionSection].section[admissionPhysicalStatusSection].entry[+].reference = "urn:uuid:481835ef-0891-45de-a006-087954ab6b7c"
//* section[compositionSection].section[admissionPhysicalStatusSection].entry[=].type = "Observation"
//* section[compositionSection].section[admissionPhysicalStatusSection].entry[=].display = "身体所見"


* section[compositionSection].section[infectiousDiseaseInformationSection].title = "感染症情報"
* section[compositionSection].section[infectiousDiseaseInformationSection].code.coding = $referral-section#520 "感染症情報セクション"
* section[compositionSection].section[infectiousDiseaseInformationSection].text.status = #additional
* section[compositionSection].section[infectiousDiseaseInformationSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">特になし</div>"
//  Reference(JP_Observation_Common) 感染症情報


* section[compositionSection].section[clinicalCourseSection].title = "臨床経過"
* section[compositionSection].section[clinicalCourseSection].code.coding = $referral-section#330 "臨床経過セクション"
* section[compositionSection].section[clinicalCourseSection].text.status = #additional
* section[compositionSection].section[clinicalCourseSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">⾷欲不振と⼼窩部痛を認めた．悪⼼嘔吐がみられ，吐物に新鮮⾎が混⼊していたため救急外来を受診し，緊急⼊院となった．<br />⼊院時現症:⾝⻑162.5cm，体重45.2kg，⾎圧80/60mmHg，脈拍80/分，整，体温36.4．眼瞼結膜に貧⾎を認めた．<br />腹部は平坦，軟で腫瘤や圧痛なし．腸蠕動⾳正常．<br />⼊院時検査成績(Table1):末梢⾎液検査で，Hb5.0g/dl，Ht15.5%と著明な貧⾎を認めた．<br />上部消化管内視鏡検査:⼊院翌⽇の検査では，残胃吻合部後壁に約2.5cmの潰瘍形成を認め，潰瘍底に凝⾎塊の付着した露出⾎管と思われる隆起がみられたが，新鮮出⾎はなく，抗潰瘍薬投与による経過観察となった．<br /></div>"
//  Reference(JP_DocumentReference) 臨床経過
// * section[compositionSection].section[clinicalCourseSection].entry[+].reference = "Example-JP-DocRef-eCS-clinical-ccourse-Referral01Inline"
//* section[compositionSection].section[clinicalCourseSection].entry[+].reference = "urn:uuid:a6e4fc73-a749-4583-94a7-18e4241b4c75"
//* section[compositionSection].section[clinicalCourseSection].entry[=].type = "DocumentReference"
//* section[compositionSection].section[clinicalCourseSection].entry[=].display = "臨床経過"


* section[compositionSection].section[medicationSection].title = "投薬指示"
* section[compositionSection].section[medicationSection].code.coding = $referral-section#430 "投薬指示セクション"
* section[compositionSection].section[medicationSection].text.status = #additional
* section[compositionSection].section[medicationSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> タケキャブ錠10mg1錠　１日2回　朝食後、就寝時<br />レバミピド錠100mg1錠　　１日3回毎食後</div>"


* section[remarksCommunicationSection].title = "備考・連絡情報"
* section[remarksCommunicationSection].code.coding = $referral-section#220 "備考・連絡情報セクション"
* section[remarksCommunicationSection].text.status = #additional
* section[remarksCommunicationSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> よろしくお願いします。</div>"



