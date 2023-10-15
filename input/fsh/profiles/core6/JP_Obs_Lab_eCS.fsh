// ==================================================
//   Profile 定義 診療６情報・サマリー用
//   検体検査結果／感染症検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
// ==================================================
Profile: JP_Observation_LabResult_eCS
Parent: JP_Observation_LabResult
Id: JP-Observation-LabResult-eCS
Title:  "Core6 : JP_Observation_LabResult_eCS"
Description: "診療6情報・サマリー用　Observationリソース（検体検査結果／感染症検体検査結果）プロファイル"

* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension contains JP_eCS_Department named eCS_Department ..* MS

* ^url = $JP_Observation_LabResult_eCS
* ^status = #active
* ^date = "2023-05-27"
* . ^short = "診療主要情報における検体検査結果／感染症検体検査結果の格納に使用する"
* . ^definition = "診療主要情報・厚労省6情報などにおける検体検査結果／感染症検体検査結果の格納に使用する"

// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains patient 1..1
    and encounter 0..
    and specimen 1..
    and order 0..

* contained[patient] only  JP_Patient
  * insert relative_short_definition("診療主要情報における患者情報をコンパクトに格納したPatientリソース")
  * ^comment = "subject要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースにおける必要最小限の要素だけが含まれればよい。３文書６情報の作成では、JP_Patientリソースのcontainedは必須。"

