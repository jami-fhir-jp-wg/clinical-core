// ==================================================
//   Profile 定義 FHIR臨床コア情報 Clinical-coreセット
//   検体検査結果／感染症検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
// ==================================================
Profile: JP_Observation_LabResult_eCS
Parent: JP_Observation_LabResult
Id: JP-Observation-LabResult-eCS
Title:  "Core6 : JP_Observation_LabResult_eCS"
Description: "診療主要6情報サマリー用　Observationリソース（検体検査結果／感染症検体検査結果）プロファイル"
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
    and organization 0..
    and department 0..
    and childObsLaboResult 0..

* contained[patient] only  JP_Patient
* contained[specimen] only  JP_Specimen
* contained[order] only  JP_ServiceRequest
* contained[organization] only  JP_Organization
* contained[department] only  JP_Organization_eCS_department
* contained[childObsLaboResult] only  JP_Observation_LabResult

* meta.lastUpdated 0.. MS
* meta.lastUpdated ^short = "最終更新日"
* meta.lastUpdated ^definition = "この患者情報の内容がサーバ上で最後に格納または更新された日時、またはこのFHIRリソースが生成された日時"

* basedOn 0..1   MS
* basedOn only Reference(JP_ServiceRequest)
* basedOn ^definition = "このプロファイルでは、検体検査オーダに関する情報。"
* basedOn ^comment = "元のオーダID情報や依頼者情報はここで使用する。"

// OUL^R22.OBX[*]-11 結果状態
* status ^definition = "検査結果値の状態。"
* status ^definition = "検査結果値の状態。"
* status ^comment = "preliminary:暫定報告（このあとで本報告が予定される場合）、final:確定報告（このあと修正されることはもちろん事情によってはありうるが、この報告だk泣きでは確定結果として報告されている、corrected:final報告を修正した（新しい結果が有効である）、cancelled: この結果や検査実施が取り消されたので報告は取り消された（報告済みの以前の結果は無効である、間違っていたかもしれない）。これらのステータスコード以外は意味的に紛らわしいので使わない。【SS-MIX2】OUL^R22.OBX[*]-11 結果状態"
* status 1..1 MS

// OUL^R22
* category 1.. MS       // MS 追加

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
* code.coding ^binding.description = "MEDIS 臨床検査マスター（JLAC10 17桁）、または未コード化コード(17桁のall 9)"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    jlac10Coded 0..1 MS
and jlac10wUnmethod 0..1 MS
and jlac10Uncoded 0..1 MS
and localCoded 0..1 MS
and localUncoded 0..1 MS

* code.coding ^comment = "JLAC10標準コード、ローカルコードの2つを設定するものとし、どちらも必須とする。さらにJLAC10以外にJLAC11などの複数の標準コードも設定できるよう、上限は設けない。\r\n\r\n標準コード、ローカルコードの順不同。\r\nSS-MIX2だとCWE.1 ～CWE.3に標準コード、CWE.4～CWE.6にローカルコード、など（順不同）。"
* code.coding.system 1..1 MS    // MS 追加 // OUL^R22.OBX[*]-3[*]-3    コードシステム
* code.coding.system ^definition = "コード体系。"
* code.coding.system ^comment = "JLAC10フル17桁の場合にはurn:oid:1.2.392.200119.4.504（MEDIS 臨床検査マスター（JLAC10 17桁））、JLAC10の測定法コード3桁を999(不明)としたコード体系の使用も許容され、http://jpfhir.jp/fhir/eClinicalSummary/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS を使用する。どちらの標準コードも不要できない場合には、未コード化コード(17桁のall 9)を使用することとし、その場合のsystem値はhttp://jpfhir.jp/fhir/eClinicalSummary/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CSを使用する。【SS-MIX2】OUL^R22.OBX[*]-3[*]-3"
* code.coding[jlac10Coded].system =  $JP_ObservationLabResultCode_CS (exactly)    // MEDIS JLAC10
* code.coding[jlac10Coded].code from $JP_ObservationLabResultCode_VS     // MEDIS JLAC10　

