// ==================================================
//   Profile 定義 診療情報・サマリー汎用
//   このプロファイルは、電子カルテ情報共有サービスに送信するためのプロファイルではない。
//   電子カルテ情報共有サービスに送信する場合には、このプロファイルから派生した別の専用プロファイルを用いること。
//   傷病名情報 リソースタイプ:Condition
//   親プロファイル:JP_Condition
// ==================================================
Profile:        JP_Condition_eCS
Parent:			JP_Condition
Id:             JP-Condition-eCS
Title:  "eCS:JP_Condition_eCS"
Description: "eCS 診療情報・サマリー汎用 Conditionリソース（傷病名情報）プロファイル"

* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension contains JP_eCS_Department named eCS_Department ..*


* ^url = $JP_Condition_eCS
* ^status = #active
* ^date = "2023-10-04"
* insert toplevel_short_definition("診療情報における傷病名情報の格納に使用する")
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルではない。電子カルテ情報共有サービスに送信する場合には、このプロファイルから派生した別の専用プロファイルを用いること。"

* meta 1..1 MS
* meta.versionId ^short = "バージョン固有の識別子"
* meta.versionId ^definition = "バージョン固有の識別子"
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 0.. MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS　を設定する。電子カルテ情報共有サービスに本リソースデータを送信する場合には、別に定義されるURLを設定すること。")

// encounter、recorder、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    encounter 0..1 MS
    and recorder 0..1 MS
//    and patient 0..1 MS