* contained[encounter] only  JP_Encounter
  * insert relative_short_definition("診療主要情報における入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[specimen] only  JP_Specimen
  * insert relative_short_definition("検体材料情報をコンパクトに格納したSpecimenリソース")
  * ^comment = "specimen要素から参照される場合には、そのJP_Organizationリソースの実体。JP_Organizationリソースにおける必要最小限の要素だけが含まれればよい。"
* contained[order] only  JP_ServiceRequest
  * insert relative_short_definition("診療主要情報におけるオーダ識別番号情報などをコンパクトに格納したServiceRequestリソース")
  * ^comment = "basedOn要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。"

* identifier  MS
  * insert relative_short_definition("この１処方薬情報を作成した施設内で、この１処方薬情報を他の処方薬情報と一意に区別できるID。このID情報をキーとして１処方薬情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。")
  * ^comment = "１処方薬情報を他の１処方薬情報と一意に区別できるIDを発番できない場合には、省略可能であるが、その場合にはbasedOnで指し示す処方オーダ情報の中に、この処方を作成した施設内で元のオーダを一意に識別できるIDを格納することが望ましい。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains resourceInstance-identifier 1..1 MS
* identifier[resourceInstance-identifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceInstance-identifier].system ^comment = "この１処方薬情報を作成した施設内で、この１処方薬情報を他の処方薬情報と一意に区別できるIDを発番できる場合にのみ、このsystem値（$JP_ResourceInstanceIdentifier）を使用すること。"
* identifier[resourceInstance-identifier].value 1..1 MS
  * insert relative_short_definition("１処方薬情報を識別するIDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。例）\"1311234567-2021-00123456\"")


* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 0..1 MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest　を設定する。電子カルテ情報共有サービスにおいて本リソースデータを検証したい場合には、"http://jpfhir.jp/fhir/clins/StructureDefinition/JP_MedicationRequest"を使用する。")
* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "$this"
* meta.tag  ^slicing.rules = #open
* meta.tag contains lts 0..1 MS
  and uninformed 0..1 MS

* meta.tag[lts] = $JP_ehrshrs_indication_CS#LTS
  * insert relative_short_definition("電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用する。")
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("長期保存情報フラグ　固定値 LTSを設定する。")
* meta.tag[uninformed] = $JP_ehrshrs_indication_CS#UNINFORMED
  * insert relative_short_definition("６情報作成において未告知情報または未説明フラグを設定する場合に使用（本リソース種別で使用することが許可されているか、あるいは設定した情報が利用されるかどうかについては、電子カルテ情報共有サービスの運用仕様によって確認することが必要）。" )
  * system 1..1 MS
    * insert relative_short_definition("固定値 http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
    * insert relative_short_definition("未告知フラグ　固定値 UNINFORMEDを設定する。")

* basedOn 0..1
* basedOn only Reference(JP_ServiceRequest)
* basedOn ^definition = "このプロファイルでは、検体検査オーダに関する情報。"
* basedOn ^comment = "元のオーダID情報や依頼者情報は必要ならここで記述する。"

// OUL^R22.OBX[*]-11 結果状態
* status ^definition = "検査結果値の状態。"
* status ^definition = "検査結果値の状態。"
* status ^comment = "preliminary:暫定報告（このあとで本報告が予定される場合）、final:確定報告（このあと修正されることはもちろん事情によってはありうるが、この報告だk泣きでは確定結果として報告されている、corrected:final報告を修正した（新しい結果が有効である）、cancelled: この結果や検査実施が取り消されたので報告は取り消された（報告済みの以前の結果は無効である、間違っていたかもしれない）。これらのステータスコード以外は意味的に紛らわしいので使わない方針とする。【SS-MIX2】OUL^R22.OBX[*]-11 結果状態"
* status 1..1 MS

// OUL^R22
* category MS       

/*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
 laboratory 1..1

* category[laboratory] 1..1 MS
* category[laboratory] = $observation-category-cs#laboratory
*/


// OUL^R22.OBX[*]-3 検査項目情報

* code 1..1 MS
* code ^definition = "検査項目のコードと名称"
* code ^comment = "JLAC10必須の項目と任意の項目がある。"

* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "system"
* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "display"
* code.coding  ^slicing.rules = #closed
* code.coding  contains
  localLaboCode 1..1 MS
 and coreLabo/abo-bld 0..1 MS
 and coreLabo/alb 0..1 MS
 and coreLabo/alp 0..1 MS
 and coreLabo/alt 0..1 MS
 and coreLabo/amy 0..1 MS
 and coreLabo/aptt 0..1 MS
 and coreLabo/ast 0..1 MS
 and coreLabo/bnp 0..1 MS
 and coreLabo/bs 0..1 MS
 and coreLabo/bun 0..1 MS
 and coreLabo/ca 0..1 MS
 and coreLabo/che 0..1 MS
 and coreLabo/ck 0..1 MS
 and coreLabo/cl 0..1 MS
 and coreLabo/cre 0..1 MS
 and coreLabo/crp 0..1 MS
 and coreLabo/crp-class 0..1 MS
 and coreLabo/cys-c 0..1 MS
 and coreLabo/d-bil 0..1 MS
 and coreLabo/dd 0..1 MS
 and coreLabo/fbs 0..1 MS
 and coreLabo/ggt 0..1 MS
 and coreLabo/hb 0..1 MS
 and coreLabo/hba1c-ngsp 0..1 MS
 and coreLabo/hdl-c 0..1 MS
 and coreLabo/k 0..1 MS
 and coreLabo/ld 0..1 MS
 and coreLabo/ldl-c 0..1 MS
 and coreLabo/na 0..1 MS
 and coreLabo/nt-probnp 0..1 MS
 and coreLabo/plt 0..1 MS
 and coreLabo/pt-act 0..1 MS
 and coreLabo/pt-inr 0..1 MS
 and coreLabo/pt-ratio 0..1 MS
 and coreLabo/pt-sec 0..1 MS
 and coreLabo/rbc 0..1 MS
 and coreLabo/rh-bld 0..1 MS
 and coreLabo/t-bil 0..1 MS
 and coreLabo/t-cho 0..1 MS
 and coreLabo/tg 0..1 MS
 and coreLabo/tp 0..1 MS
 and coreLabo/u-ac 0..1 MS
 and coreLabo/u-bld 0..1 MS
 and coreLabo/u-glu 0..1 MS
 and coreLabo/u-pc 0..1 MS
 and coreLabo/u-tp 0..1 MS
 and coreLabo/ua 0..1 MS
 and coreLabo/wbc 0..1 MS
 and jlac10LaboCode 0..1 MS // jlac10LaboCode　unCoded　coreLaboSet　のいずれかひとつは必須
 and unCoded 0..1 MS

//ローカルコード
* code.coding[localLaboCode].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS" (exactly)

// 一般JLAC10コード
* code.coding[jlac10LaboCode].system = "urn:oid:1.2.392.200119.4.504" (exactly)
* code.coding[jlac10LaboCode] from $JP_ObservationLabResultCode_VS (required)

// 未標準化コード
* code.coding[unCoded].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS" (exactly)
* code.coding[unCoded].code = #99999999999999999 (exactly)
* code.coding[unCoded].display = "未標準化コード項目(JLAC)" (exactly)

// 基本検査項目セット　48項目
* code.coding[coreLabo/abo-bld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/abo-bld].display = "ABO-BLD" (exactly)	
* code.coding[coreLabo/abo-bld].code from $JP_CLINS_ValueSet_CoreLabo_abo_bld_VS (required)

* code.coding[coreLabo/alb].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/alb].display = "ALB" (exactly)	
* code.coding[coreLabo/alb].code from $JP_CLINS_ValueSet_CoreLabo_alb_VS (required)

* code.coding[coreLabo/alp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/alp].display = "ALP" (exactly)	
* code.coding[coreLabo/alp].code from $JP_CLINS_ValueSet_CoreLabo_alp_VS (required)

* code.coding[coreLabo/alt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/alt].display = "ALT" (exactly)	
* code.coding[coreLabo/alt].code from $JP_CLINS_ValueSet_CoreLabo_alt_VS (required)

* code.coding[coreLabo/amy].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/amy].display = "AMY" (exactly)	
* code.coding[coreLabo/amy].code from $JP_CLINS_ValueSet_CoreLabo_amy_VS (required)