* code.coding[jlac10wUnmethod].system =  $JP_CLINS_ObsLabResult_JLAC10Unmethod_CS (exactly)   // MEDIS JLAC10の測定法部分を998にしたコード
* code.coding[jlac10wUnmethod].code from $JP_CLINS_ObsLabResult_JLAC10Unmethod_VS  // MEDIS JLAC10　

* code.coding[jlac10Uncoded].system = $JP_CLINS_ObsLabResultUncoded_CS (exactly) // 17桁未コード化コード
* code.coding[jlac10Uncoded].code = #99999999999999999  (exactly)
* code.coding[localCoded].system = $JP_ObservationLabResultLocal_CS (exactly)    // その施設のローカルコード

* code.coding[localUncoded].system = $JP_ObservationLabResultLocalUncoded_CS (exactly)    // その施設のローカルコード
* code.coding[localUncoded].code = #LUNCODED    // ローカルコード体系でのコード化ができない

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
* subject ^definition = "対象となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在する場合には、そのリソースの識別URIを参照する。Containedリソースが存在する場合には、それを参照する記述（、保険個人識別子が記述される外部リソースが蓄積されていてそれを参照する場合の記述など。"
* subject ^comment = "電子カルテ共有サービスにおける6情報のひとつとして本リソースが記述される場合は、JP_Patientタイプのリソース（Patient.idの値が\"#patient203987\"と仮定）が本リソースのContainedリソースとして埋め込み記述が必須であるため、そのContainedリソースのid値(Patient.id)を{\"reference\" : \"#patient203987\" }のように記述する"

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
* value[x] ^comment = "以下のデータ型はSS-MIX2では未使用のため、未使用とした。今後の議論で使用の必要性が出れば復活させる。\r\n\r\nvalueBoolean\r\n\r\nvalueInteger　：検査結果値を整数値（Integer）で定義したい場合に指定する。ただし、valueQuantityで単位付き数値を示すので、通常は使わない。　SS-MIX2／HL7 V2.5→ OBX-2＝「NW」の時の OBX-5(結果値)\r\n\r\nvalueRange\r\n\r\nvalueRatio\r\n\r\nvalueSampledData\r\n\r\nvalueTime　：検査結果値が「時間」の場合、その時間を指定する。　SS-MIX2／HL7 V2.5→ OBX-2＝「TM」の時の OBX-5(結果値)\r\n\r\nvalueDateTime　：検査結果値が「日時」の場合、その日時を指定する。　SS-MIX2／HL7 V2.5→ OBX-2＝「DT」の時の OBX-5(結果値)\r\n\r\nvaluePeriod"

// if OUL^R22.OBX[*]-2 == "NM":
// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
* valueQuantity ^short = "検査結果が「数値」の場合、値、単位を設定する。　SS-MIX2／HL7 V2.5→ OBX-2＝「NM」の時の OBX-5(結果値)、OBX-6(単位)【詳細参照】"
* valueQuantity ^comment = "valueQuantity.value　：結果値（数値）を定義。　SS-MIX2／HL7 V2.5：OBX-5(結果値)\r\n\r\nvalueQuantity.comparator　：QuantityComparator Value setから設定。　SS-MIX2／HL7 V2.5→ 検体検査結果メッセージでは未使用となっているデータ型だが、SN型のSN.1(比較演算子)が該当する。検査値の「0未満」の場合の「未満」などに相当するコードを設定。\r\n\r\nvalueQuantity.unit　：.systemで示す単位のValue setの文字列を指定。　SS-MIX2／HL7 V2.5→ OBX-6(単位) CWE.2 テキスト\r\n\r\nvalueQuantity.system　：単位のValue set名を指定。　SS-MIX2／HL7 V2.5→ OBX-6(単位) CWE.3 コード体系 HL7では「ISO+」だが、ローカルコード99zzzのHL7標準の「ISO+」が示すOID、ローカルコードの場合はOIDを別途取得必要\r\n\r\nvalueQuantity.code　：.systemで示す単位のValue setのコードを指定。　SS-MIX2／HL7 V2.5→ OBX-6(単位) CWE.1 識別子"