* contained[encounter] only  JP_Encounter
  * insert relative_short_definition("傷病名情報を記録（登録）したときの入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースにおける必要最小限の要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[recorder] only  JP_Practitioner
  * insert relative_short_definition("傷病名情報の記録者情報をコンパクトに格納したPractitionerリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースにおける必要最小限の要素だけが含まれればよい。"

/*
* contained[patient] only  JP_Patient
  * insert relative_short_definition("傷病名情報の対象者である患者情報を格納したPatientリソース。Bundleリソースのentryで記述してもよいが、ここにContainedリソースとして内包し、subject要素から参照する形式をとってもよい。")
  * ^comment = "subject要素から参照される場合には、そのJP_Patient(JP_Patient_eCSでもよい)リソースの実体。"
*/

* extension[eCS_InstitutionNumber] 0..1 MS
* extension[eCS_Department] 0..1 MS

* identifier 1..* MS
  * insert relative_short_definition("この傷病名情報を作成した施設内で、この傷病名情報を他の傷病名情報と一意に区別できるID。このID情報をキーとして本傷病名情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。")
  * ^comment = "1回の登録で複数の傷病名情報が登録される場合に、それらは同一のIDでも構わない。この場合、更新や削除は同一IDの情報すべてに対して実施される。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains resourceIdentifier 1..1 MS
* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].system ^comment = "この傷病名情報を作成した施設内で、この傷病名情報を他の傷病名情報と一意に区別できるIDを発番できる場合にのみ、このsystem値（$JP_ResourceInstanceIdentifier）を使用すること。1回の登録で複数の傷病名情報が登録される場合に、それらは同一のIDで登録される場合でもこのsystem値を使用する。"
* identifier[resourceIdentifier].value 1..1 MS
  * insert relative_short_definition("傷病名情報IDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。例）\"1311234567-2021-00123456\"")

* clinicalStatus   0..1 MS
* clinicalStatus ^short = "臨床的状態。病名最終日（abatementDateTime)での状態（転帰）。"
* clinicalStatus ^definition = "臨床的状態。病名最終日（abatementDateTime)での状態（転帰）。コードでの記述は必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。それ以外では、必須。"
* clinicalStatus ^comment = "コード表　http://terminology.hl7.org/CodeSystem/condition-clinical　から　active（存続）, remission(軽快、寛解), inactive（治癒以外での病名の終了）, resolved (治癒) 、unknown（不明）のいずれかを選ぶ。"
* clinicalStatus.coding 0..* MS
* clinicalStatus.text 0..1 MS
  * insert relative_short_definition("コードだけでは記述できない情報がある場合にコードと併用してもよい。値が使用されない可能性はある")


* verificationStatus    1..1 MS
* verificationStatus    ^short = "入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コード化記述が必須 。clinicalStatusとの制約条件を参照のこと。疑い病名フラグとしても使用される。疑い病名の場合には、unconfirmedを設定し、それ以外の場合には通常confirmedを設定する。"
* verificationStatus    ^definition = "unconfirmed | confirmed | refuted | entered-in-error  のいずれか（未確認、確認ずみ、否定、エラー）　system=http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding 0..* MS
* verificationStatus.text 0..1 MS
  * insert relative_short_definition("コードだけでは記述できない情報がある場合や、コード化できない場合には本要素だけで記述してもよい。コードと併用してもよい")

* category 1..1 MS
* category ^short = "臨床的状態に割り当てられたカテゴリー。"
* category ^definition = "臨床的状態に割り当てられたカテゴリー。設定する場合には、problem-list-item （プロブレムリスト）| encounter-diagnosis （診察時点での診断名）のいずれかを設定する。３文書６情報の作成では、category要素は省略または、'encounter-diagnosis'とすること。"
* category ^comment = ""

* severity 0..1
* severity ^short = "潜在的な臨床的危険性、致命度。"
* severity ^definition = "記述する場合は、コード表："http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionSeverity_CS"からMI：軽度、MO：中度、SE：重度、UK：不明のいずれかを設定する。"
* severity ^comment = ""

* code 1..1 MS
* code ^short = "傷病名のコードと名称"
* code ^definition = "傷病名のコードと名称。MEDIS 病名交換コード、病名管理番号、ICD10分類コード、レセプト電算処理用傷病名コード、またはレセプト電算処理用傷病名コードの未コード化コード(7桁all 9)のいずれかまたは複数の組み合わせで表現することを推奨する。
３文書６情報の作成では、病名管理番号またはレセプト電算処理用傷病名コードのいずれかを必ず使用し、それ以外にICD10分類コードを追加することを推奨する。なお、病名のコード化ができない場合には、レセプト電算処理用傷病名コードとして、未コード化コード(7桁all 9）を使用使用する。"
* code ^comment = "code.texはコード化の有無にかかわらず病名入力文字列を必ずそのまま設定する。"

* code.extension ^slicing.discriminator.type = #value
* code.extension ^slicing.discriminator.path = "url"
* code.extension ^slicing.rules = #open
* code.extension contains
    JP_Condition_DiseasePrefixModifier_eCS named diseasePrefixModifier ..* and
    JP_Condition_DiseasePostfixModifier_eCS named diseasePostfixModifier ..*

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    mediskoukan 0.. MS
and mediskanri 0.. MS
and syobo 0.. MS
and icd10 0.. MS

* code.coding[mediskoukan].system = $JP_Disease_MEDIS_Concept_CS (exactly)    // MEDIS 病名交換コード
// * code.coding[mediskoukan].code from $JP_Disease_MEDIS_Concept_VS
* code.coding[mediskanri].system = $JP_Disease_MEDIS_ManagementID_CS (exactly) // MEDIS 病名管理番号
// * code.coding[mediskoukan].code from $JP_Disease_MEDIS_ManagementID_VS
* code.coding[syobo].system = $JP_Disease_Claim_CS (exactly)    // レセプト電算処理用傷病名コード
// * code.coding[syobo].code from $JP_Disease_Claim_VS    // レセプト電算処理用傷病名コード
* code.coding[icd10].system = $JP_DiseaseCategory_WHO_ICD10_CS   (exactly)  // ICD10分類コード
// * code.coding[icd10].code from $JP_DiseaseCategory_WHO_ICD10_VS   // ICD10分類コード

* bodySite 0..*
* bodySite ^short = "該当する状態が現れている解剖学的な場所を示す。"
* bodySite ^definition = "解剖学的な部位表現のコードと名称"
* bodySite ^comment = "MEDIS 病名修飾語コード、修飾語管理番号、レセプト電算処理用傷病名修飾語コードなどが使用できる。"
* bodySite.coding ^slicing.discriminator.type = #value
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains
    mediskoukan 0.. 
and mediskanri 0.. 
and syobo 0.. 

* bodySite.coding[mediskoukan].system = $JP_Modifier_MEDIS_Concept_CS (exactly)    // MEDIS 病名修飾語交換コード
//* bodySite.coding[mediskoukan].code from $JP_BodySite_MEDIS_Concept_VS    // MEDIS 病名修飾語交換コード
* bodySite.coding[mediskanri].system = $JP_Modifier_MEDIS_ManagementID_CS (exactly) // MEDIS 病名修飾語番号
//* bodySite.coding[mediskanri].code from $JP_BodySite_MEDIS_ManagementID_VS  // MEDIS 病名修飾語番号
* bodySite.coding[syobo].system =  $JP_Modifier_Disease_Claim_CS (exactly)    // レセプト電算処理用傷病名修飾語コード
//* bodySite.coding[syobo].code from $JP_Disease_Claim_VS    // レセプト電算処理用傷病名修飾語コード

// 患者情報
* subject 1..1   MS
* subject ^short = "患者のPatientリソース参照記述"
* subject ^definition = "対象となる患者のFHIRリソースへの参照。電子カルテ情報共有サービスでは、Bundleリソースで本リソースから参照可能なPatientリソースが同時に存在するので、そのPatientリソースに記述されている被保険者個人識別子や施設内患者IDなどの情報をidentifier要素でLogical Reference記述する。電子カルテ情報共有サービス以外の一般的な利用ではBundleリソースに含まれるPatientリソースのfullUrlを記述するか、またはContainedリソースをLiteral 参照する（comment参照のこと）。"
* subject ^comment = "ContainedリソースによりPatientリソースを本リソースの要素として記述した上で、そのリソースをLiteral 参照する方法(Patient.idを#で記述する)をとっても構わない。{ "reference":  "#patient1234567"}"

* encounter 0..1 MS
* encounter only  Reference(JP_Encounter)
* encounter ^short = "病名をつけたときの受診情報（入外区分など）"
* encounter ^definition = "病名をつけたときの受診情報（入外区分など）を表すEncounterリソース（Containedリソース）への参照"
* encounter ^comment = "Containedリソースに含まれるEncounterリソースをリソース内で参照する。なくてもよい。"

* onset[x] 0..1 MS
* onset[x]  ^short = "この傷病名情報が同定された時期"
* onset[x]  ^definition = "患者にこの傷病が出現した時期、あるいはなんらかのエビデンスによりこの傷病が患者にあると確認できた時期を記述する。電子カルテシステムの病名開始日をdateTime型で記述するのが一般的な方法である。3文書6情報の電子カルテ情報共有サービスでは、病名開始日をdateTime型で記述するため、onsetDateTime要素を使用する。"

* recordedDate 0..1 MS
* recordedDate ^short = "この情報を記録した登録日"
* recordedDate ^definition = "この情報を記録した登録日"

* abatement[x] 0..1 MS
* abatement[x] only dateTime
* abatementDateTime ^short = "この傷病名情報による患者状態が終了したと同定された時期。"
* abatementDateTime ^short = "患者にこの傷病のある状態が終了または確認できた時期、なんらかのエビデンスによりこの傷病のある状態が改善もしくはある状態になったと確認できた時期を記述する。電子カルテシステムの病名終了日（すなわち転帰日）をdateTime型で記述するのが一般的な方法である。3文書6情報の電子カルテ情報共有サービスでは、病名終了日（転帰日）をdateTime型で記述する。この終了日（転帰日）における転帰情報をclinicalStatus要素に記述すること。通常は、この日付がある場合のclinicalStatus要素は\"active\"以外の値となるが、例外的に\"active\"でもよい。"

* recorder 0.. MS
* recorder only Reference(JP_Practitioner)
* recorder ^short = "この情報を記録した登録者"
* recorder ^definition = "登録者を表すPractitionerリソース（Containedリソース）への参照"
* recorder ^comment = "Containedリソースに含まれるPractitioner（登録者/医療者）リソースをこのリソース内で参照する。"

* asserter 0..1 MS
  * insert relative_short_definition("この状態があると確認（主張）した人情報への参照。医療者、患者本人の場合にはそれぞれのContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する")
  * ^comment = "当面、診療６情報・サマリー用ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。（新たなcontainedリソースの記述を避けるため）"

* stage 
  * insert relative_short_definition("この状態の臨床的ステージやグレード表現。")
  * assessment ^comment = "当面、診療６情報・サマリー用ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。（新たなcontainedリソースの記述を避けるため）"

* evidence
  * insert relative_short_definition("状態を確認または反駁した証拠など、状態の検証ステータスの基礎となる裏付けとなる証拠/兆候。")

* note 
  * insert relative_short_definition("患者状態に関する追加的な情報")
  * author[x] 0..1
  * authorString ^short = "記載者氏名などの文字列。必ずしも氏名でなくてもよい。"
  * time ^short = "この追加的な情報が作成された日時。"
  * text ^short = "追加的な情報の内容。markdown形式のテキストが使用できる。データとして1Mバイト以内であること。markdown形式のデータ。"


//-------------------------------
// JP_Condition_DiseasePrefixModifier
//-------------------------------
Extension: JP_Condition_DiseasePrefixModifier_eCS
Id: jp-condition-disease-prefix-modifier
Title: "JP Core Disease Prefix Modifier Extension"
Description: "病名の前置修飾語を格納するための拡張"
* ^url = $JP_Condition_DiseasePrefixModifier
* ^status = #active
* ^date = "2023-08-05"
* ^context.type = #element
* ^context.expression = "Condition.code"
* . ^short = "前置修飾語"
* . ^definition = "前置修飾語を格納するための拡張。\r\n前置修飾語をCodeableConcept型で記述する。"
* url = $JP_Condition_DiseasePrefixModifier (exactly)
* value[x] only CodeableConcept
* value[x] ^short = "前置修飾語"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding contains
    medisExchange 0..1 and
    medisRecordNo 0..1 and
    receipt 0..1
//* valueCodeableConcept.coding[medisExchange] from $JP_ConditionDiseaseModifierMEDISExchange_VS (required)
* valueCodeableConcept.coding[medisExchange].system = $JP_BodySite_MEDIS_Concept_CS (exactly)
* valueCodeableConcept.coding[medisExchange].code 1..
* valueCodeableConcept.coding[medisExchange] ^short = "MEDIS ICD10対応標準病名マスター(修飾語交換用コード) 。【詳細参照】"
* valueCodeableConcept.coding[medisExchange] ^definition = "MEDIS ICD10対応標準病名マスターの修飾語交換用コード "
//* valueCodeableConcept.coding[medisExchange] ^comment = "JP_ConditionDiseaseModifierMEDISExchange_VSの中から適切なコードを指定する。"

//* valueCodeableConcept.coding[medisRecordNo] from $JP_ConditionDiseaseModifierMEDISRecordNo_VS (required)
* valueCodeableConcept.coding[medisRecordNo].system = $JP_BodySite_MEDIS_ManagementID_CS (exactly)
* valueCodeableConcept.coding[medisRecordNo].code 1..
* valueCodeableConcept.coding[medisRecordNo] ^short = "MEDIS ICD10対応標準病名マスター(修飾語管理番号) 。【詳細参照】"
* valueCodeableConcept.coding[medisRecordNo] ^definition = "MEDIS ICD10対応標準病名マスターの修飾語管理番号 "
//* valueCodeableConcept.coding[medisRecordNo] ^comment = "JP_ConditionDiseaseModifierMEDISRercordNo_VSの中から適切なコードを指定する。"

//* valueCodeableConcept.coding[receipt] from $JP_ConditionDiseaseModifierReceipt_VS (required)
* valueCodeableConcept.coding[receipt].system = $JP_Modifier_Disease_Claim_CS (exactly)
* valueCodeableConcept.coding[receipt].code 1..
* valueCodeableConcept.coding[receipt] ^short = "レセプト電算用修飾語マスター。【詳細参照】"
* valueCodeableConcept.coding[receipt] ^definition = "レセプト電算システムで定義されている修飾語コード。"
//* valueCodeableConcept.coding[receipt] ^comment = "JP_ConditionDiseaseModifierReceipt_VSの中から適切なコードを指定する。"

//-------------------------------
// JP_Condition_DiseasePostfixModifier
//-------------------------------
Extension: JP_Condition_DiseasePostfixModifier_eCS
Id: jp-condition-disease-postfix-modifier
Title: "JP Core Disease Postfix Modifier Extension"
Description: "病名の後置修飾語を格納するための拡張"
* ^url = $JP_Condition_DiseasePostfixModifier
* ^status = #active
* ^date = "2023-08-05"
* ^context.type = #element
* ^context.expression = "Condition.code"
* . ^short = "後置修飾語"
* . ^definition = "後置修飾語を格納するための拡張。\r\n後置修飾語をCodeableConcept型で記述する。"
* url = $JP_Condition_DiseasePostfixModifier (exactly)
* value[x] only CodeableConcept
* value[x] ^short = "後置修飾語"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding contains
    medisExchange 0..1 and
    medisRecordNo 0..1 and
    receipt 0..1
//* valueCodeableConcept.coding[medisExchange] from $JP_ConditionDiseaseModifierMEDISExchange_VS (required)
* valueCodeableConcept.coding[medisExchange].system = $JP_Modifier_MEDIS_Concept_CS (exactly)
* valueCodeableConcept.coding[medisExchange].code 1..
* valueCodeableConcept.coding[medisExchange] ^short = "MEDIS ICD10対応標準病名マスター(修飾語交換用コード) 。【詳細参照】"
* valueCodeableConcept.coding[medisExchange] ^definition = "MEDIS ICD10対応標準病名マスターの修飾語交換用コード "
//* valueCodeableConcept.coding[medisExchange] ^comment = "JP_ConditionDiseaseModifierMEDISExchange_VSの中から適切なコードを指定する。"

//* valueCodeableConcept.coding[medisRecordNo] from $JP_ConditionDiseaseModifierMEDISRecordNo_VS (required)
* valueCodeableConcept.coding[medisRecordNo].system = $JP_Modifier_MEDIS_ManagementID_CS (exactly)
* valueCodeableConcept.coding[medisRecordNo].code 1..
* valueCodeableConcept.coding[medisRecordNo] ^short = "MEDIS ICD10対応標準病名マスター(修飾語管理番号) 。【詳細参照】"
* valueCodeableConcept.coding[medisRecordNo] ^definition = "MEDIS ICD10対応標準病名マスターの修飾語管理番号 "
//* valueCodeableConcept.coding[medisRecordNo] ^comment = "JP_ConditionDiseaseModifierMEDISRercordNo_VSの中から適切なコードを指定する。"

//* valueCodeableConcept.coding[receipt] from $JP_ConditionDiseaseModifierReceipt_VS (required)
* valueCodeableConcept.coding[receipt].system = $JP_Modifier_Disease_Claim_CS (exactly)
* valueCodeableConcept.coding[receipt].code 1..
* valueCodeableConcept.coding[receipt] ^short = "レセプト電算用修飾語マスター。【詳細参照】"
* valueCodeableConcept.coding[receipt] ^definition = "レセプト電算システムで定義されている修飾語コード。"
//* valueCodeableConcept.coding[receipt] ^comment = "JP_ConditionDiseaseModifierReceipt_VSの中から適切なコードを指定する。"