* code.coding[coreLabo/aptt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/aptt].display = "APTT" (exactly)	
* code.coding[coreLabo/aptt].code from $JP_CLINS_ValueSet_CoreLabo_aptt_VS (required)

* code.coding[coreLabo/ast].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ast].display = "AST" (exactly)	
* code.coding[coreLabo/ast].code from $JP_CLINS_ValueSet_CoreLabo_ast_VS (required)

* code.coding[coreLabo/bnp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/bnp].display = "BNP" (exactly)	
* code.coding[coreLabo/bnp].code from $JP_CLINS_ValueSet_CoreLabo_bnp_VS (required)

* code.coding[coreLabo/bs].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/bs].display = "BS" (exactly)	
* code.coding[coreLabo/bs].code from $JP_CLINS_ValueSet_CoreLabo_bs_VS (required)

* code.coding[coreLabo/bun].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/bun].display = "BUN" (exactly)	
* code.coding[coreLabo/bun].code from $JP_CLINS_ValueSet_CoreLabo_bun_VS (required)

* code.coding[coreLabo/ca].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ca].display = "Ca" (exactly)	
* code.coding[coreLabo/ca].code from $JP_CLINS_ValueSet_CoreLabo_ca_VS (required)

* code.coding[coreLabo/che].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/che].display = "ChE" (exactly)	
* code.coding[coreLabo/che].code from $JP_CLINS_ValueSet_CoreLabo_che_VS (required)

* code.coding[coreLabo/ck].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ck].display = "CK" (exactly)	
* code.coding[coreLabo/ck].code from $JP_CLINS_ValueSet_CoreLabo_ck_VS (required)

* code.coding[coreLabo/cl].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/cl].display = "Cl" (exactly)	
* code.coding[coreLabo/cl].code from $JP_CLINS_ValueSet_CoreLabo_cl_VS (required)

* code.coding[coreLabo/cre].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/cre].display = "Cre" (exactly)	
* code.coding[coreLabo/cre].code from $JP_CLINS_ValueSet_CoreLabo_cre_VS (required)

* code.coding[coreLabo/crp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/crp].display = "CRP" (exactly)	
* code.coding[coreLabo/crp].code from $JP_CLINS_ValueSet_CoreLabo_crp_VS (required)

* code.coding[coreLabo/crp-class].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/crp-class].display = "CRP-class" (exactly)	
* code.coding[coreLabo/crp-class].code from $JP_CLINS_ValueSet_CoreLabo_crp_class_VS (required)

* code.coding[coreLabo/cys-c].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/cys-c].display = "Cys-C" (exactly)	
* code.coding[coreLabo/cys-c].code from $JP_CLINS_ValueSet_CoreLabo_cys_c_VS (required)

* code.coding[coreLabo/d-bil].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/d-bil].display = "D-Bil" (exactly)	
* code.coding[coreLabo/d-bil].code from $JP_CLINS_ValueSet_CoreLabo_d_bil_VS (required)

* code.coding[coreLabo/dd].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/dd].display = "DD" (exactly)	
* code.coding[coreLabo/dd].code from $JP_CLINS_ValueSet_CoreLabo_dd_VS (required)

* code.coding[coreLabo/fbs].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/fbs].display = "FBS" (exactly)	
* code.coding[coreLabo/fbs].code from $JP_CLINS_ValueSet_CoreLabo_fbs_VS (required)

* code.coding[coreLabo/ggt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ggt].display = "GGT" (exactly)	
* code.coding[coreLabo/ggt].code from $JP_CLINS_ValueSet_CoreLabo_ggt_VS (required)

* code.coding[coreLabo/hb].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/hb].display = "Hb" (exactly)	
* code.coding[coreLabo/hb].code from $JP_CLINS_ValueSet_CoreLabo_hb_VS (required)

* code.coding[coreLabo/hba1c-ngsp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/hba1c-ngsp].display = "HbA1c-NGSP" (exactly)	
* code.coding[coreLabo/hba1c-ngsp].code from $JP_CLINS_ValueSet_CoreLabo_hba1c_ngsp_VS (required)

