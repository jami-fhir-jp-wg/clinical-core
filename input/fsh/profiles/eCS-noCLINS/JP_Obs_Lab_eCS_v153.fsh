// ==================================================
//   Profile 定義 診療５情報・サマリー用
//   検体検査結果／感染症検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
// ==================================================
Profile: JP_Observation_LabResult_eCS
Parent: JP_Observation_LabResult
Id: JP-Observation-LabResult-eCS
Title:  "eCS/CLINS:JP_Observation_LabResult_eCS"
Description: "eCS/CLINS 診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）プロファイル"

* obeys resource-needs-extension-of-institutionNumber

* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension contains JP_eCS_Department named eCS_Department ..* MS

* ^url = $JP_Observation_LabResult_eCS

* ^version = "1"
* ^status = #active
* ^date = "2024-09-14"
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
  * insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|1　を設定する。")

* meta.tag 0..
  * insert relative_short_definition("電子カルテ情報共有サービスでは、サービス側でのデータ取扱いを各種フラグで指定するために使用する。")
* meta.tag from $JP_ehrshrs_indication_VS 

* meta.tag  ^slicing.discriminator.type = #value
// * meta.tag  ^slicing.discriminator.path = "$this"
* meta.tag  ^slicing.discriminator.path = "code"
* meta.tag  ^slicing.rules = #closed
* meta.tag contains lts 0..1 MS