// if OUL^R22.OBX[*]-2 == "CWE":
// OUL^R22.OBX[*]-5  結果
* valueCodeableConcept ^short = "検査結果が「コード値」の場合、コード、テキスト、コードのValue setを定義する。　SS-MIX2／HL7 V2.5→ OBX-2＝「CWE」の時の OBX-5(結果値)【詳細参照】"
* valueCodeableConcept ^comment = "valueCodeableConcept.coding　：ローカルコードと国際標準コードなど複数指定できる。　SS-MIX2／HL7 V2.5→ CWEは正規コード＋代替コードの2種類登録可能。\r\n\r\nvalueCodeableConcept.coding.system　：対象のValue set名を指定。　SS-MIX2／HL7 V2.5→ CWE.3 or 6 コード体系。対象コードの OIDを設定\r\n\r\nvalueCodeableConcept.coding.version　：対象のValue setのバージョンを指定。　SS-MIX2／HL7 V2.5→ CWE.7 コード体系バージョン ID valueCodeableConcept.coding.code　：対象のValue setのコードを指定。　SS-MIX2／HL7 V2.5→ CWE.1 or 4 識別子。対象コードシステムのコード\r\n\r\nvalueCodeableConcept.coding.display　：対象のValue setのテキストを指定。　SS-MIX2／HL7 V2.5→ CWE.2 or 5 テキスト。対象コードの名称\r\n\r\nvalueCodeableConcept.coding.userselected　：未使用。\r\n\r\nvalueCodeableConcept.text　：コードが示す意味を指定する。通常は.coding.displayの値を指定するが、複数ある場合は適宜編集すること。　SS-MIX2／HL7 V2.5→ CWE.2 テキスト。coding.display と同じ。"

// if OUL^R22.OBX[*]-2 == "ST":
// OUL^R22.OBX[*]-5  結果
* valueString ^short = "検査結果値が「文字列」の場合、その文字列を指定する。SS-MIX2／HL7 V2.5→ OBX-2＝「ST」の時の OBX-5(結果値)"

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
* specimen ^definition = "この検査に使用された検体（標本）を表すSpecimenリソース（Containedリソース）への参照"
* specimen ^comment = "Containedリソースに含まれるSpecimenリソースをリソース内で参照する。必須。"

// OUL^R22.OBX[*]-7
* referenceRange MS
* referenceRange ^short = "結果値を解釈するためのの推奨範囲。基準値範囲。"
* referenceRange ^definition = "推奨範囲として結果値を解釈するためのガイダンス。基準値。"
* referenceRange ^comment = "【JP Core仕様】可能な限りlow、highに構造化すべき。構造化できない場合、あるいはlow、highに該当しない場合はtextを使用。"
* referenceRange.type ^definition = "対象となる母集団のどの部分に適用するかを示すコード。正常範囲、要治療範囲、など。"
* referenceRange.appliesTo ^definition = "基準値が適用される母集団を示すコード。人種、性別など。"
* referenceRange.age ^definition = "T基準値が適用される年齢。新生児の場合、週数もありうる。"
* referenceRange.text ^definition = "量的範囲で表せない場合などに使用する。"

* hasMember MS
* hasMember ^short = "この検査に含まれる個々の検査結果項目を示す。"
* hasMember ^definition = "この検査（パネルやバッテリ）が結果を持たない親項目（グループ項目に相当）の場合に、この検査に含まれる個々の検査結果への参照を示す。"
* hasMember ^comment = "この検査に含まれる個々の検査結果Observationリソースを、このリソースに埋め込むのではなく、別の検査結果Observationリソースとして作成し、そのidentifierを論理参照する方法をとること。"