* code.coding[coreLabo/hdl-c].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/hdl-c].display = "HDL-C" (exactly)	
* code.coding[coreLabo/hdl-c].code from $JP_CLINS_ValueSet_CoreLabo_hdl_c_VS (required)

* code.coding[coreLabo/k].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/k].display = "K" (exactly)	
* code.coding[coreLabo/k].code from $JP_CLINS_ValueSet_CoreLabo_k_VS (required)

* code.coding[coreLabo/ld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ld].display = "LD" (exactly)	
* code.coding[coreLabo/ld].code from $JP_CLINS_ValueSet_CoreLabo_ld_VS (required)

* code.coding[coreLabo/ldl-c].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ldl-c].display = "LDL-C" (exactly)	
* code.coding[coreLabo/ldl-c].code from $JP_CLINS_ValueSet_CoreLabo_ldl_c_VS (required)

* code.coding[coreLabo/na].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/na].display = "Na" (exactly)	
* code.coding[coreLabo/na].code from $JP_CLINS_ValueSet_CoreLabo_na_VS (required)

* code.coding[coreLabo/nt-probnp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/nt-probnp].display = "NT-proBNP" (exactly)	
* code.coding[coreLabo/nt-probnp].code from $JP_CLINS_ValueSet_CoreLabo_nt_probnp_VS (required)

* code.coding[coreLabo/plt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/plt].display = "PLT" (exactly)	
* code.coding[coreLabo/plt].code from $JP_CLINS_ValueSet_CoreLabo_plt_VS (required)

* code.coding[coreLabo/pt-act].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-act].display = "PT-act" (exactly)	
* code.coding[coreLabo/pt-act].code from $JP_CLINS_ValueSet_CoreLabo_pt_act_VS (required)

* code.coding[coreLabo/pt-inr].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-inr].display = "PT-INR" (exactly)	
* code.coding[coreLabo/pt-inr].code from $JP_CLINS_ValueSet_CoreLabo_pt_inr_VS (required)

* code.coding[coreLabo/pt-ratio].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-ratio].display = "PT-ratio" (exactly)	
* code.coding[coreLabo/pt-ratio].code from $JP_CLINS_ValueSet_CoreLabo_pt_ratio_VS (required)

* code.coding[coreLabo/pt-sec].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-sec].display = "PT-sec" (exactly)	
* code.coding[coreLabo/pt-sec].code from $JP_CLINS_ValueSet_CoreLabo_pt_sec_VS (required)

* code.coding[coreLabo/rbc].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/rbc].display = "RBC" (exactly)	
* code.coding[coreLabo/rbc].code from $JP_CLINS_ValueSet_CoreLabo_rbc_VS (required)

* code.coding[coreLabo/rh-bld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/rh-bld].display = "Rh-BLD" (exactly)	
* code.coding[coreLabo/rh-bld].code from $JP_CLINS_ValueSet_CoreLabo_rh_bld_VS (required)

* code.coding[coreLabo/t-bil].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/t-bil].display = "T-Bil" (exactly)	
* code.coding[coreLabo/t-bil].code from $JP_CLINS_ValueSet_CoreLabo_t_bil_VS (required)

* code.coding[coreLabo/t-cho].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/t-cho].display = "T-CHO" (exactly)	
* code.coding[coreLabo/t-cho].code from $JP_CLINS_ValueSet_CoreLabo_t_cho_VS (required)

* code.coding[coreLabo/tg].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/tg].display = "TG" (exactly)	
* code.coding[coreLabo/tg].code from $JP_CLINS_ValueSet_CoreLabo_tg_VS (required)

* code.coding[coreLabo/tp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/tp].display = "TP" (exactly)	
* code.coding[coreLabo/tp].code from $JP_CLINS_ValueSet_CoreLabo_tp_VS (required)

* code.coding[coreLabo/u-ac].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-ac].display = "U-ac" (exactly)	
* code.coding[coreLabo/u-ac].code from $JP_CLINS_ValueSet_CoreLabo_u_ac_VS (required)

* code.coding[coreLabo/u-bld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-bld].display = "U-Bld" (exactly)	
* code.coding[coreLabo/u-bld].code from $JP_CLINS_ValueSet_CoreLabo_u_bld_VS (required)

* code.coding[coreLabo/u-glu].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-glu].display = "U-Glu" (exactly)	
* code.coding[coreLabo/u-glu].code from $JP_CLINS_ValueSet_CoreLabo_u_glu_VS (required)

