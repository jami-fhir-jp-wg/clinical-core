// ==================================================
//   Profile 定義 診療情報・サマリー汎用
//   このプロファイルは、電子カルテ情報共有サービスに２文書（診療情報提供書、退院時サマリー）に含める処方情報にも用いられる。
//   処方オーダの１処方薬情報 リソースタイプ:MedicationRequest
//   親プロファイル:JP_MedicationRequest
// ==================================================
Profile: JP_MedicationRequest_eCS
Parent: JP_MedicationRequest
Id: JP-MedicationRequest-eCS
Title:  "JP_MedicationRequest_eCS"
Description: "診療情報・サマリー汎用 MedicationRequestリソース（処方オーダの１処方薬情報）プロファイル"
/* 2025.5.4
* dispenseRequest.quantity.unit 1..1 MS // 2025.5.4　追加
* dispenseRequest.quantity.system ^definition = "医薬品単位略号を識別するURL。http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Codeを使用する。\r\n（厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用）。拡張可能性あり。"
* dispenseRequest.quantity.system 1..1 MS // 2025.5.4  追加
* dispenseRequest.quantity.code 1..1 MS // 2025.5.4  1..1 を追加
* dispenseRequest.expectedSupplyDuration のvalue, unit, system, code の説明と1..1を追加。
*/
* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension contains JP_eCS_Department named eCS_Department ..* MS

* ^url = $JP_MedicationRequest_eCS


* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja



* . ^short = "診療情報として処方オーダの１処方薬情報の格納に使用する"
* . ^definition = "診療情報として処方オーダの１処方薬情報の格納に使用する"
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに２文書（診療情報提供書、退院時サマリー）に含める処方情報にも用いられる。"

* meta 1..1 MS
* meta.versionId ^short = "バージョン固有の識別子"
* meta.versionId ^definition = "バージョン固有の識別子"
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"

* meta.profile 1.. MS
  * insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS|x.y.z　を設定する。")

/*
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

*/



// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains 
  /* patient 1..1
    and */
    encounter 0..1
    and requester 0..1
    and order 0..1
//    and patient 0..1 MS

