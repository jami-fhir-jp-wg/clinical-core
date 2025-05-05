//* code.coding[+] = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS#3H015000002326101  "K"
//* code.coding[+] = $JP_ObservationLabResultCode_CS#3H015000002326101  "カリウム_血清_電位差測定_定量値"   
// * code.coding[jlac10LaboCode] from $JP_ObservationLabResultCode_VS (required)
Invariant: test-MemberOf-MEDIS-JLAC10
Description: "Observation.codeにはJLAC10 MEDISコードに所属している検査コードがなくてはならない"
Severity: #warning
Expression: "code.coding.where(memberOf('http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationLabResultCode_VS')).exists()"

Invariant: test-MemberOf-CoreLabo-JLAC10
Description: "Observation.codeには43項目コードに所属しているJLAC10検査コードがなくてはならない"
Severity: #warning
Expression: "code.coding.where(memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_CoreLabo_VS')).exists()"

Invariant: test-not-MemberOf-infectionLabo
Description: "Observation.codeはinfectionLaboに属しているわけではない"
Severity: #warning
Expression: "(code.coding.where((memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_InfectionLabo_VS')) or (memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC11/JP_CLINS_ObsLabResult_InfectionLabo_VS'))).exists())"

Invariant: check-MemberOf-infectionLabo
Description: "指定感染症検査の場合だけ長期保存フラグが設定できる。それ以外の検査やフラグは設定できない。"
Severity: #error
Expression: "(meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication').exists().not()) or  ((meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication' and code='LTS').exists()) and (code.coding.where((memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_InfectionLabo_VS')) or (memberOf('http://jpfhir.jp/fhir/clins/ValueSet/JLAC11/JP_CLINS_ObsLabResult_InfectionLabo_VS'))).exists()))"

Invariant: referenceRangeLowUnits-isSameAs-resultValueUnits
Description: "基準値lowの単位情報は検査結果値の単位情報と完全に同一でなければならない。"
Severity: #error
Expression: "((referenceRange.low.unit.exists() implies (value.ofType(Quantity).unit.exists() and (value.ofType(Quantity).unit = referenceRange.low.unit)))  and (referenceRange.low.code.exists() implies (value.ofType(Quantity).code.exists() and (value.ofType(Quantity).code = referenceRange.low.code))))" 

Invariant: referenceRangeHighUnits-isSameAs-resultValueUnits
Description: "基準値highの単位情報は検査結果値の単位情報と完全に同一でなければならない。"
Severity: #error
Expression: "((referenceRange.high.unit.exists() implies (value.ofType(Quantity).unit.exists() and (value.ofType(Quantity).unit = referenceRange.high.unit))) and (referenceRange.high.code.exists() implies (value.ofType(Quantity).code.exists() and (value.ofType(Quantity).code = referenceRange.high.code))))" 

// R6021とセット Observation CLINS ではローカルコードの記述は必須であることに注意喚起
Invariant: warn-localCode-observation-laboresult
Description: "注意喚起：このリソースでは、電子カルテ情報共有サービスの5情報送信の場合にはObservation.code.codingにローカルコード記述が必要であるが存在していません。CLINS送信でなければ問題ありません。"
Severity: #warning
Expression: "code.coding.where(system ='http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS').exists()"

// ==================================================
//   Profile 定義 診療５情報・サマリー用
//   検体検査結果／感染症検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
// ==================================================
Profile: JP_Observation_LabResult_eCS
Parent: JP_Observation_LabResult
Id: JP-Observation-LabResult-eCS
Title:  "JP_Observation_LabResult_eCS"
Description: "診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）プロファイル"

//* obeys resource-needs-extension-of-institutionNumber
//* obeys test-MemberOf-MEDIS-JLAC10
//* obeys test-not-MemberOf-infectionLabo
//* obeys check-MemberOf-infectionLabo
* obeys needs-performer-on-CLINS
* obeys referenceRangeLowUnits-isSameAs-resultValueUnits
* obeys referenceRangeHighUnits-isSameAs-resultValueUnits

* obeys warn-localCode-observation-laboresult // R6022 Observation CLINS ではローカルコードの記述は必須である。注意喚起

* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension contains JP_eCS_Department named eCS_Department ..* MS

* ^url = $JP_Observation_LabResult_eCS

* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2025-01-11"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja



* . ^short = "診療情報における検体検査結果／感染症検体検査結果の格納に使用する"
* . ^definition = "診療情報における検体検査結果／感染症検体検査結果の格納に使用する"
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルである。"
// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する