* code.coding[coreLabo/u-pc].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-pc].display = "U-pc" (exactly)	
* code.coding[coreLabo/u-pc].code from $JP_CLINS_ValueSet_CoreLabo_u_pc_VS (required)

* code.coding[coreLabo/u-tp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-tp].display = "U-TP" (exactly)	
* code.coding[coreLabo/u-tp].code from $JP_CLINS_ValueSet_CoreLabo_u_tp_VS (required)

* code.coding[coreLabo/ua].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ua].display = "UA" (exactly)	
* code.coding[coreLabo/ua].code from $JP_CLINS_ValueSet_CoreLabo_ua_VS (required)

* code.coding[coreLabo/wbc].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/wbc].display = "WBC" (exactly)	
* code.coding[coreLabo/wbc].code from $JP_CLINS_ValueSet_CoreLabo_wbc_VS (required)


// OUL^R22.OBX[*]-3[*]-1    コード　
// OUL^R22.OBX[*]-3[*]-1のコードが &TCM　で終了する場合には、&TCMの直前までの文字列をコメントコードとみなして、同じ

// OUL^R22.OBX[*]-3[*]-2
* code.coding.display ^short = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^definition = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^comment = "標準コードに対応する標準名称文字列が規定されていないことも多いため、この要素は省略できる。値が存在する場合に受信側がこの文字列をどのように使用するかについては特に定めない。"

* code.text 1..1 MS   
* code.text ^definition = "項目名。報告書などに記載する場合に使用する表示名。"
* code.text ^comment = "【JP Core仕様】このプロファイルでは、表示名として必須とする。\r\n\r\n多くの場合、coding.display と同一になるが、coding.display に異なる複数の表現が格納される場合を想定し、code間で共通の表現として必須とする。受信側はこの文字列を項目表示文字列として使用できる。"

// OUL^R22.PID
* subject 1..1   MS
* subject only Reference(JP_Patient)
* subject ^short = "検体検査の対象となる患者。"
* subject ^definition = "対象となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（、被保険者個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述など。"
* subject ^comment = "３文書６情報の作成では、JP_Patientタイプのリソース（Patient.idの値が\"#patient203987\"と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのContainedリソースのid値(Patient.id)を{\"reference\" : \"#patient203987\" }のように記述する"

// OUL^R22.PV1
* encounter 0..1 MS
* encounter only  Reference(JP_Encounter)
* encounter ^short = "この検査が行われた受診情報（入外区分など）"
* encounter ^definition = "この検査が行われた受診情報（入外区分など）を表すEncounterリソース（Containedリソース）への参照"
* encounter ^comment = "Containedリソースに含まれるEncounterリソースをリソース内で参照する。【JP Core仕様】入院外来の区別や所在場所、担当診療科の情報、外来での検査か入院での検査かの区別に使用する。必須ではない。"

// OUL^R22.OBX[*]-14 検査日時
* effective[x] 1..    MS   // MS 追加
* effective[x] only dateTime // or Period or Timing 
* effectiveDateTime ^short = "検体採取日時"
* effectiveDateTime ^definition = "検体採取日時。検体採取日時が不明な場合には、検査実施日時、検体受付日時の場合もある。結果報告日時はissued要素を使用する。"
* effectiveDateTime ^comment = "dateTime型に限定する。dateTime側は、1905-08-23, 2015-02-07T13:28:17+09:00 "

* issued MS
* issued ^short = "検査結果がシステムに格納された日時、システム的な結果報告（登録）日時"
* issued ^definition = "検査結果がシステムに格納された日時、システム的な結果報告（登録）日時。"
* issued ^comment = "instance型であるため、2015-02-07T13:28:17+09:00 のように時刻までの精度が必要である。"

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
* valueQuantity ^comment = ""

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
* specimen only Reference(JP_Specimen)
* specimen ^short = "この検査に使用された検体（標本）。"
* specimen ^definition = "この検査に使用された検体（標本）を表すSpecimenリソース（Containedリソース）への参照。検体材料に関する情報を記述したSpecimenリソースをContainedリソースとして本リソースに埋め込んで、それを参照すること。\r\n３文書６情報の作成では、JP_Specimenタイプのリソース（Specimen.idの値が\"#specimen203987\"と仮定）が本リソースのContainedリソースとして埋め込み記述されることが必須であるため、そのcontainedリソースのid値(Specimen.id)を記述する。(例 2\r\n{\r\n  \"reference\":  \"#specimen203987\"\r\n})\r\nとなる。"

* specimen ^comment = "Containedリソースに含まれるSpecimenリソースをリソース内で参照する。必須。"

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