* meta.tag[lts] 0..1 MS
  * insert relative_short_definition("電子カルテ情報共有サービスで長期保存フラグを設定する場合に使用する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * system = $JP_ehrshrs_indication_CS
  * code 1..1 MS
    * insert relative_short_definition("長期保存フラグ　固定値 LTSを設定する。")
  * code = #LTS (exactly)
* meta.tag[lts] from $JP_ehrshrs_indication_VS 



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

* contained[encounter] only  JP_Encounter
  * insert relative_short_definition("検体検査を実施（検体を採取）したときの入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "電子カルテ情報共有サービスでは必須。encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[specimen] only  JP_Specimen
  * insert relative_short_definition("検体材料情報をコンパクトに格納したSpecimenリソース")
  * ^comment = "specimen要素から参照される場合には、そのJP_Organizationリソースの実体。JP_Organizationリソースにおける必要最小限の要素だけが含まれればよい。specimen要素ではContainedリソースを参照する方法ではなくspecimen要素に検体材料名だけを記述することもできるので、その場合にはこのContainedリソースは不要。
  "

* contained[performer] only  JP_Practitioner  //　CLINSでは必須
  * insert relative_short_definition("検査オーダを作成したときの作成医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "performer要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素、医療者識別情報だけが含まれればよい。電子カルテ情報サービス(このリソースが２文書に含まれるケース)では必須。"

* contained[order] only  JP_ServiceRequest
  * insert relative_short_definition("診療情報におけるオーダ識別番号情報などをコンパクトに格納したServiceRequestリソース")
  * ^comment = "basedOn要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。"


* extension[eCS_InstitutionNumber] 0..1 MS
  * insert relative_short_definition("本情報を作成発行した医療機関の識別番号を記述するために使用する拡張「eCS_InstitutionNumber」。
本情報は、ServiceRequestの要素として記述することも可能であるが、その場合もこの拡張で記述することとする。")
  * ^comment = "電子カルテ情報サービスでは、この拡張による記述は必須。医療機関１０桁番号を示すsystem値は\"http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no\"を使用する。"

* extension[eCS_Department] 0..1 MS
  * insert relative_short_definition("本情報を作成発行した診療科または作成発行者の診療科情報を記述するために使用する拡張「eCS_Department」")
  * ^comment = "電子カルテ情報サービスでは、この拡張による記述は必須。コード化する場合には、JAMI(SS-MIX2) 診療科コード表のsystem値\"http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment\"を使用する。診療科を記述する場合には、そのコード化の有無に関わらずtext要素による記述は必須。"

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
* status ^comment = "preliminary:暫定報告（このあとで本報告が予定される場合）、final:確定報告（このあと修正されることはもちろん事情によってはありうるが、この報告段階では確定結果として報告されている、corrected:final報告を修正した（新しい結果が有効である）のどちらかを使用する。例外的に、cancelled: この結果や検査実施が取り消されたので報告は取り消された（報告済みの以前の結果は無効である、間違っていたかもしれない）も使用でき、他にもも　http://hl7.org/fhir/observation-status　から選択可能であるが、意味的に紛らわしいので使わない。【SS-MIX2】OUL^R22.OBX[*]-11 結果状態"
* status 1..1 MS

// OUL^R22
* category 1..1 MS       
  * insert relative_short_definition("検査結果カテゴリーのコード。system=http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS code=\"laboratory\"") 

// OUL^R22.OBX[*]-3 検査項目情報

* code 1..1 MS
* code ^definition = "検査項目のコードと名称"
* code ^comment = "JLAC10必須の項目と任意の項目がある。"
* code.coding 1.. MS
* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "system"
* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "display"
* code.coding  ^slicing.rules = #open
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS

* code.coding  contains
 jlac10LaboCode 0..1 MS // jlac10LaboCode　unCoded　coreLaboSet　のいずれかひとつは必須
 and unCoded 0..1 MS
 and localLaboCode 0..1 MS
 
// コードの全体に適用する大原則
// code from $JP_eCS_ObservationLabResultCode_VS (required)

//ローカルコード
* code.coding[localLaboCode].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS" (exactly)

// 一般JLAC10コード
* code.coding[jlac10LaboCode].system = $JP_ObservationLabResultCode_CS (exactly)
* code.coding[jlac10LaboCode] from $JP_ObservationLabResultCode_VS (required)

// 未標準化コード
* code.coding[unCoded].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS" (exactly)
* code.coding[unCoded].code = #99999999999999999 (exactly)
* code.coding[unCoded].display = "未標準化コード項目(JLAC)" (exactly)


// 基本検査項目セット　43項目
* insert  core43LaboItemProfile(abo-bld,ABO-BLD,abo_bld)
* insert  core43LaboItemProfile(alb,ALB,alb)
* insert  core43LaboItemProfile(alp,ALP,alp)
* insert  core43LaboItemProfile(alt,ALT,alt)
* insert  core43LaboItemProfile(amy,AMY,amy)
* insert  core43LaboItemProfile(aptt,APTT,aptt)
* insert  core43LaboItemProfile(ast,AST,ast)
* insert  core43LaboItemProfile(bnp,BNP,bnp)
* insert  core43LaboItemProfile(bs,BS,bs)
* insert  core43LaboItemProfile(bun,BUN,bun)
* insert  core43LaboItemProfile(ca,Ca,ca)
* insert  core43LaboItemProfile(che,ChE,che)
* insert  core43LaboItemProfile(ck,CK,ck)
* insert  core43LaboItemProfile(cl,Cl,cl)
* insert  core43LaboItemProfile(cre,Cre,cre)
* insert  core43LaboItemProfile(crp,CRP,crp)
* insert  core43LaboItemProfile(crp-class,CRP-class,crp_class)

* insert  core43LaboItemProfile(cys-c,Cys-C,cys_c)
//* code.coding[coreLaboJLAC10/cys-c].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/cys-c].display = "Cys-C" (exactly)	
//* code.coding[coreLaboJLAC10/cys-c].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_cys_c_VS (required)

* insert  core43LaboItemProfile(d-bil,D-Bil,d_bil)
//* code.coding[coreLaboJLAC10/d-bil].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/d-bil].display = "D-Bil" (exactly)	
//* code.coding[coreLaboJLAC10/d-bil].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_d_bil_VS (required)

* insert  core43LaboItemProfile(dd,DD,dd)
//* code.coding[coreLaboJLAC10/dd].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/dd].display = "DD" (exactly)	
//* code.coding[coreLaboJLAC10/dd].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_dd_VS (required)

* insert  core43LaboItemProfile(fbs,FBS,fbs)
//* code.coding[coreLaboJLAC10/fbs].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/fbs].display = "FBS" (exactly)	
//* code.coding[coreLaboJLAC10/fbs].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_fbs_VS (required)

* insert  core43LaboItemProfile(ggt,GGT,ggt)
//* code.coding[coreLaboJLAC10/ggt].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/ggt].display = "GGT" (exactly)	
//* code.coding[coreLaboJLAC10/ggt].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_ggt_VS (required)

* insert  core43LaboItemProfile(hb,Hb,hb)
//* code.coding[coreLaboJLAC10/hb].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/hb].display = "Hb" (exactly)	
//* code.coding[coreLaboJLAC10/hb].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_hb_VS (required)

* insert  core43LaboItemProfile(hba1c-ngsp,HbA1c-NGSP,hba1c_ngsp)
//* code.coding[coreLaboJLAC10/hba1c-ngsp].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/hba1c-ngsp].display = "HbA1c-NGSP" (exactly)	
//* code.coding[coreLaboJLAC10/hba1c-ngsp].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_hba1c_ngsp_VS (required)

* insert  core43LaboItemProfile(hdl-c,HDL-C,hdl_c)
//* code.coding[coreLaboJLAC10/hdl-c].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/hdl-c].display = "HDL-C" (exactly)	
//* code.coding[coreLaboJLAC10/hdl-c].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_hdl_c_VS (required)

* insert  core43LaboItemProfile(k,K,k)
//* code.coding[coreLaboJLAC10/k].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/k].display = "K" (exactly)	
//* code.coding[coreLaboJLAC10/k].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_k_VS (required)

* insert  core43LaboItemProfile(ld,LD,ld)
//* code.coding[coreLaboJLAC10/ld].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/ld].display = "LD" (exactly)	
//* code.coding[coreLaboJLAC10/ld].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_ld_VS (required)

* insert  core43LaboItemProfile(ldl-c,LDL-C,ldl_c)
//* code.coding[coreLaboJLAC10/ldl-c].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/ldl-c].display = "LDL-C" (exactly)	
//* code.coding[coreLaboJLAC10/ldl-c].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_ldl_c_VS (required)

* insert  core43LaboItemProfile(na,Na,na)
//* code.coding[coreLaboJLAC10/na].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/na].display = "Na" (exactly)	
//* code.coding[coreLaboJLAC10/na].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_na_VS (required)

* insert  core43LaboItemProfile(nt-probnp,NT-proBNP,nt_probnp)
//* code.coding[coreLaboJLAC10/nt-probnp].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/nt-probnp].display = "NT-proBNP" (exactly)	
//* code.coding[coreLaboJLAC10/nt-probnp].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_nt_probnp_VS (required)

* insert  core43LaboItemProfile(plt,PLT,plt)
//* code.coding[coreLaboJLAC10/plt].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/plt].display = "PLT" (exactly)	
//* code.coding[coreLaboJLAC10/plt].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_plt_VS (required)

* insert  core43LaboItemProfile(pt-act,PT-act,pt_act)
//* code.coding[coreLaboJLAC10/pt-act].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/pt-act].display = "PT-act" (exactly)	
//* code.coding[coreLaboJLAC10/pt-act].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_pt_act_VS (required)

* insert  core43LaboItemProfile(pt-inr,PT-INR,pt_inr)
//* code.coding[coreLaboJLAC10/pt-inr].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/pt-inr].display = "PT-INR" (exactly)	
//* code.coding[coreLaboJLAC10/pt-inr].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_pt_inr_VS (required)

* insert  core43LaboItemProfile(pt-ratio,PT-ratio,pt_ratio)
//* code.coding[coreLaboJLAC10/pt-ratio].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/pt-ratio].display = "PT-ratio" (exactly)	
//* code.coding[coreLaboJLAC10/pt-ratio].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_pt_ratio_VS (required)

* insert  core43LaboItemProfile(pt-sec,PT-sec,pt_sec)
//* code.coding[coreLaboJLAC10/pt-sec].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/pt-sec].display = "PT-sec" (exactly)	
//* code.coding[coreLaboJLAC10/pt-sec].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_pt_sec_VS (required)

* insert  core43LaboItemProfile(rbc,RBC,rbc)
//* code.coding[coreLaboJLAC10/rbc].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/rbc].display = "RBC" (exactly)	
//* code.coding[coreLaboJLAC10/rbc].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_rbc_VS (required)

* insert  core43LaboItemProfile(rh-bld,Rh-BLD,rh_bld)
//* code.coding[coreLaboJLAC10/rh-bld].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/rh-bld].display = "Rh-BLD" (exactly)	
//* code.coding[coreLaboJLAC10/rh-bld].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_rh_bld_VS (required)

* insert  core43LaboItemProfile(t-bil,T-Bil,t_bil)
//* code.coding[coreLaboJLAC10/t-bil].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/t-bil].display = "T-Bil" (exactly)	
//* code.coding[coreLaboJLAC10/t-bil].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_t_bil_VS (required)

* insert  core43LaboItemProfile(t-cho,T-CHO,t_cho)
//* code.coding[coreLaboJLAC10/t-cho].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/t-cho].display = "T-CHO" (exactly)	
//* code.coding[coreLaboJLAC10/t-cho].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_t_cho_VS (required)

* insert  core43LaboItemProfile(tg,TG,tg)
//* code.coding[coreLaboJLAC10/tg].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/tg].display = "TG" (exactly)	
//* code.coding[coreLaboJLAC10/tg].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_tg_VS (required)

* insert  core43LaboItemProfile(tp,TP,tp)
//* code.coding[coreLaboJLAC10/tp].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/tp].display = "TP" (exactly)	
//* code.coding[coreLaboJLAC10/tp].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_tp_VS (required)

* insert  core43LaboItemProfile(u-ac,U-ac,u_ac)
//* code.coding[coreLaboJLAC10/u-ac].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/u-ac].display = "U-ac" (exactly)	
//* code.coding[coreLaboJLAC10/u-ac].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_u_ac_VS (required)

* insert  core43LaboItemProfile(u-bld,U-Bld,u_bld)
//* code.coding[coreLaboJLAC10/u-bld].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/u-bld].display = "U-Bld" (exactly)	
//* code.coding[coreLaboJLAC10/u-bld].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_u_bld_VS (required)

* insert  core43LaboItemProfile(u-bld-HalfQty,U-Bld-半定量,u_bld_HalfQty)
//* code.coding[coreLaboJLAC10/u-bld-HalfQty].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/u-bld-HalfQty].display = "U-Bld-半定量" (exactly)	
//* code.coding[coreLaboJLAC10/u-bld-HalfQty].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_u_bld_HalfQty_VS (required)


* insert  core43LaboItemProfile(u-glu,U-Glu,u_glu)
//* code.coding[coreLaboJLAC10/u-glu].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/u-glu].display = "U-Glu" (exactly)	
//* code.coding[coreLaboJLAC10/u-glu].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_u_glu_VS (required)

* insert  core43LaboItemProfile(u-glu-HalfQty,U-Glu-定性半定量,u_glu_HalfQty)
//* code.coding[coreLaboJLAC10/u-glu-HalfQty].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/u-glu-HalfQty].display = "U-Glu-定性半定量" (exactly)	
//* code.coding[coreLaboJLAC10/u-glu-HalfQty].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_u_glu_HalfQty_VS (required)

* insert  core43LaboItemProfile(u-pc,U-pc,u_pc)
//* code.coding[coreLaboJLAC10/u-pc].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/u-pc].display = "U-pc" (exactly)	
//* code.coding[coreLaboJLAC10/u-pc].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_u_pc_VS (required)

* insert  core43LaboItemProfile(utp,U-TP,utp)
//* code.coding[coreLaboJLAC10/utp].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/utp].display = "U-TP" (exactly)	
//* code.coding[coreLaboJLAC10/utp].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_utp_VS (required)

* insert  core43LaboItemProfile(utp-HalfQty,U-TP-半定量,utp_HalfQty)
//* code.coding[coreLaboJLAC10/utp-HalfQty].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/utp-HalfQty].display = "U-TP-半定量" (exactly)	
//* code.coding[coreLaboJLAC10/utp-HalfQty].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_utp_HalfQty_VS (required)

* insert  core43LaboItemProfile(ua,UA,ua)
//* code.coding[coreLaboJLAC10/ua].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/ua].display = "UA" (exactly)	
//* code.coding[coreLaboJLAC10/ua].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_ua_VS (required)

* insert  core43LaboItemProfile(wbc,WBC,wbc)
//* code.coding[coreLaboJLAC10/wbc].system = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS (exactly)	
//* code.coding[coreLaboJLAC10/wbc].display = "WBC" (exactly)	
//* code.coding[coreLaboJLAC10/wbc].code from $JP_CLINS_ValueSet_CoreLaboJLAC10_wbc_VS (required)


//---------- ここから感染症検査のスライス定義
//* insert infectionLaboItemProfile(itemID,itemDisplay,aliasID)

* insert infectionLaboItemProfile(hcvcheck,C型肝炎ウイルス検診の判定,HCVCHECK)
//* code.coding[infectionLaboJLAC10/hcvcheck].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvcheck].display = "C型肝炎ウイルス検診の判定"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvcheck].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVCHECK_VS  (required)

* insert infectionLaboItemProfile(hbsagsco,HBs抗原(S/CO\),HBSAGSCO)
//* code.coding[infectionLaboJLAC10/hbsagsco].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagsco].display = "HBs抗原(S/CO)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagsco].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBSAGSCO_VS  (required)

* insert infectionLaboItemProfile(hbsagcoi,HBs抗原(コントロール比\),HBsAGCOI)
//* code.coding[infectionLaboJLAC10/hbsagcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagcoi].display = "HBs抗原(コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsAGCOI_VS  (required)

* insert infectionLaboItemProfile(hbsagdil,HBs抗原(希釈倍率\),HBsAGDIL)
//* code.coding[infectionLaboJLAC10/hbsagdil].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagdil].display = "HBs抗原(希釈倍率)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagdil].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsAGDIL_VS  (required)

* insert infectionLaboItemProfile(hbsagod,HBs抗原(吸光度\),HbsAGOD)
//* code.coding[infectionLaboJLAC10/hbsagod].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagod].display = "HBs抗原(吸光度)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagod].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HbsAGOD_VS  (required)

* insert infectionLaboItemProfile(hbsagquant,HBs抗原(定量\),HBsAGQUANT)
//* code.coding[infectionLaboJLAC10/hbsagquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagquant].display = "HBs抗原(定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsAGQUANT_VS  (required)

* insert infectionLaboItemProfile(hbsagresult,HBs抗原(判定\),HBsAGRESULT)
//* code.coding[infectionLaboJLAC10/hbsagresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagresult].display = "HBs抗原(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsAGRESULT_VS  (required)

* insert infectionLaboItemProfile(hbsagposcoi,HBs抗原(陽性コントロール比\),HBsAGPOSCOI)
// code.coding[infectionLaboJLAC10/hbsagposcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagposcoi].display = "HBs抗原(陽性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsagposcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsAGPOSCOI_VS  (required)

* insert infectionLaboItemProfile(hbsabcoi,HBs抗体(コントロール比\),HBsABCOI)
//* code.coding[infectionLaboJLAC10/hbsabcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabcoi].display = "HBs抗体(コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsABCOI_VS  (required)

* insert infectionLaboItemProfile(hbsabnegcoi,HBs抗体(陰性コントロール比\),HBsABNEGCOI)
//* code.coding[infectionLaboJLAC10/hbsabnegcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabnegcoi].display = "HBs抗体(陰性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabnegcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsABNEGCOI_VS  (required)

* insert infectionLaboItemProfile(hbsabdil,HBs抗体(希釈倍率\),HBsABDIL)
//* code.coding[infectionLaboJLAC10/hbsabdil].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabdil].display = "HBs抗体(希釈倍率)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabdil].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsABDIL_VS  (required)

* insert infectionLaboItemProfile(hbsabquant,HBs抗体(定量\),HBsABQUANT)
//* code.coding[infectionLaboJLAC10/hbsabquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabquant].display = "HBs抗体(定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsABQUANT_VS  (required)

* insert infectionLaboItemProfile(hbsabresult,HBs抗体(判定\),HBsABRESULT)
//* code.coding[infectionLaboJLAC10/hbsabresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabresult].display = "HBs抗体(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hbsabresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HBsABRESULT_VS  (required)

* insert infectionLaboItemProfile(hcvquant,HCV核酸増幅検査(定量\),HCVQUANT)
//* code.coding[infectionLaboJLAC10/hcvquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvquant].display = "HCV核酸増幅検査(定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVQUANT_VS  (required)

* insert infectionLaboItemProfile(hcvresult,HCV核酸増幅検査(判定\),HCVRESULT)
//* code.coding[infectionLaboJLAC10/hcvresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvresult].display = "HCV核酸増幅検査(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVRESULT_VS  (required)

* insert infectionLaboItemProfile(hcvagquant,HCV抗原検査(定量\),HCVAGQUANT)
//* code.coding[infectionLaboJLAC10/hcvagquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvagquant].display = "HCV抗原検査(定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvagquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVAGQUANT_VS  (required)

* insert infectionLaboItemProfile(hcvagresult,HCV抗原検査(判定\),HCVAGRESULT)
//* code.coding[infectionLaboJLAC10/hcvagresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvagresult].display = "HCV抗原検査(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvagresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVAGRESULT_VS  (required)

* insert infectionLaboItemProfile(hcvabcoi,HCV抗体(コントロール比\),HCVABCOI)
//* code.coding[infectionLaboJLAC10/hcvabcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabcoi].display = "HCV抗体(コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVABCOI_VS  (required)

* insert infectionLaboItemProfile(hcvabdil,HCV抗体(希釈倍率\),HCVABDIL)
//* code.coding[infectionLaboJLAC10/hcvabdil].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabdil].display = "HCV抗体(希釈倍率)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabdil].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVABDIL_VS  (required)

* insert infectionLaboItemProfile(hcvabresult,HCV抗体(判定\),HCVABRESULT)
//* code.coding[infectionLaboJLAC10/hcvabresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabresult].display = "HCV抗体(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVABRESULT_VS  (required)

* insert infectionLaboItemProfile(hcvabposcoi,HCV抗体(陽性コントロール比\),HCVABPOSCOI)
//* code.coding[infectionLaboJLAC10/hcvabposcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabposcoi].display = "HCV抗体(陽性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hcvabposcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HCVABPOSCOI_VS  (required)

* insert infectionLaboItemProfile(hiv1quant,HIV-1(ウイルスRNA定量\),HIV1QUANT)
//* code.coding[infectionLaboJLAC10/hiv1quant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1quant].display = "HIV-1(ウイルスRNA定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1quant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1QUANT_VS  (required)

* insert infectionLaboItemProfile(hiv1result,HIV-1(ウイルスRNA定量判定\),HIV1RESULT)
//* code.coding[infectionLaboJLAC10/hiv1result].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1result].display = "HIV-1(ウイルスRNA定量判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1result].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1RESULT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abp24coiv,HIV-1+2抗体・p24抗原(コントロール値\),HIV1P2ABP24COIV)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24coiv].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24coiv].display = "HIV-1+2抗体・p24抗原(コントロール値)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24coiv].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABP24COIV_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abp24coi,HIV-1+2抗体・p24抗原(コントロール比\),HIV1P2ABP24COI)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24coi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24coi].display = "HIV-1+2抗体・p24抗原(コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24coi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABP24COI_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abp24negcoi,HIV-1+2抗体・p24抗原(陰性コントロール比\),HIV1P2ABP24NEGCOI)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24negcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
/////* code.coding[infectionLaboJLAC10/hiv1p2abp24negcoi].display = "HIV-1+2抗体・p24抗原(陰性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24negcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABP24NEGCOI_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abod,HIV-1+2抗体・p24抗原(吸光度\),HIV1P2ABOD)
//* code.coding[infectionLaboJLAC10/hiv1p2abod].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abod].display = "HIV-1+2抗体・p24抗原(吸光度)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abod].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABOD_VS  (required)

* insert infectionLaboItemProfile(hiv1p2p24abresult,HIV-1+2抗体・p24抗原(定性、HIV-p24抗原\),HIV1P2P24ABRESULT)
//* code.coding[infectionLaboJLAC10/hiv1p2p24abresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2p24abresult].display = "HIV-1+2抗体・p24抗原(定性、HIV p24抗原)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2p24abresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2P24ABRESULT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abp24qlresult,HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体\),HIV1P2ABP24QLRESULT)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24qlresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24qlresult].display = "HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24qlresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABP24QLRESULT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2p24abquant,HIV-1+2抗体・p24抗原(定量、HIV-p24抗原\),HIV1P2P24ABQUANT)
//* code.coding[infectionLaboJLAC10/hiv1p2p24abquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2p24abquant].display = "HIV-1+2抗体・p24抗原(定量、HIV p24抗原)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2p24abquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2P24ABQUANT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abquant,HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体\),HIV1P2ABQUANT)
//* code.coding[infectionLaboJLAC10/hiv1p2abquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abquant].display = "HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABQUANT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abp24result,HIV-1+2抗体・p24抗原(判定\),HIV1P2ABP24RESULT)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24result].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24result].display = "HIV-1+2抗体・p24抗原(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24result].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABP24RESULT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abp24poscoi,HIV-1+2抗体・p24抗原(陽性コントロール比\),HIV1P2ABP24POSCOI)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24poscoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abp24poscoi].display = "HIV-1+2抗体・p24抗原(陽性コントロール比)"  (exactly)
// code.coding[infectionLaboJLAC10/hiv1p2abp24poscoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABP24POSCOI_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abcoi,HIV-1+2抗体(コントロール比\),HIV1P2ABCOI)
//* code.coding[infectionLaboJLAC10/hiv1p2abcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abcoi].display = "HIV-1+2抗体(コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABCOI_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abdil,HIV-1+2抗体(希釈倍率\),HIV1P2ABDIL)
//* code.coding[infectionLaboJLAC10/hiv1p2abdil].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abdil].display = "HIV-1+2抗体(希釈倍率)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abdil].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABDIL_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abresult,HIV-1+2抗体(判定\),HIV1P2ABRESULT)
//* code.coding[infectionLaboJLAC10/hiv1p2abresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abresult].display = "HIV-1+2抗体(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABRESULT_VS  (required)

* insert infectionLaboItemProfile(hiv1p2abposcoi,HIV-1+2抗体(陽性コントロール比\),HIV1P2ABPOSCOI)
//* code.coding[infectionLaboJLAC10/hiv1p2abposcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abposcoi].display = "HIV-1+2抗体(陽性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1p2abposcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1P2ABPOSCOI_VS  (required)

* insert infectionLaboItemProfile(hiv1abdil,HIV-1抗体(希釈倍率\),HIV1ABDIL)
//* code.coding[infectionLaboJLAC10/hiv1abdil].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1abdil].display = "HIV-1抗体(希釈倍率)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1abdil].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1ABDIL_VS  (required)

* insert infectionLaboItemProfile(hiv1abresult,HIV-1抗体(判定\),HIV1ABRESULT)
//* code.coding[infectionLaboJLAC10/hiv1abresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1abresult].display = "HIV-1抗体(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv1abresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV1ABRESULT_VS  (required)

* insert infectionLaboItemProfile(hiv2abdil,HIV-2抗体(希釈倍率\),HIV2ABDIL)
//* code.coding[infectionLaboJLAC10/hiv2abdil].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv2abdil].display = "HIV-2抗体(希釈倍率)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv2abdil].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV2ABDIL_VS  (required)

* insert infectionLaboItemProfile(hiv2abresult,HIV-2抗体(判定\),HIV2ABRESULT)
//* code.coding[infectionLaboJLAC10/hiv2abresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/hiv2abresult].display = "HIV-2抗体(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/hiv2abresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_HIV2ABRESULT_VS  (required)

* insert infectionLaboItemProfile(stsqlresult,梅毒STS(定性\),STSQLRESULT)
//* code.coding[infectionLaboJLAC10/stsqlresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/stsqlresult].display = "梅毒STS(定性)"  (exactly)
//* code.coding[infectionLaboJLAC10/stsqlresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_STSQLRESULT_VS  (required)

* insert infectionLaboItemProfile(stsquant,梅毒STS(定量\),STSQUANT)
//* code.coding[infectionLaboJLAC10/stsquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/stsquant].display = "梅毒STS(定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/stsquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_STSQUANT_VS  (required)

* insert infectionLaboItemProfile(stsresult,梅毒STS(判定\),STSRESULT)
//* code.coding[infectionLaboJLAC10/stsresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/stsresult].display = "梅毒STS(判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/stsresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_STSRESULT_VS  (required)

* insert infectionLaboItemProfile(stshquant,梅毒STS(半定量\),STSHQUANT)
//* code.coding[infectionLaboJLAC10/stshquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/stshquant].display = "梅毒STS(半定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/stshquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_STSHQUANT_VS  (required)

* insert infectionLaboItemProfile(tpresult,梅毒TP抗体(定性\),TPRESULT)
//* code.coding[infectionLaboJLAC10/tpresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tpresult].display = "梅毒TP抗体(定性)"  (exactly)
//* code.coding[infectionLaboJLAC10/tpresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPRESULT_VS  (required)

* insert infectionLaboItemProfile(tpquantcoi,梅毒TP抗体(定量、コントロール比\),TPQUANTCOI)
//* code.coding[infectionLaboJLAC10/tpquantcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tpquantcoi].display = "梅毒TP抗体(定量、コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/tpquantcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPQUANTCOI_VS  (required)

* insert infectionLaboItemProfile(tpnegcoi,梅毒TP抗体(定量、陰性コントロール比\),TPNEGCOI)
//* code.coding[infectionLaboJLAC10/tpnegcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tpnegcoi].display = "梅毒TP抗体(定量、陰性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/tpnegcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPNEGCOI_VS  (required)

* insert infectionLaboItemProfile(tpquantresult,梅毒TP抗体(定量、判定\),TPQUANTRESULT)
//* code.coding[infectionLaboJLAC10/tpquantresult].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tpquantresult].display = "梅毒TP抗体(定量、判定)"  (exactly)
//* code.coding[infectionLaboJLAC10/tpquantresult].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPQUANTRESULT_VS  (required)

* insert infectionLaboItemProfile(tpposcoi,梅毒TP抗体(定量、陽性コントロール比\),TPPOSCOI)
//* code.coding[infectionLaboJLAC10/tpposcoi].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tpposcoi].display = "梅毒TP抗体(定量、陽性コントロール比)"  (exactly)
//* code.coding[infectionLaboJLAC10/tpposcoi].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPPOSCOI_VS  (required)

* insert infectionLaboItemProfile(tpquant,梅毒TP抗体(定量\),TPQUANT)
//* code.coding[infectionLaboJLAC10/tpquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tpquant].display = "梅毒TP抗体(定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/tpquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPQUANT_VS  (required)

* insert infectionLaboItemProfile(tphquant,梅毒TP抗体(半定量\),TPHQUANT)
//* code.coding[infectionLaboJLAC10/tphquant].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/tphquant].display = "梅毒TP抗体(半定量)"  (exactly)
//* code.coding[infectionLaboJLAC10/tphquant].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_TPHQUANT_VS  (required)

* insert infectionLaboItemProfile(sts,梅毒反応,STS)
//* code.coding[infectionLaboJLAC10/sts].system = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS  (exactly)
//* code.coding[infectionLaboJLAC10/sts].display = "梅毒反応"  (exactly)
//* code.coding[infectionLaboJLAC10/sts].code from  $JP_CLINS_ValueSet_InfectionLaboJLAC10_STS_VS  (required)

 
 
// OUL^R22.OBX[*]-3[*]-1    コード　
// OUL^R22.OBX[*]-3[*]-1のコードが &TCM　で終了する場合には、&TCMの直前までの文字列をコメントコードとみなして、同じ

// OUL^R22.OBX[*]-3[*]-2
* code.coding.display ^short = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^definition = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^comment = "標準コードに対応する標準名称文字列が規定されていないことも多いため、この要素は省略できる。値が存在する場合に受信側がこの文字列をどのように使用するかについては特に定めない。ただし、２文書5情報を電子カルテ共有サービスに送信する場合には、「検体検査結果情報における検査項目のコーディング規則」を厳守する必要がある。"

* code.text 1..1 MS   
* code.text ^definition = "項目名。報告書などに記載する場合に使用する表示名。"
* code.text ^comment = "【JP Core仕様】このプロファイルでは、表示名として必須とする。\r\n\r\n多くの場合、coding.display と同一になるが、coding.display に異なる複数の表現が格納される場合を想定し、code間で共通の表現として必須とする。受信側はこの文字列を項目表示文字列として使用できる。ただし、２文書5情報を電子カルテ共有サービスに送信する場合には、「検体検査結果情報における検査項目のコーディング規則」を厳守する必要がある。"

// 患者情報
* subject 1..1   MS
* subject only  Reference(JP_Patient_eCS)
  * insert relative_short_definition("患者のFHIRリソース(JP_Patient_eCSに従うPatientリソース\)への参照。")
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照） 」に従う。"

* encounter 0..1 MS //　CLINSでは必須
* encounter only  Reference(JP_Encounter)
  * insert relative_short_definition("処方を発行したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照")
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
* performer ^short = "検査結果を責任を持つ医療者、検査実施者（検査オーダ医師）への参照。"
* performer ^definition = "検査結果を責任を持つ医療者への参照。電子カルテ情報サービスでは必須とし、オーダした医師（結果を確認した医師に相当）のPractitionerリソースへの参照を設定する。電子カルテ情報サービスでは必須。"
* performer ^comment = "実装ガイド本文の「リソースへの参照方法　(1)containedリソースをインラインリソースIDにより参照する記述方法」を参照のこと。"

// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
* value[x] MS
* value[x] only Quantity or CodeableConcept or string
* value[x] ^short = "検体検査の結果"
* value[x] ^definition = "検体検査の結果"
* value[x] ^comment = "valueQuantity,valueCodeableConcept,valueStringのいずれかを使用する。"

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
* dataAbsentReason ^definition = "検査結果値が欠落している理由。"
* dataAbsentReason ^comment = "【JP Core仕様】SS-MIX2で未使用だが、valueの欠落時に使用する必要があり、重要な項目である。\r\n\r\n制約「obs-6」に示す通り、valueが存在する場合、この要素は存在してはならない。\r\n\r\ntextのみでの使用は基本的に不可とし、必ずcodingを以下から設定すること。適切な理由を選べないシステムの場合には、unknownを使用するものとする。\r\n\r\n(unknown：値が存在するかしないか不明 |  masked：結果非開示 | not-applicable：適用外（システム適用外など、生体にありえない項目（男性患者における女性固有検査値など）） | as-text ：テキスト表現で別途記述| error ：システムエラー|   not-a-number：結果が数値でない、数値化エラー |   negative-infinity：数値が小さすぎて表現できない |   positive-infinity：数値が大きすぎて表現 | not-performed：未実施| not-permitted：結果取得が許可されていない"

// OUL^R22.OBX[*]-8 （基準値範囲はOUL^R22.OBX[*]-7) 
* interpretation MS
* interpretation ^short = "High, low, normal, etc. 高、低、正常など"
* interpretation ^definition = "検査結果値の、（高、低、正常）といったカテゴリー評価。結果報告書に記載されることもある情報。"
* interpretation ^comment = "【JP Core仕様】拡張可コード表「ObservationInterpretationCodes」からいずれかの適当なコードをひとつ使用するが、本要素はなくてもよい。その施設における基準値が設定されている数値検査結果に対しては、基準値範囲により解釈したH（高）、L（低）、N（正常範囲） のいずれかを設定することが望ましい。\r\n\r\nコード表が大きいため、下記参照。\r\n\r\nhttps://www.hl7.org/fhir/R4/valueset-observation-interpretation.html"
* interpretation ^requirements = "特に数値結果については、結果の重要性を完全に理解するために解釈を必要。"

* note MS
* note ^short = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。"
* note ^definition = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。"


// OUL^R22.SPM-4[*]
* specimen 1.. MS
* specimen ^short = "この検査に使用された検体（標本）。"
* specimen ^definition = "この検査に使用された検体（標本）情報への参照。"
* specimen ^comment = "検体材料に関する情報を記述したSpecimenリソースをContainedリソースとして本リソースに埋め込んでそれを参照するか、またはtype子要素=\"Specimen\",display子要素で\"血清\"のように検体名称を設定することで記述する。"

// OUL^R22.OBX[*]-7
* referenceRange MS

* hasMember MS
* hasMember ^short = "この検査に含まれる個々の検査結果項目を示す。"
* hasMember ^definition = "この検査（パネルやバッテリ）が結果を持たない親項目（グループ項目に相当）の場合に、この検査に含まれる個々の検査結果への参照を示す。"
* hasMember ^comment = "この検査が複数の検査項目をグループ化したパネル検査もしくはバッテリー検査の場合に、このグループに含まれる個々の検査の参照へのリストである。この場合には、本Observationリソースのvalueは存在しない。Bundleリソースなどで本リソースから参照可能なObservationリソースが同時に存在する場合には、そのリソースの識別URIを参照する。この検査に含まれる個々の検査結果Observationリソースを、このリソースに埋め込むのではなく、別の検査結果Observationリソースとして作成し、そのidentifierを論理参照する方法をとること。"
* hasMember only Reference(JP_Observation_LabResult)
* derivedFrom only Reference(JP_Observation_LabResult)
* derivedFrom ^short = "派生元（素材元）の検査結果への参照のリスト。"
* derivedFrom ^definition = "この検査が他の1つ以上の検査値から派生している（BMIが体重と身長から派生して算出される場合など）場合に、その派生元の検査への参照のリスト。記述方法としては、hasMember要素と同様に記述する。"