* meta 1..1 MS
* meta.versionId ^short = "バージョン固有の識別子"
* meta.versionId ^definition = "バージョン固有の識別子"
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 1.. MS
  * insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.y.z　を設定する。")

* meta.tag 0..
  * insert relative_short_definition("電子カルテ情報共有サービスでは、サービス側でのデータ取扱いを各種フラグで指定するために使用する。")
//* meta.tag from $JP_ehrshrs_indication_VS 

* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "system"
* meta.tag  ^slicing.rules = #open
* meta.tag contains lts 0..1 MS

* meta.tag[lts] 0..1 MS
  * insert relative_short_definition("電子カルテ情報共有サービスでフラグを設定する場合に使用する。指定感染症検査の場合のみ設定できる。")
  * id ..0
  * extension ..0
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * system = $JP_ehrshrs_indication_CS (exactly)
  * version ..0
  * code 1..1 MS
    * insert relative_short_definition("長期保存フラグ　固定値 LTSを設定する。（電子カルテ情報共有サービスでは設定しても、感染症以外の検査結果では利用されない。）")
  * code from $JP_ehrshrs_indication_lts_VS 
  * code = $JP_ehrshrs_indication_CS#LTS
  * userSelected ..0

// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    encounter 0..1  MS  // CLINSでは必須
    and specimen 0..1 MS
    and performer 0..1 MS //　CLINSでは必須
    and order 0..1 MS
//    and patient 0..1 MS