* contained[encounter] only  JP_Encounter_eCS
  * insert relative_short_definition("【電子カルテ情報共有サービスでは必須】処方情報を作成したときの入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounter_eCSに従うリソースの実体。JP_Encounter_eCSに従うリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounter_eCSに従うリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。電子カルテ情報サービス(このリソースが２文書に含まれるケース)では必須。"

* contained[requester] only  JP_Practitioner
  * insert relative_short_definition("処方情報を作成したときの作成医療者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "requester要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素、医療者識別情報だけが含まれればよい。電子カルテ情報サービス(このリソースが２文書に含まれるケース)では必須。"

* contained[order] only  JP_ServiceRequest
  * insert relative_short_definition("処方オーダ識別番号情報などをコンパクトに格納したServiceRequestリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_ServiceRequestリソースの実体。JP_ServiceRequestリソースにおける必要最小限の要素だけが含まれればよい。"


* extension[eCS_InstitutionNumber] 0..1 MS
  * insert relative_short_definition("【電子カルテ情報共有サービスでは必須】本情報を作成発行した医療機関の識別番号を記述するために使用する拡張「eCS_InstitutionNumber」。
本情報は、ServiceRequestの要素として記述することも可能であるが、その場合もこの拡張で記述することとする。")
  * ^comment = "電子カルテ情報サービス(このリソースが２文書に含まれるケース)では、この拡張による記述は必須。医療機関１０桁番号を示すsystem値は\"http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no\"を使用する。"
  * url 1..1 

  * valueIdentifier 1..1 MS
  * valueIdentifier.system 1..1
  * valueIdentifier.system = $JP_InstitutionNumber (exactly)
  * valueIdentifier.value 1..1 MS  
* insert eCS_InstitutionNumber_value

* extension[eCS_Department] 0..1 MS
  * insert relative_short_definition("【電子カルテ情報共有サービスでは必須】本情報を作成発行した診療科または作成発行者の診療科情報を記述するために使用する拡張「eCS_Department」")
  * ^comment = "電子カルテ情報サービス(このリソースが２文書に含まれるケース)では、この拡張による記述は必須。コード化する場合には、JAMI(SS-MIX2) 診療科コード表のsystem値\"http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment\"を使用する。診療科を記述する場合には、そのコード化の有無に関わらずtext要素による記述は必須。"
  * url 1..1 

  * valueCodeableConcept 1..1
  * valueCodeableConcept.coding 0..*
  * valueCodeableConcept.coding.system 0..1
  * valueCodeableConcept.coding.code 0..1
  * valueCodeableConcept.coding.display 0..1 
  * valueCodeableConcept from $JP_Department_SsMix_VS (preferred)
  * valueCodeableConcept.text 1..1
  
* identifier 3.. MS // JP_MedicationRequestでは2..*が設定されているのを3に変更 
  * insert relative_short_definition("このリソース情報の識別ID、および必要であれば処方箋における剤グループ番号、剤グループ内の順序番号などを格納する。")
  * ^comment = "処方オーダに対するID（リソース一意識別ID）の仕様は、「診療情報・サマリー汎用リソース一意識別ID仕様」を参照のこと。"
* identifier[rpNumber] MS
* identifier[rpNumber] obeys rpNumber-min1-max999

* identifier[orderInRp] MS
* identifier[orderInRp] obeys orderInRp-min1-max99

* identifier[requestIdentifierCommon] 0..1 //  診療情報提供書などではリソース情報の識別IDは出力不要であるため。
  * ^short = "全国で⼀意となる処方箋ID。"
  * ^definition = "全国で⼀意となる処方箋ID。system='urn:oid:1.2.392.100495.20.3.11'"
  * ^comment = "全国で⼀意となる処方箋IDは、全国統一的な一意の処方箋番号システムが存在する場合に使用可能なIDであるが、今のところ存在しないため、当面使用することはない。"
* identifier[requestIdentifier] 1..1 MS
  * ^short = "処方箋を作成・発行した医療機関において、オーダシステム等でこの特定の処方薬剤のオーダ情報を一意に識別できる処方オーダID（リソース一意識別IDに相当し、同一処方オーダ内の複数薬剤ごとに異なるID）"
  * ^definition = "処方オーダに対するID（リソース一意識別IDに相当する）。system='http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier'"
  * ^comment = "このオーダIDがあれば、処方箋を作成・発行した医療機関において、オーダシステムでこの特定の処方薬剤のオーダー情報を検索することができるキー情報に相当する。処方箋オーダの番号と、同一処方箋オーダ内の処方薬剤を特定できる順序番号などとの組み合わせでIDを作成することが考えられる。詳細は[診療情報・サマリー汎用リソース一意識別ID仕様](core6spec.html#%EF%BC%95%E6%83%85%E5%A0%B1%E3%81%AE%E5%90%84%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E3%81%AEidentifier%E8%A6%81%E7%B4%A0%E3%81%AB%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B%E8%A8%BA%E7%99%82%E6%83%85%E5%A0%B1%E3%82%B5%E3%83%9E%E3%83%AA%E3%83%BC%E6%B1%8E%E7%94%A8%E3%83%AA%E3%82%BD%E3%83%BC%E3%82%B9%E4%B8%80%E6%84%8F%E8%AD%98%E5%88%A5id%E4%BB%95%E6%A7%98)を参照のこと。診療情報提供書や退院時サマリーなどで単に処方内容だけを記述するだけの場合や、オーダに基づかない処方内容の場合には、適当なダミー番号でも構わないが、設定は必須。"
* identifier[requestIdentifier].value 1..1 MS // 
  * insert relative_short_definition("処方オーダに対するID（リソース一意識別ID）の文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。")

* status = #completed
* intent = #order
* category 0..* 
// * category 薬剤使用区分（外来、院内、院外などの区分）上位Profileで定義済み
* obeys warning-anyOf-YJ-medicationCode
* category.coding 1..
* category.coding.system 1..1 
  * ^short = "薬剤使用区分のコード体系のコード"
  * ^definition = "JP Core Medication Oral/External Category ValueSetとして、MERIT9コード：http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS、またはJHSP0007コード　http://jpfhir.jp/fhir/core/CodeSystem/JHSP0007　のいずれかを使用する。"
* category.coding.code 1..1 MS 
  * ^short = "薬剤使用区分のコード"
  * ^definition = "薬剤使用区分のコード。MERIT9コードから、OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）。JHSP0007コードから、BDP:持参薬処方　などのコード部分（"OHP"など）を使用することができる。"
* category.coding.display 0..1 MS 
  * ^short = "薬剤使用区分のコード体系のコード"
  * ^definition = "コードに対応する文字列部分。（OHI:院内処方、OHO:院外処方、IHP:入院処方、DCG:退院時処方、ORD:定期処方、XTR:臨時処方、BDP:持参薬処方　の\"院内処方\"の文字列など）"

* medication[x] ^short = "医薬品コードと医薬品名称。ひとつの 必須のtext 要素と、複数の coding 要素を記述できる。"
* medication[x] ^definition = "本仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず text 要素に格納した上で、coding要素を繰り返すことでHOT9やYJコードなど複数のコード体系で医薬品コードを並記することが可能。coding要素を繰り返すことで複数のコード体系で医薬品コード並記することが可能。\r\n本Profile仕様では、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。使用できるコード体系は電子カルテ情報共有サービスに利用される場合には、個別医薬品コード（通称YJコード）を必須とする。それ以外のコード体系も追加で記述して構わない。"
// YJ, 一般処方用コードを必須、または未コードとするチェックはInvariant R3010 で行う。
* medication[x] MS
* medication[x].coding 1..* MS
* medication[x].coding ^slicing.discriminator.type = #value
* medication[x].coding ^slicing.discriminator.path = "system"
* medication[x].coding ^slicing.rules = #open
* medication[x].coding contains
//    codingHOT7 0..1 MS and
//    codingHOT9 0..1 MS and
    codingYJ 0..1 MS and
//    codingGS1 0..1 MS and
    codingGeneralName 0..1 MS and
//    codingKYS 0..1 MS and // 規格別薬剤成分コード
    nocoded 0..1 MS

* medication[x].coding[nocoded].system 1.. MS
* medication[x].coding[nocoded].system = $JP_eCS_MedicationCodeNocoded_CS (exactly)
  * insert relative_short_definition("標準医薬品コードがない場合のコード割り当てシステム")
* medication[x].coding[nocoded].code 1.. MS
* medication[x].coding[nocoded].code from $JP_eCS_MedicationCodeNocoded_VS
  * insert relative_short_definition("標準コードが存在しない医薬品を意味するコード　NOCODED")
* medication[x].coding[nocoded].display 1.. MS
  * insert relative_short_definition("標準コードなし")
/*
* medication[x].coding[codingHOT9].system 1.. MS
* medication[x].coding[codingHOT9].system = $JP_MedicationCodeHOT9_CS (exactly)
  * insert relative_short_definition("HOT9コードの識別ID")
* medication[x].coding[codingHOT9].code 1.. MS
* medication[x].coding[codingHOT9].code from $JP_MedicationCodeHOT9_VS
  * insert relative_short_definition("HOT9医薬品コード")
* medication[x].coding[codingHOT9].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].coding[codingHOT7].system 1.. MS
* medication[x].coding[codingHOT7].system = $JP_MedicationCodeHOT7_CS (exactly)
  * insert relative_short_definition("HOT7コードの識別ID")
* medication[x].coding[codingHOT7].code 1.. MS
* medication[x].coding[codingHOT7].code from $JP_MedicationCodeHOT7_VS
  * insert relative_short_definition("HOT7医薬品コード\(HOT9の末尾２桁である販社コードが不明の場合に限る\)")
* medication[x].coding[codingHOT7].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")
*/
/*
* medication[x].coding[codingGS1].system = "urn:oid:2.51.1.1" (exactly)
  * insert relative_short_definition("GS1標準の識別コードを示すsystem値")
* medication[x].coding[codingGS1].system MS
* medication[x].coding[codingGS1].code ^definition = "GS1標準の識別コード。医薬品コードおよび医療材料等コードとして、調剤包装単位（最少包装単位、個別包装単位）14桁のフォーマットで使用する。"
* medication[x].coding[codingGS1].code MS
* medication[x].coding[codingGS1].code  from $JP_MedicationCodeGS1_VS
* medication[x].coding[codingGS1].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")
*/

* medication[x].coding[codingYJ].system 1.. MS
* medication[x].coding[codingYJ].system = $JP_MedicationCodeYJ_CS (exactly)
  * insert relative_short_definition("YJコードを識別するsystem値")
* medication[x].coding[codingYJ].code 1.. MS
* medication[x].coding[codingYJ].code from $JP_MedicationCodeYJ_VS
* medication[x].coding[codingYJ].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")

* medication[x].coding[codingGeneralName].system = $JP_MedicationCodeCommon_CS (exactly) // urn:oid:1.2.392.100495.20.1.81
  * insert relative_short_definition("厚生労働省保険局が定める一般処方名マスターコードを識別するsystem値")
* medication[x].coding[codingGeneralName].system MS
* medication[x].coding[codingGeneralName].code ^definition = "厚生労働省保険局が定める一般処方名マスターコード"
* medication[x].coding[codingGeneralName].code 1.. MS
* medication[x].coding[codingGeneralName].code from $JP_MedicationCodeCommon_VS
* medication[x].coding[codingGeneralName].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")
/*
* medication[x].coding[codingKYS].system = $JP_MedicationCodeKYS_CS // 規格別薬剤成分コード
  * insert relative_short_definition("電子カルテ情報共有サービス用　規格別薬剤成分コードを識別するsystem値")
* medication[x].coding[codingKYS].system MS
* medication[x].coding[codingKYS].code ^definition = "電子カルテ情報共有サービス用　規格別薬剤成分コード"
* medication[x].coding[codingKYS].code 1.. MS
* medication[x].coding[codingKYS].code from $JP_MedicationCodeKYS_VS //規格別薬剤成分コード
* medication[x].coding[codingKYS].display 1.. MS
  * insert relative_short_definition("医薬品名称。この名称は使用するコード表において選択したコードに対応する文字列とする。")
*/
* medication[x].text 1..1 MS
  * insert relative_short_definition("医薬品名称。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず設定する。")

// 患者情報
* subject 1..1   MS
* subject only  Reference(JP_Patient_eCS)
  * insert relative_short_definition("患者のFHIRリソース\(JP_Patient_eCSに従うPatientリソース\)への参照。")
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照） 」に従う。"

* encounter 0..1 MS
* encounter only  Reference(JP_Encounter_eCS)
  * insert relative_short_definition("処方を発行したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照")
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法　(1)」のいずれかを使用すること。電子カルテ情報サービス(このリソースが２文書に含まれるケース)では必須。"

* requester 0.. MS
* requester only Reference(JP_Practitioner)
* requester ^short = "処方者"
* requester ^definition = "処方者を表すPractitionerリソース（Containedリソース）への参照。電子カルテ情報サービス(このリソースが２文書に含まれるケース)では必須。"
  * ^comment = "記述方法は、実装ガイド本文の「リソースへの参照方法　(1)」のいずれかを使用すること。"

* authoredOn 1..1 MS

* basedOn 0..1   MS
* basedOn ^short = "処方オーダ情報"
* basedOn only Reference(JP_ServiceRequest)
* basedOn ^definition = "処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照処方オーダ番号等の一意識別子を含むServiceRequestリソース（Containedリソース）への参照"
* basedOn ^comment = "元のオーダID情報や処方依頼に関する情報（処方者の所属や診療科など）が記述されるContainedリソースに含まれるServiceRequest（処方オーダー情報）リソースをこのリソース内で参照する。記述方法は、実装ガイド本文の「リソースへの参照方法　(1)」のいずれかを使用すること。"

* note MS
* note ^comment = "単一の薬剤に対する調剤者に対する指示は、本要素ではなく、MedicationRequestリソースのdispenseRequest要素に対して本文書で定義した拡張「InstructionForDispense」（http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense）を使用する。\r\n患者に対する補足指示や注意や、不均等投与指示などは、 MedicationRequestリソースのdosageInstruction.additionalInstructionで記述する。\r\n本要素は、それらでは伝えられない薬剤単位の備考や指示を記述する。"

* note.text ^definition = "備考文字列。markdown 記法により記述できる。"
* note.text ^comment = "例）”4月1日から4日間服用。2週間休薬後、4月19日から4日間服用。患者に書面にて説明済み。”"
* note.text MS

* dosageInstruction 1..* MS
* dosageInstruction only JP_MedicationDosage_eCS

* dispenseRequest 0..1 MS
* dispenseRequest ^definition = "調剤情報。\r\n薬剤オーダー(MedicationRequest, Medication Prescription, Medication Orderなどとしても表現される）や薬剤オーダーとの一部としての薬剤の払い出しあるいは提供。この情報はオーダーとしてかならず伝えられるというわけではないことに注意。薬剤部門で調剤・払い出しを完了するための施設（たとえば病院）やシステムでのサポートに関する設定をしてもよい。"
* dispenseRequest.extension ^slicing.discriminator.type = #value
* dispenseRequest.extension ^slicing.discriminator.path = "url"
* dispenseRequest.extension ^slicing.rules = #open
* dispenseRequest.extension[expectedRepeatCount] MS
* dispenseRequest.quantity.value ^definition = "調剤量。精度を含めた値が暗示される。\r\n例）１日３錠で７日分の場合、この要素には21 が設定される。"
* dispenseRequest.quantity.value MS
* dispenseRequest.quantity.unit 1..1 MS // 2025.5.4　追加

* dispenseRequest.quantity.system ^definition = "医薬品単位略号を識別するURL。\"http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code\"を使用する。\r\n（厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用）。拡張可能性あり。"
* dispenseRequest.quantity.system ^comment = "医薬品単位略号はひとつのリソース記述のなかで１種類のコード体系に統一すること。"
* dispenseRequest.quantity.system 1..1 MS // 2025.5.4  追加

* dispenseRequest.quantity.code ^comment = "厚生労働省電子処方箋 CDA 記述仕様　別表２０ 医薬品単位略号　コード表を準用。拡張可能性あり。"
* dispenseRequest.quantity.code ^requirements = "どのような形式であっても医薬品単位略号はひとつのリソース記述のなかで１種類のコード体系に統一すること。"
* dispenseRequest.quantity.code 1..1 MS // 2025.5.4  1..1 を追加
// 2025.5.4  以下のvalue, unit, system, code の説明と1..1を追加。
* dispenseRequest.expectedSupplyDuration 0..1

* dispenseRequest.expectedSupplyDuration.value ^definition = "調剤日数。\r\n例）１日３錠で７日分の場合、この要素には 7が設定される。"
* dispenseRequest.expectedSupplyDuration.value 1..1 MS
* dispenseRequest.expectedSupplyDuration.comparator 0..0
* dispenseRequest.expectedSupplyDuration.unit ^definition = "調剤日数の単位。\"日\""
* dispenseRequest.expectedSupplyDuration.unit 1..1 MS
* dispenseRequest.expectedSupplyDuration.system ^definition = "UCUM単位コードを識別するURI。 	\"http://unitsofmeasure.org\""
* dispenseRequest.expectedSupplyDuration.system 1..1 MS
* dispenseRequest.expectedSupplyDuration.code ^definition = "\"日\"を表すUCUM単位コード\"d\"を設定する。"
* dispenseRequest.expectedSupplyDuration.code 1..1 MS

* dispenseRequest.performer 
  * ^comment = "当面、診療５情報・サマリー用ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。" 

* substitution 0..1
* substitution.allowedCodeableConcept 1..1
* substitution.allowedCodeableConcept.coding 1..*
* substitution.allowedCodeableConcept.coding.system 1..1
* substitution.allowedCodeableConcept.coding.code 1..1 MS
* substitution.allowedCodeableConcept.coding.display 0..1 MS
// binding http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationSubstitutionNotAllowedReason_VS はJP_Coreで記述済み



