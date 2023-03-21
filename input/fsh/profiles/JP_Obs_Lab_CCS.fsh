
// ==================================================
//   Profile 定義 FHIR臨床コア情報 Clinical-coreセット
//   検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
//   このプロファイルはグループ化された検査項目を子供に持たず、
//   個々のひと組みの検査項目と結果だけを格納する.
//   バッテリ検査項目で、それ自体に検査結果がないObservation
//   は別のプロファイル　JP_Observation_LabBaterry_CCS　とする。
// ==================================================
Profile: JP_Observation_LabResult_CCS
Parent: JP_Observation_LabResult
Id: jp-observation-labresult-ccs
Title: "FHIR臨床コア情報 Clinical-coreセットのひとつ。検体検査結果プロファイル"
Description: "FHIR臨床コア情報 Clinical-coreセットのひとつ。検体検査結果プロファイル。JP_Observation_LabResultの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/clinicalCoreSet/StructureDefinition/JP_AllergyIntolerance_CCS"
* ^status = #active
* ^date = "2023-03-15"

* . ^short = "検体検査結果"
* . ^definition = "検体検査結果の格納に使用する。"
* . ^comment = "検体検査結果の制約プロファイル"
* text ^short = "このリソースを人間が直感的に概要を解釈するためのテキスト要約"
* text ^definition = "以降の要素の情報から計算機により自動生成されること。このテキストには情報に過不足がありうるので、受信側がこの情報を一部情報の可視化確認ためだけに利用するものとし、医療情報の構造的情報として使用してはならない。"

// Patinet とSpecimenは最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains patient 1..1
* contained contains specimen 1..1
* contained[patient] only  JP_Patient
* contained[specimen] only  Specimen

* identifier ^short = "当該検査項目に対して、施設内で割り振られる一意の識別子"
* identifier ^definition = "この検査項目に割り当てられた一意の識別子。リソースの識別子やシステム的なシーケンスではなく、ビジネスID。"
* identifier ^comment = "【JP Core仕様】当該検査項目に対して、施設内で割り振られる一意の識別子があればそれを使用する。なければ次のルールを参考に一意となる識別子を生成し設定する。\r\n\r\nアプリケーション側のデータベースにおけるフィールド長の定義については、最低64バイトを確保すること。\r\n\r\n--- 参考 ---\r\n\r\n次の項目を順にセパレータ「_(アンダースコア)」で連結し、 identifier.value に設定する。グループ項目でない場合など、該当コード／番号がない場合はセパレータを連続で連結する。各コードはローカルコードを使用し、必ず設定できること。\r\n\r\n　１．ORC-2(依頼者オーダ番号)　SS-MIX2の15桁前ゼロ形式の番号\r\n\r\n　２．OBR-4(検査項目ID)　検査セットの識別コード\r\n\r\n　３．SPM-4(検体タイプ)\r\n\r\n　４．OBX-3(検査項目)\r\n\r\n　５．OBX-4(検査副ID)・・・オプション。必要に応じて使用。\r\n\r\n形式：[ORC-2]_[OBR-4]_[SPM-4]_[OBX-3]（_[OBX-4]）"
* identifier.use ^definition = "この識別子の目的。"
* identifier.use ^comment = "アプリケーションは、identifierが一時的であると明示的に述べられない限り、永続的であると想定できる。"
// * identifier.system ^comment = "Identifier.system is always case sensitive."
* identifier.value ^definition = "システムのコンテキスト内で一意の識別子となる文字列を設定。"

* basedOn only Reference(ServiceRequest)
* basedOn ^definition = "A plan, proposal or order that is fulfilled in whole or in part by this event.  For example, a MedicationRequest may require a patient to have laboratory test performed before  it is dispensed.\r\n\r\nこのプロファイルでは、検体検査オーダに関する情報。"
* basedOn ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolvable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\n【JP Core仕様】オーダ情報がある場合、このプロファイルでは ServiceRequest のリソースを参照する。オーダIDの情報はここで使用する。"