* contained[encounter] only  JP_Encounter  or JP_Encounter_eCS
  * insert relative_short_definition("【電子カルテ情報共有サービス（5情報送信）では必須】検体検査を実施（検体を採取）したときの入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "電子カルテ情報共有サービスでは必須。encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[specimen] only  JP_Specimen
  * insert relative_short_definition("検体材料情報をコンパクトに格納したSpecimenリソース")
  * ^comment = "specimen要素から参照される場合には、そのJP_Organizationリソースの実体。JP_Organizationリソースにおける必要最小限の要素だけが含まれればよい。specimen要素ではContainedリソースを参照する方法ではなくspecimen要素に検体材料名だけを記述することもできるので、その場合にはこのContainedリソースは不要。
  "

* contained[performer] only  JP_Practitioner  //　CLINSでは必須
  * insert relative_short_definition("【電子カルテ情報共有サービス（5情報送信）では必須】検査オーダを作成したときの作成医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "performer要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素、医療者識別情報だけが含まれればよい。電子カルテ情報サービスでは必須。"

* contained[order] only  JP_ServiceRequest
  * insert relative_short_definition("診療情報におけるオーダ識別番号情報などをコンパクトに格納したServiceRequestリソース")
  * ^comment = "basedOn要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。"


* extension[eCS_InstitutionNumber] 0..1 MS
  * insert relative_short_definition("【電子カルテ情報共有サービス（5情報送信）では必須】本情報を作成発行した医療機関の識別番号を記述するために使用する拡張「eCS_InstitutionNumber」。
本情報は、ServiceRequestの要素として記述することも可能であるが、その場合もこの拡張で記述することとする。")
  * ^comment = "電子カルテ情報サービスでは、この拡張による記述は必須。医療機関１０桁番号を示すsystem値は\"http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no\"を使用する。"
  * url 1..1 
  * url = $JP_InstitutionNumber (exactly)
  * valueIdentifier 1..1 MS
  * valueIdentifier.system 1..1 MS
  * valueIdentifier.value 1..1 MS  
* insert eCS_InstitutionNumber_value("医療機関１０桁番号(都道府県コード2桁、保険医療機関区分1桁、保険医療機関番号7桁)")

* extension[eCS_Department] 0..1 MS
  * insert relative_short_definition("【電子カルテ情報共有サービス（5情報送信）では必須】本情報を作成発行した診療科または作成発行者の診療科情報を記述するために使用する拡張「eCS_Department」")
  * ^comment = "電子カルテ情報サービスでは、この拡張による記述は必須。コード化する場合には、JAMI(SS-MIX2) 診療科コード表のsystem値\"http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment\"を使用する。診療科を記述する場合には、そのコード化の有無に関わらずtext要素による記述は必須。"
  * url 1..1 
  * url = "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment" (exactly)
  * valueCodeableConcept 1..1
  * valueCodeableConcept.coding 0..*
  * valueCodeableConcept.coding.system 0..1
  * valueCodeableConcept.coding.value 0..1
  * valueCodeableConcept.coding.display 0..1 
  * valueCodeableConcept from $JP_Department_SsMix_VS (preferred)
  * valueCodeableConcept.text 1..1
  
* identifier 1..* MS
  * insert relative_short_definition("このリソース情報の識別ID。")
  * ^comment = "リソース一意識別IDの仕様は、「診療情報・サマリー汎用リソース一意識別ID仕様」を参照のこと。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains resourceIdentifier 1..1 MS
* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].system ^comment = "リソース一意識別IDのsystem値は\"http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier\"　を設定する。"
* identifier[resourceIdentifier].value 1..1 MS
  * insert relative_short_definition("「リソース一意識別ID」の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。")

* basedOn 0..1
* basedOn only Reference(JP_ServiceRequest)
* basedOn ^definition = "このプロファイルでは、検体検査オーダに関する情報。"
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法　(1)」を使用すること。"

// OUL^R22.OBX[*]-11 結果状態
* status ^definition = "検査結果値の状態。"
* status ^definition = "検査結果値の状態。"
* status ^comment = "検査結果がある場合には、preliminary:暫定結果報告（このあとで本報告が予定される場合）、final:最終結果報告（このあと修正されることはもちろん事情によってはありうるが、この報告段階では確定結果として報告されている、corrected:定性報告（final報告を修正した、新しい結果が有効である）、のいずれかを使用する。検査結果がない場合には、registered : 結果未着、またはcancelled:検査中止（検体不良や検査機器エラーなどなんらかの原因で検査を実施しなかった、またはこの結果や検査実施が取り消されたので報告は取り消された、報告済みの以前の結果は無効である、間違っていたかもしれない）のどちらかを使用する。これら以外の状態コードは　http://hl7.org/fhir/observation-status　には定義されているが、意味的に紛らわしいので使わない。"
* status 1..1 MS

// OUL^R22
* category 1..1 MS       
  * insert relative_short_definition("検査結果カテゴリーのコード。system=http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS code=\"laboratory\"") 

// OUL^R22.OBX[*]-3 検査項目情報

* code 1..1 MS
* code ^definition = "検査項目のコードと名称"
* code ^comment = "JLAC10必須の項目と任意の項目がある。"

* code.coding 1.. MS
  * insert relative_short_definition("検査項目のコード情報。All Slicesの多重度表示に関わらず、coding.system、coding.code、coding.displayはの正しい多重度は1..1である。（本ガイド生成過程の問題によりAll Slicesのこれらの多重度は0..1と表示されている）") 

* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* code.coding.display ^short = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^definition = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^comment = "標準コードに対応する標準名称文字列が規定されていないことも多いため、この要素は省略できる。値が存在する場合に受信側がこの文字列をどのように使用するかについては特に定めない。ただし、２文書5情報を電子カルテ共有サービスに送信する場合には、「検体検査結果情報における検査項目のコーディング規則」を厳守する必要がある。"

* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "system"
* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "display"
* code.coding  ^slicing.rules = #open

* code.text 1..1 MS   
* code.text ^definition = "項目名。報告書などに記載する場合に使用する表示名。"
* code.text ^comment = "【JP Core仕様】このプロファイルでは、表示名として必須とする。\r\n\r\n多くの場合、coding.display と同一になるが、coding.display に異なる複数の表現が格納される場合を想定し、code間で共通の表現として必須とする。受信側はこの文字列を項目表示文字列として使用できる。ただし、２文書5情報を電子カルテ共有サービスに送信する場合には、「検体検査結果情報における検査項目のコーディング規則」を厳守する必要がある。"


* code.coding  contains
 jlac10LaboCode 0..1 MS // jlac10LaboCode　unCoded　coreLaboSet　のいずれかひとつは必須
 and unCoded 0..1 MS
 and localLaboCode 0..1 MS
 
// コードの全体に適用する大原則
// code from $JP_eCS_ObservationLabResultCode_VS (required)

//ローカルコード
* code.coding[localLaboCode].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS" (exactly)
* code.coding[localLaboCode].system 1..1 MS
* code.coding[localLaboCode].version 0..1 MS
* code.coding[localLaboCode].code  1..1 MS 
* code.coding[localLaboCode].display 1..1 MS 
// 一般JLAC10コード
* code.coding[jlac10LaboCode].system = $JP_ObservationLabResultCode_CS (exactly)
* code.coding[jlac10LaboCode].system 1..1 MS
* code.coding[jlac10LaboCode].version 0..1 MS
* code.coding[jlac10LaboCode] from $JP_ObservationLabResultCode_VS (required)
* code.coding[jlac10LaboCode].code 1..1 MS
* code.coding[jlac10LaboCode].display 1..1 MS


// 未標準化コード
* code.coding[unCoded].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS" (exactly)
* code.coding[unCoded].system 1..1 MS
* code.coding[unCoded].version 0..1 MS
* code.coding[unCoded].code = #99999999999999999 (exactly)
* code.coding[unCoded].code 1..1 MS
* code.coding[unCoded].display = "未標準化コード項目(JLAC)" (exactly)
* code.coding[unCoded].display 1..1 MS

// 基本検査項目セット　43項目
* insert  core43LaboItemProfile(tp,TP,tp) // 1
* insert  core43LaboItemProfile(alb,ALB,alb) // 2
* insert  core43LaboItemProfile(ck,CK,ck) // 3
* insert  core43LaboItemProfile(ast,AST,ast) // 4
* insert  core43LaboItemProfile(alt,ALT,alt) // 5
* insert  core43LaboItemProfile(ld,LD,ld) // 6
* insert  core43LaboItemProfile(alp,ALP,alp) // 7
* insert  core43LaboItemProfile(ggt,GGT,ggt) // 8
* insert  core43LaboItemProfile(che,ChE,che) // 9
* insert  core43LaboItemProfile(amy,AMY,amy) // 10
* insert  core43LaboItemProfile(cre,Cre,cre) // 11
* insert  core43LaboItemProfile(cys-c,Cys-C,cys_c) // 12
* insert  core43LaboItemProfile(ua,UA,ua) // 13
* insert  core43LaboItemProfile(bun,BUN,bun) // 14
* insert  core43LaboItemProfile(bg,BG,bg) // 15-1
* insert  core43LaboItemProfile(fbg,FBG,fbg) // 15-2
* insert  core43LaboItemProfile(cbg,CBG,cbg) // 15-3
* insert  core43LaboItemProfile(hba1c-ngsp,HbA1c-NGSP,hba1c_ngsp) // 16
* insert  core43LaboItemProfile(tg,TG,tg) // 17-1
* insert  core43LaboItemProfile(ftg,FTG,ftg) // FTG // 17-2
* insert  core43LaboItemProfile(ctg,CTG,ctg) // CTG // 17-3
* insert  core43LaboItemProfile(t-cho,T-CHO,t_cho) // 18
* insert  core43LaboItemProfile(hdl-c,HDL-C,hdl_c) // 19
* insert  core43LaboItemProfile(ldl-c,LDL-C,ldl_c) // 20
* insert  core43LaboItemProfile(na,Na,na) // 21
* insert  core43LaboItemProfile(k,K,k) // 22
* insert  core43LaboItemProfile(cl,Cl,cl) // 23
* insert  core43LaboItemProfile(ca,Ca,ca) // 24
* insert  core43LaboItemProfile(t-bil,T-Bil,t_bil) // 25
* insert  core43LaboItemProfile(d-bil,D-Bil,d_bil) // 26
* insert  core43LaboItemProfile(wbc,WBC,wbc) // 27
* insert  core43LaboItemProfile(rbc,RBC,rbc) // 28
* insert  core43LaboItemProfile(hb,Hb,hb) // 29
* insert  core43LaboItemProfile(plt,PLT,plt) // 30
* insert  core43LaboItemProfile(aptt,APTT,aptt) // 31
* insert  core43LaboItemProfile(pt-sec,PT-秒,pt_sec) // 32-1
* insert  core43LaboItemProfile(pt-ratio,PT比,pt_ratio) // 32-2
* insert  core43LaboItemProfile(pt-act,PT-活性%,pt_act) // 32-3
* insert  core43LaboItemProfile(pt-inr,PT-INR,pt_inr) // 32-4
* insert  core43LaboItemProfile(dd,DD,dd) // 33-1
* insert  core43LaboItemProfile(dd-class,DD-定性,dd_class) // 33-2
* insert  core43LaboItemProfile(utp,U-TP,utp) // 34-1
* insert  core43LaboItemProfile(utp-HalfQty,U-TP-半定量,utp_HalfQty) // 34-2
* insert  core43LaboItemProfile(u-glu,U-Glu,u_glu) // 35-1
* insert  core43LaboItemProfile(u-glu-HalfQty,U-Glu-半定量,u_glu_HalfQty) // 35-2
* insert  core43LaboItemProfile(u-bld,U-Bld,u_bld) // 36-1
* insert  core43LaboItemProfile(u-bld-HalfQty,U-Bld-半定量,u_bld_HalfQty) // 36-2
* insert  core43LaboItemProfile(u-pc,U-P/C,u_pc) // 37
* insert  core43LaboItemProfile(u-ac,U-A/C,u_ac) // 38
* insert  core43LaboItemProfile(bnp,BNP,bnp) // 39
* insert  core43LaboItemProfile(nt-probnp,NT-proBNP,nt_probnp) // 40
* insert  core43LaboItemProfile(crp,CRP,crp) // 41-1
* insert  core43LaboItemProfile(crp-class,CRP-class,crp_class) // 41-2
* insert  core43LaboItemProfile(abo-bld,血液型-ABO,abo_bld) // 42
* insert  core43LaboItemProfile(rh-bld,血液型-Rh,rh_bld) // 43

//---------- ここから感染症検査のスライス定義
//* insert infectionLaboItemProfile(itemID,itemDisplay,aliasID)
* insert infectionLaboItemProfile(stsqlresult,梅毒STS(定性\),STSQLRESULT) // 1-1
* insert infectionLaboItemProfile(stsquant,梅毒STS(定量\),STSQUANT) //1-2
* insert infectionLaboItemProfile(tpresult,梅毒TP抗体(定性\),TPRESULT) //2-1
* insert infectionLaboItemProfile(tpposcoi,梅毒TP抗体(定量、陽性コントロール比\),TPPOSCOI) // 2-2
* insert infectionLaboItemProfile(tphquant,梅毒TP抗体(半定量\),TPHQUANT) // 2-3
* insert infectionLaboItemProfile(tpquant,梅毒TP抗体(定量\),TPQUANT) // 2-4
//* insert infectionLaboItemProfile(hbsagcoi,HBs抗原(コントロール比\),HBsAGCOI) // 3-1
* insert infectionLaboItemProfile(hbsagresult,HBs抗原(定性\),HBsAGRESULT) // 3-2
* insert infectionLaboItemProfile(hbsagdil,HBs抗原(希釈倍率\),HBsAGDIL)   // 3-3
* insert infectionLaboItemProfile(hbsagod,HBs抗原(吸光度\),HbsAGOD) // 3-4
* insert infectionLaboItemProfile(hbsagquant,HBs抗原(定量\),HBsAGQUANT) // 3-5
* insert infectionLaboItemProfile(hbsagposcoi,HBs抗原(陽性コントロール比\),HBsAGPOSCOI) // 3-6
* insert infectionLaboItemProfile(hbsabresult,HBs抗体(定性\),HBsABRESULT) // 3-7
* insert infectionLaboItemProfile(hbsabdil,HBs抗体(希釈倍率\),HBsABDIL)  // 3-8
* insert infectionLaboItemProfile(hbsabquant,HBs抗体(定量\),HBsABQUANT) // 3-9

* insert infectionLaboItemProfile(hcvnquant,HCV核酸増幅検査(定量\),HCVNQUANT) // 4-2
* insert infectionLaboItemProfile(hcvnresult,HCV核酸増幅検査(定性\),HCVNRESULT) // * 4-1
* insert infectionLaboItemProfile(hcvagresult,HCV抗原検査(定性\),HCVAGRESULT) // *4-3
* insert infectionLaboItemProfile(hcvagquant,HCV抗原検査(定量\),HCVAGQUANT) // 4-4
//* insert infectionLaboItemProfile(hcvabcoi,HCV抗体(コントロール比\),HCVABCOI) // 4-5
* insert infectionLaboItemProfile(hcvabdil,HCV抗体(希釈倍率\),HCVABDIL) // 4-6
* insert infectionLaboItemProfile(hcvabresult,HCV抗体(定性\),HCVABRESULT) // 4-7
* insert infectionLaboItemProfile(hcvabposcoi,HCV抗体(陽性コントロール比\),HCVABPOSCOI) //4-8

* insert infectionLaboItemProfile(hiv1quant,HIV-1(ウイルスRNA定量\),HIV1QUANT) // 5-1
* insert infectionLaboItemProfile(hiv1result,HIV-1(ウイルスRNA定量判定\),HIV1RESULT)  // 5-2
* insert infectionLaboItemProfile(hiv1p2abdil,HIV-1+2抗体(希釈倍率\),HIV1P2ABDIL) // 5-3
//* insert infectionLaboItemProfile(hiv1p2abcoi,HIV-1+2抗体(コントロール比\),HIV1P2ABCOI) // 5-4
* insert infectionLaboItemProfile(hiv1p2abresult,HIV-1+2抗体(定性\),HIV1P2ABRESULT) // 5-5
* insert infectionLaboItemProfile(hiv1p2abposcoi,HIV-1+2抗体(陽性コントロール比\),HIV1P2ABPOSCOI) // 5-6

* insert infectionLaboItemProfile(hiv1p2abod,HIV-1+2抗体・p24抗原(吸光度\),HIV1P2ABOD) // 5-7
//* insert infectionLaboItemProfile(hiv1p2abp24coi,HIV-1+2抗体・p24抗原(コントロール比\),HIV1P2ABP24COI)  // 5-8
* insert infectionLaboItemProfile(hiv1p2abp24result,HIV-1+2抗体・p24抗原(定性\),HIV1P2ABP24RESULT)  // 5-9
* insert infectionLaboItemProfile(hiv1p2abp24quant,HIV-1+2抗体・p24抗原(定量\),HIV1P2ABP24QUANT)  // 5-10
* insert infectionLaboItemProfile(hiv1p2abp24poscoi,HIV-1+2抗体・p24抗原(陽性コントロール比\),HIV1P2ABP24POSCOI)  // 5-11

* insert infectionLaboItemProfile(hiv1abdil,HIV-1抗体(希釈倍率\),HIV1ABDIL) // 5-12
* insert infectionLaboItemProfile(hiv1abresult,HIV-1抗体(定性\),HIV1ABRESULT)  // 5-13
* insert infectionLaboItemProfile(hiv2abdil,HIV-2抗体(希釈倍率\),HIV2ABDIL)  // 5-14
* insert infectionLaboItemProfile(hiv2abresult,HIV-2抗体(定性\),HIV2ABRESULT)  // 5-15

// 患者情報
* subject 1..1   MS
* subject only  Reference(JP_Patient_eCS)
  * insert relative_short_definition("患者のFHIRリソース(JP_Patient_eCSに従うPatientリソース\)への参照。")
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照） 」に従う。"

* encounter 0..1 MS //　CLINSでは必須
* encounter only  Reference(JP_Encounter or JP_Encounter_eCS)
  * insert relative_short_definition("【電子カルテ情報共有サービス（5情報送信）では必須】検査依頼を発行したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照")
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法　(1)」を使用すること。電子カルテ情報サービスでは必須。"


* effective[x] 1..    MS   // MS 追加
* effective[x] only dateTime // or Period or Timing 
* effectiveDateTime ^short = "検体採取日時"
* effectiveDateTime ^definition = "検体採取日時。検体採取日時が不明な場合には、検査実施日時、検体受付日時の場合もある。結果報告日時はissued要素を使用する。"
* effectiveDateTime ^comment = "dateTime型に限定する。dateTime側は、1905-08-23, 2015-02-07T13:28:17+09:00 "

* issued MS
* issued ^short = "検査結果がシステムに格納された日時、システム的な結果報告（登録）日時"
* issued ^definition = "検査結果がシステムに格納された日時、システム的な結果報告（登録）日時。"
* issued ^comment = "instance型であるため、2015-02-07T13:28:17+09:00 のように時刻までの精度が必要である。"

* performer 0..1 MS //　CLINSでは必須
* performer only  Reference(JP_Practitioner)
* performer ^short = "【電子カルテ情報共有サービス（5情報送信）では必須】検査結果を責任を持つ医療者、検査実施者（検査オーダ医師）への参照。"
* performer ^definition = "【電子カルテ情報共有サービス（5情報送信）では必須】検査結果を責任を持つ医療者への参照。電子カルテ情報サービスでは必須とし、オーダした医師（結果を確認した医師に相当）のPractitionerリソースへの参照を設定する。電子カルテ情報サービスでは必須。"
* performer ^comment = "実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。"

// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
* value[x] MS
* value[x] only Quantity or CodeableConcept or string
* value[x] ^short = "検体検査の結果"
* value[x] ^definition = "検体検査の結果。コメントを参照のこと。"
* value[x] ^comment = "valueQuantity,valueCodeableConcept,valueStringのいずれかを使用する。この項目自体は子項目をまとめるセット名（バッテリー名、例：血球算定など）の場合にはこの要素は出現しない。また、結果値が何らかの理由により得られなかった場合や、検査結果が未着（検査中または実施前）の場合にはこの要素は出現せず、dataAbsentReasonにその理由を記述する。それ以外では必ず出現する。"

// if OUL^R22.OBX[*]-2 == "NM":
// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
* valueQuantity ^short = "検査結果が「数値」の場合、値、単位を設定する。"
* valueQuantity ^comment = "ー"

// if OUL^R22.OBX[*]-2 == "CWE":
// OUL^R22.OBX[*]-5  結果
* valueCodeableConcept ^short = "検査結果が「コード値」の場合、コード、テキスト、コードのValue setを定義する。"
* valueCodeableConcept ^definition = "結果がコード化されたコンセプトで記述できる場合。定性検査値の場合などに使用する。質問項目の回答記号もコードと回答文字列とみなしてこの結果記述方法を使用することができる。"

// if OUL^R22.OBX[*]-2 == "ST":
// OUL^R22.OBX[*]-5  結果
* valueString ^short = "検査結果値が「文字列」の場合、その文字列を指定する。"

// Valueが欠落する場合には必ずその理由コードを記述する
* dataAbsentReason MS
* dataAbsentReason ^short = "検査結果値が欠落している理由。詳細、コメントを参照のこと。"
* dataAbsentReason ^definition = "検査結果値が欠落している理由。コメントを参照のこと。"
* dataAbsentReason ^comment = "value要素に結果を記述しない場合で検査結果値が欠落している場合には、その理由。コード化して設定することは一般に難しいのでcoding子要素は記述しなくてもよいが、text子要素は必須である。検査値が得られるはずの検査項目であるにもかかわらずvalue[x]要素に値がない場合には、この項目は必須。"
* dataAbsentReason.text 1..1 MS
* dataAbsentReason.text ^short = "検査結果値が欠落している理由の文字列。詳細、コメントを参照のこと。"
* dataAbsentReason.text ^definition = "検査結果値が欠落している理由の文字列。例としてはコメントを参照のこと。"
* dataAbsentReason.text ^comment = "\"検査中\"、\"未実施\"、\"検体凝固\"、\"検体量不足\"、\"溶血で実施できず\"、\"採血できず\"、\"検査機器エラー\"などが想定される。"

// OUL^R22.OBX[*]-8 （基準値範囲はOUL^R22.OBX[*]-7) 
* interpretation MS
* interpretation ^short = "High, low, normal, etc. 高、低、正常など"
* interpretation ^definition = "検査結果値の、（高、低、正常）といったカテゴリー評価。結果報告書に記載されることもある情報。"
* interpretation ^comment = "【JP Core仕様】拡張可コード表「ObservationInterpretationCodes」からいずれかの適当なコードをひとつ使用するが、本要素はなくてもよい。その施設における基準値が設定されている数値検査結果に対しては、基準値範囲により解釈したH（高）、L（低）、N（正常範囲） のいずれかを設定することが望ましい。\r\n\r\nコード表が大きいため、下記参照。\r\n\r\nhttps://www.hl7.org/fhir/R4/valueset-observation-interpretation.html"
* interpretation ^requirements = "特に数値結果については、結果の重要性を完全に理解するために解釈を必要。"

* note MS
* note ^short = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。詳細を参照のこと。"
* note ^definition = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。\"溶血\"、\"視算値\"、\"概算\"、\"参考値\"などもこの要素で記述することができる。"

// OUL^R22.SPM-4[*]
* specimen 1.. MS
* specimen ^short = "この検査に使用された検体（標本）。"
* specimen ^definition = "この検査に使用された検体（標本）情報への参照。"
* specimen ^comment = "検体材料に関する情報を記述したSpecimenリソースをContainedリソースとして本リソースに埋め込んでそれを参照するか、またはtype子要素=\"Specimen\",display子要素で\"血清\"のように検体名称を設定することで記述する。"

// OUL^R22.OBX[*]-7
* referenceRange 0..* MS
* referenceRange.id ..0
* referenceRange.extension ..0
* referenceRange.modifierExtension ..0

* referenceRange.low.extension ..0
* referenceRange.low.value 1..1  MS
  * insert relative_short_definition("基準値の小さいほうの値")
* referenceRange.low.unit 0..1 MS
  * insert relative_short_definition("基準値の単位。検査結果の単位と同じであること。")
* referenceRange.low.system 0..1 MS
  * insert relative_short_definition("基準値の単位のコード化記述をするコード体系を表すsystem値。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位指定があれば記述する。\"http://unitsofmeasure.org\"")
* referenceRange.low.code 0..1 MS
  * insert relative_short_definition("基準値の単位のコード。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位指定があれば記述する。")

* referenceRange.high.extension ..0
* referenceRange.high.value 1..1  MS
  * insert relative_short_definition("基準値の大きいほうの値")
* referenceRange.high.unit 0..1 MS
  * insert relative_short_definition("基準値の単位。検査結果の単位と同じであること。")
* referenceRange.high.system 0..1 MS
  * insert relative_short_definition("基準値の単位のコード化記述をするコード体系を表すsystem値。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位指定があれば記述する。\"http://unitsofmeasure.org\"")
* referenceRange.high.code 0..1 MS
  * insert relative_short_definition("基準値の単位のコード。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位指定があれば記述する。")

* referenceRange.text 0..1 MS

* hasMember MS
* hasMember ^short = "【電子カルテ情報共有サービス（5情報送信）では使用しない】この検査に含まれる個々の検査結果項目を示す。電子カルテ情報共有サービスで5情報を送信する場合にはこの要素は使用しない。"
* hasMember ^definition = "【電子カルテ情報共有サービス（5情報送信）では使用しない】この検査（パネルやバッテリ）が結果を持たない親項目（グループ項目に相当）の場合に、この検査に含まれる個々の検査結果への参照を示す。commentも参照のこと。電子カルテ情報共有サービスで5情報を送信する場合にはこの要素は使用しない。"
* hasMember ^comment = "この検査が複数の検査項目をグループ化したパネル検査もしくはバッテリー検査の場合に、このグループに含まれる個々の検査の参照へのリストである。この場合には、本Observationリソースのvalueは存在しない。Bundleリソースなどで本リソースから参照可能なObservationリソースが同時に存在する場合には、そのリソースの識別URIを参照する。個々の子検査の結果Observationリソースを、このリソースにContainedリソースとして埋め込むのではなく、別の検査結果Observationリソースとして作成し、Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照）をとる。ただし、実際にこの方式で記述するか、または別々のObservationリソースで記述するかについては、記述方針が別途定められている場合にはそれに従う。電子カルテ情報共有サービスで5情報を送信する場合にはこの要素は使用しない。"
* hasMember only Reference(JP_Observation_LabResult)

* derivedFrom only Reference(JP_Observation_LabResult)
* derivedFrom ^short = "派生元（素材元）の検査結果への参照のリスト。"
* derivedFrom ^definition = "この検査が他の1つ以上の検査値から派生している（BMIが体重と身長から派生して算出される場合など）場合に、その派生元の検査への参照のリスト。記述方法としては、hasMember要素と同様に記述する。"

* hasMember ^short = "1回の検査・観察で同時に複数の検査結果が得られる場合には必須"
* hasMember ^definition = "同じ検査・観察において、メソッドが1つ、観察が1つ、実行者が1つ、デバイスが1つ、時間が1つしかない１回の検査・観察で同時に複数の検査結果が得られる場合に、その各検査をcomponentをみなしてcomponent要素に記述する。たとえばこのObservationリソースが血圧である場合に、収縮期血圧値と拡張期血圧値の2つは、Observationリソース：血圧の2つのcomponentとして記述される。ただし、実際にこの方式で記述するか、または別々のObservationリソースで記述するかについては、記述方針が別途定められている場合にはそれに従う。"

* component MS
  * referenceRange MS
  * referenceRange.id ..0
  * referenceRange.extension ..0
  * referenceRange.modifierExtension ..0
  * referenceRange.low.id ..0
  * referenceRange.low.extension ..0
  * referenceRange.low.value 1..1  MS
    * insert relative_short_definition("基準値の小さいほうの値")
  * referenceRange.low.unit 0..1 MS
    * insert relative_short_definition("基準値の単位。設定する場合には検査結果の単位と同じであること。設定されない場合には検査結果の単位と同じとみなす。")
  * referenceRange.low.system 0..1 MS
    * insert relative_short_definition("基準値の単位のコード化記述をするコード体系を表すsystem値。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位コードがあれば\"http://unitsofmeasure.org\"を記述する。")
  * referenceRange.low.system = "http://unitsofmeasure.org"
  * referenceRange.low.code 0..1 MS
    * insert relative_short_definition("基準値の単位のコード。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位コードがあれば記述する。")

  * referenceRange.high.id ..0
  * referenceRange.high.extension ..0
  * referenceRange.high.value 1..1  MS
    * insert relative_short_definition("基準値の大きいほうの値")
  * referenceRange.high.unit 0..1 MS
    * insert relative_short_definition("基準値の単位。設定する場合には検査結果の単位と同じであること。設定されない場合には検査結果の単位と同じとみなす。")
  * referenceRange.high.system 0..1 MS
    * insert relative_short_definition("基準値の単位のコード化記述をするコード体系を表すsystem値。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位コードがあれば\"http://unitsofmeasure.org\"を記述する。")
  * referenceRange.high.system = "http://unitsofmeasure.org"
  * referenceRange.high.code 0..1 MS
    * insert relative_short_definition("基準値の単位のコード。電子カルテ情報共有サービスでの検査値の場合には、マスターに単位コードがあれば記述する。")
  * referenceRange.text 0..1 MS