* partOf ^definition = "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure.\r\n\r\nこのリソースが一部として、あるいは手順の一つとして含まれるより大きなイベント。"
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  [Notes](observation.html#obsgrouping) below for guidance on referencing another Observation.\r\n\r\n【JP Core仕様】当面は使用しない。"

// OUL^R22.OBX[*]-11 結果状態
* status ^definition = "検査結果値の状態。"
* status ^comment = "【JP Core仕様】v2.5の「F」に相当する値は「final」であるが、ここでは 必須コード表「ObservationStatus」より、全てのコード値を使用可とする。-
(registered | preliminary | final | amended |   corrected | cancelled | entered-in-error | unknown)"
* status MS
//
// SS-MIX2コード表 17 HL7 表-#0085 検査結果状態
// HL7v2.5コード FHIRコード v2.5名称
// C corrected 到着レコードは修正であり結果を書き換え
// D cancelled OBX レコードを削除する
// F final 最終結果： 修正結果でのみ変更可能
// I preliminary 臨床検査室の検体；結果保留
// N unknown 未確認、OBX-４で探せないOBX 検査ID を確定するために使用する
// O registered 依頼詳細記述 （結果なし）
// P preliminary 事前結果
// R registered 結果を入力 ―― 未検証 
// S 部分結果
// X この検査では、結果は得られない
// U 結果状態を最終へ変更。結果は変化しなかった(テストを転送しない) 例えば、放射線科により状態が事前から最終へ変更される
// W オリジナルを間違っているものとしてポストする。例えば、間違っている患者のために送信された。
// ?  amended
// ?  cancelled
// ?  entered-in-error
// ?  unknown

// OUL^R22
* category 1.. MS       // MS 追加
// * category ^slicing.discriminator.type = #pattern
// * category ^slicing.discriminator.path = "$this"
// * category ^slicing.rules = #open
// * category contains laboratory 1..1
// * category[laboratory] = $observation-category#laboratory
* category ^definition = "行われた検査の一般的なタイプの分類。取得、表示の際のフィルタリングに使用。"
* category ^comment = "【JP Core仕様】推奨コード表「ObservationCategoryCodes」より、このプロファイルでは「laboratory」固定とする。"
* category.coding ^comment = "【JP Core仕様】推奨コード表「ObservationCategoryCodes」より、このプロファイルでは「laboratory」固定とする。"

// OUL^R22.OBX[*]-3 検査項目情報
* code MS       // MS 追加
* code from $JP_ObservationLabResultCode_VS (preferred)
* code ^definition = "検査項目のコードと名称"
* code ^comment = "JLAC10必須の項目と任意の項目がある。"
* code ^binding.description = "MEDIS 臨床検査マスター"
* code.coding   MS    // MS 追加
* code.coding ^definition = "コード体系によって定義されたコードへの参照。"
* code.coding ^comment = "標準コード、ローカルコードの2つを設定可能とし、いずれか一方は必須とする。さらにJLAC10とJLAC11などの複数の標準コードも設定できるよう、上限は設けない。\r\n\r\n標準コード、ローカルコードの2つまで格納可。順不同。\r\nSS-MIX2だとCWE.1 ～CWE.3に標準コード、CWE.4～CWE.6にローカルコード、など（順不同）。"

// OUL^R22.OBX[*]-3[*]-3    コードシステム
* code.coding.system    MS    // MS 追加
* code.coding.system ^definition = "コード体系。"
* code.coding.system ^comment = "【JP Core仕様】標準コードの場合、JLAC10を表すURIを設定。\r\n\r\nURIは本WGで定義する。"

// OUL^R22.OBX[*]-3[*]-1    コード　
// OUL^R22.OBX[*]-3[*]-1のコードが &TCM　で終了する場合には、&TCMの直前までの文字列をコメントコードとみなして、同じ
* code.coding.code   MS    // MS 追加

// OUL^R22.OBX[*]-3[*]-2
// * code.coding.display

* code.text 1.. MS   // MS 追加
* code.text ^definition = "項目名。報告書などに記載する場合に使用する表示名。"
* code.text ^comment = "【JP Core仕様】このプロファイルでは、表示名として必須とする。\r\n\r\n多くの場合、coding.display と同一になるが、coding.display に異なる複数の表現が格納される場合を想定し、code間で共通の表現として必須とする。"

// OUL^R22.PID
* subject 1..   MS   // MS 追加
* subject only Reference(JP_Patient)
* subject ^definition = "検体検査の対象となる患者。"
* subject ^comment = "【JP Core仕様】このプロファイルでは、Patient 限定、かつ必須とする。"

// OUL^R22.PV1
* encounter    MS   // MS 追加
* encounter ^definition = "この検査が行われるヘルスケアイベント。医療提供者と患者の接点。"
* encounter ^comment = "【JP Core仕様】入院外来の区別や所在場所、担当診療科の情報に使用する。\r\n\r\n※このプロファイルの用途では通常は必須と考えられるが、ユースケースにより使用されない場合を考慮し、1..1に制約しない。"

// OUL^R22.OBX[*]-14 検査日時
* effective[x] 1..    MS   // MS 追加
* effective[x] only dateTime // or Period or Timing 
* effective[x] ^definition = "検体検査の場合は、検体採取日時。"
* effective[x] ^comment = "【Clinical Core Set仕様】dateTime型に限定する"

// * issued 
// * performer

// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
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
* dataAbsentReason ^definition = "検査結果値が欠落している理由。"
* dataAbsentReason ^comment = "【JP Core仕様】SS-MIX2で未使用だが、valueの欠落時に使用する必要があり、重要な項目である。\r\n\r\n制約「obs-6」に示す通り、valueが存在する場合、当該項目は存在してはならない。\r\n\r\ntextのみでの使用は基本的に不可とし、必ずcodingを設定すること。\r\n\r\n(unknown |   asked-unknown |   temp-unknown |   not-asked |   asked-declined | masked | not-applicable | unsupported | as-text | error |   not-a-number |   negative-infinity |   positive-infinity | not-performed | not-permitted)"

// OUL^R22.OBX[*]-8 （基準値範囲はOUL^R22.OBX[*]-7) 
* interpretation ^short = "High, low, normal, etc. 高、低、正常など"
* interpretation ^definition = "検査結果値の、（高、低、正常）といったカテゴリー評価。結果報告書に記載されることもある情報。"
* interpretation ^comment = "【JP Core仕様】拡張可コード表「ObservationInterpretationCodes」を使用する。\r\n\r\nコード表が大きいため、下記参照。\r\n\r\nhttps://www.hl7.org/fhir/R4/valueset-observation-interpretation.html"
* interpretation ^requirements = "特に数値結果については、結果の重要性を完全に理解するために解釈を必要とする場合がある。"
* interpretation from http://jpfhir.jp/.... 	// 以下のコードに絞ったValueSetを作成する（<:Off scale low, >:Off scale high, A:Abnormal, H:High, L:Low, N:Normal ）
// SS-MIX2表 54 使用者定義表 #0078 異常フラグ
// HL7v2.5コード FHIRコード v2.5名称
// 半角Space N 基準値内
// L L 基準値下限以下
// H H 基準値上限以上
// LL L パニック下限以下
// HH H パニック上限以上
// < < 測定限界下限未満
// > > 測定限界上限越
// N N 正常(非数値結果に適用)
// A A 異常(非数値結果に適用)
// AA A 非常に異常(数値単位のパニック値に対応するが、これは非数値単位に適用される)
// null （値なし）範囲未定義、もしくは正常が適用されない
// U U 大幅な上昇変化
// D D 大幅な下降変化
// B B 改善 － 方向が適用されない場合使用
// W W 悪化 － 方向が適用されない場合使用

* note ^definition = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。"
// * note.text ^comment = "Systems are not required to have markdown support, so the text should be readable without markdown processing. The markdown syntax is GFM - see https://github.github.com/gfm/"

// OUL^R22.SPM-4[*]
* specimen 1..
* specimen ^definition = "この検査に使用された検体（標本）。"
* specimen ^comment = "【JP Core仕様】必須とする。"
/* 記述例：ロジカルリファレンス
 "specimen": {
       "resourceType": "Specimen",
       "type": {
            "coding": [
                {
                    "system": "",
                    "code": "",
                    "display": ""
                }
            ],
            "text": ""
       },
       "display": "医師　太郎"
  },
*/

* device ^definition = "The device used to generate the observation data.\r\n\r\n検査装置、機器。"
* device ^comment = "Note that this is not meant to represent a device involved in the transmission of the result, e.g., a gateway.  Such devices may be documented using the Provenance resource where relevant.\r\n\r\n【JP Core仕様】検査に使用した機器等の情報に使用する。"

// OUL^R22.OBX[*]-7
* referenceRange ^definition = "Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are interpreted as an \"OR\".   In other words, to represent two distinct target populations, two `referenceRange` elements would be used.\r\n\r\n推奨範囲として結果値を解釈するためのガイダンス。基準値。"
* referenceRange ^comment = "Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties.\r\n\r\n【JP Core仕様】可能な限りlow、highに構造化すべき。構造化できない場合、あるいはlow、highに該当しない場合はtextを使用。"
* referenceRange.low ^comment = "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use may also restrict the values for the comparator."
* referenceRange.high ^comment = "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use may also restrict the values for the comparator."
* referenceRange.type ^definition = "Codes to indicate the what part of the targeted reference population it applies to. For example, the normal or therapeutic range.\r\n\r\n対象となる母集団のどの部分に適用するかを示すコード。正常範囲、要治療範囲、など。"
* referenceRange.type ^comment = "This SHOULD be populated if there is more than one range.  If this element is not present then the normal range is assumed."
* referenceRange.appliesTo ^definition = "Codes to indicate the target population this reference range applies to.  For example, a reference range may be based on the normal population or a particular sex or race.  Multiple `appliesTo`  are interpreted as an \"AND\" of the target populations.  For example, to represent a target population of African American females, both a code of female and a code for African American would be used.\r\n\r\n基準値が適用される母集団を示すコード。人種、性別など。"
* referenceRange.appliesTo ^comment = "This SHOULD be populated if there is more than one range.  If this element is not present then the normal population is assumed."
* referenceRange.age ^definition = "The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so.\r\n\r\n基準値が適用される年齢。新生児の場合、週数もありうる。"
* referenceRange.age ^comment = "The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3."
* referenceRange.text ^definition = "Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation.  An example would be a reference value of \"Negative\" or a list or table of \"normals\".\r\n\r\n量的範囲で表せない場合などに使用する。"
* referenceRange.text ^comment = "Note that FHIR strings SHALL NOT exceed 1MB in size"

* hasMember ^definition = "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.\r\n\r\nこの検査が含まれるグループを示す。"
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below.  Note that a system may calculate results from [QuestionnaireResponse](questionnaireresponse.html)  into a final score and represent the score as an Observation.\r\n\r\n【JP Core仕様】1検査で複数の検査項目が実施される場合の親検査項目を設定する。"

* derivedFrom ^definition = "The target resource that represents a measurement from which this observation value is derived. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.\r\n\r\nこの検査値の発生元である関連リソース。例えば他のObservation を受けて、本検査値が発生した場合など。"
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below."

* component ^definition = "Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations.\r\n\r\n一度のタイミングでの1回の検査で複数の結果を同時に得る場合にのみ使用される。例えば、血圧の収縮期、拡張期。新生児のApgarスコア。質問に対する複数の回答（飲んだアルコールの種類、など）。"
* component ^comment = "For a discussion on the ways Observations can be assembled in groups together see [Notes](observation.html#notes) below."
* component.code ^comment = "*All* code-value and  component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation."
* component.value[x] ^comment = "Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below."
* component.interpretation ^comment = "Historically used for laboratory results (known as 'abnormal flag' ),  its use extends to other use cases where coded interpretations  are relevant.  Often reported as one or more simple compact codes this element is often placed adjacent to the result value in reports and flow sheets to signal the meaning/normalcy status of the result."
* component.referenceRange ^comment = "Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties."