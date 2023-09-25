// ==================================================
//   Profile 定義 FHIR臨床コア情報 Clinical-coreセット
//   アレルギー情報／薬剤禁忌 リソースタイプ:AllergyIntolerance
//   親プロファイル:JP_AllergyIntolerance
// ==================================================
Profile:        JP_AllergyIntolerance_eCS
Parent:			JP_AllergyIntolerance
Id:             JP-AllergyIntolerance-eCS
Title:  "Core6 : JP_AllergyIntolerance_eCS"
Description: "診療主要6情報サマリー用　AllergyIntoleranceリソース（アレルギー情報／薬剤禁忌）プロファイル"
* ^url = $JP_AllergyIntolerance_eCS
* ^status = #active
* ^date = "2023-05-27"
* insert toplevel_short_definition("診療主要情報におけるアレルギー情報／薬剤禁忌の格納に使用する")
* . ^comment = "厚労省6情報などの運用において、薬剤禁忌情報かアレルギー情報かの区別はcategory要素がmedicationかそれ以外かによる。"

* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例)2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）として判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 0..1 MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary")
* meta.tag  ^slicing.discriminator.type = #value
* meta.tag  ^slicing.discriminator.path = "$this"
* meta.tag  ^slicing.rules = #open
* meta.tag contains lts 0..1 MS
  and uninformed 0..1 MS

* meta.tag[lts] = http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#LTS
  * insert relative_short_definition("電子カルテ情報共有サービスで長期保存情報フラグの設定する場合に使用する。" )
  * system 1..1 MS
    * insert relative_short_definition("固定値 http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
      * insert relative_short_definition("長期保存情報フラグ　固定値 LTSを設定する。" )
* meta.tag[uninformed] = http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#UNINFORMED
  * insert relative_short_definition("電子カルテ情報共有サービスで未告知情報または未説明フラグを設定する場合に使用（本リソース種別で使用することが許可されているか、あるいは設定した情報が利用されるかどうかについては、電子カルテ情報共有サービスの運用仕様によって確認することが必要）。" )
  * system 1..1 MS
    * insert relative_short_definition("固定値 http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication　を設定する。" )
  * code 1..1 MS
      * insert relative_short_definition("未告知情報または未説明フラグ　固定値 LTSを設定する。" )

// Patinet、encounter、recorder、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains patient 1..1 MS
    and encounter 0..1 MS
    and recorder 0..1 MS

* contained[patient] only JP_Patient_eCS_Contained or JP_Patient
  * insert relative_short_definition("診療主要情報における患者情報をコンパクトに格納したPatientリソース")
  * ^comment = "patient要素から参照される場合には、そのJP_Patientリソースの実体。JP_Patientリソースの必須要素だけが含まれればよい。電子カルテ情報共有サービスでは、JP_Patientリソースのcontainは必須。"

* contained[encounter] only  JP_Encounter_OW_eCS_Contained or JP_Encounter
  * insert relative_short_definition("診療主要情報における入院外来受診情報をコンパクトに格納したEncounterリソース")
  * ^comment = "encounter要素から参照される場合には、そのJP_Encounterリソースの実体。JP_Encounterリソースの必須要素だけが含まれればよい。ここで埋め込まれるJP_Encounterリソースでは、Encounter.classにこの情報を記録したときの受診情報（入外区分など）を記述して使用する。"

* contained[recorder] only  JP_Practitioner_eCS_Contained or JP_Practitioner
  * insert relative_short_definition("診療主要情報における患者情報をコンパクトに格納したPatientリソース")
  * ^comment = "recorder要素から参照される場合には、そのJP_Practitionerリソースの実体。JP_Practitionerリソースの必須要素だけが含まれればよい。"

* identifier 1..* MS
  * insert relative_short_definition("このアレルギー情報を作成した施設内で、このアレルギー情報を他のアレルギー情報と一意に区別できるID。このID情報をキーとして本アレルギー情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。")
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains resourceInstance-identifier 1..1 MS
* identifier[resourceInstance-identifier].system = "固定値　http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value 1..1 MS
  * insert relative_short_definition("アレルギー情報IDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。例）\"1311234567-2020-00123456\"")

* clinicalStatus   0..1 MS
* clinicalStatus   ^short = "臨床的状態のステータス。コードで記述は必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。それ以外では必須。"
* clinicalStatus   ^definition = "active | inactive | resolved のいすれか（現存、非現存、解消）system=http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.text 0..1
 * insert relative_short_definition("コードだけでは記述できない情報がある場合にコードと併用してもよい。値が使用されない可能性はある")

* verificationStatus    0..1 MS
* verificationStatus    ^short = "入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コード化記述が必須 。clinicalStatusとの制約条件を参照のこと。"
* verificationStatus    ^definition = "unconfirmed | confirmed | refuted | entered-in-error  のいずれか（未確認、確認ずみ、否定、エラー）　system=http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.text 0..1
 * insert relative_short_definition("コードだけでは記述できない情報がある場合にコードと併用してもよい。")

* type 0..1 
* type ^short = "副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）"
* type ^definition = "記述する場合は、コード表：\"http://hl7.org/fhir/allergy-intolerance-type\" から　allergy | intolerance のいずれか（アレルギー反応、不耐性反応）。"
* type ^comment = "メカニズムの種類を正確に決めることは難しいので、この情報はあくまで情報登録側の判断に依存する。"

* category 0..1 MS  // 薬剤禁忌情報の場合は、必須 
* category ^short = "特定された原因物質のカテゴリ。記述を可能な限り推奨する。"
* category ^definition = "コード表：\"http://hl7.org/fhir/allergy-intolerance-category\" から　food | medication | environment | biologic　のいずれか　（食物、医薬品、環境、生物学的）を選択する。電子カルテシステムで、これらのカテゴリーが区別されて登録されている場合には可能な限りコードを設定すること。"
* category ^comment = "電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、必ず本要素は\"medication\"として存在しなければならず、criticality要素は\"high\"を設定しなければならない。これ以外の場合には、本リソースの情報はや薬剤禁忌以外のアレルギー情報として取り扱われる。"

* criticality 0..1
* criticality ^short = "潜在的な臨床的危険性、致命度"
* criticality ^definition = "記述する場合は、コード表：\"http://hl7.org/fhir/allergy-intolerance-criticality\" から　low | high | unable-to-assess　のいずれか（低、高、評価不能）"
* criticality ^comment = "電子カルテ情報共有サービスでは、薬剤禁忌情報として本リソース種別を使用する場合には、category要素の記述を参照すること。" 

* code  1..1 MS
* code ^short = "アレルギー・不耐反応の対象物の情報。アレルギー・不耐反応の対象物の情報。薬剤禁忌情報の場合には、医薬品情報のコード。"
* code  ^definition = "JP-Coreで定めるallergy-substanceコード表のコードを使用を推奨する。コード化できない場合には、code.text のみで記述する。コード化の有無にかかわらず、電子カルテシステム等で登録され表示されている文字列をcode.textに必ず設定すること。"
* code  ^comment = "使用するコード表（推奨）：ValueSethttp://jpfhir.jp/fhir/core/ValueSet/JP_AllergyIntolerance_VS
CodeSystemは、category要素の値に対応して、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS
http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS
http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS の3つのいずれかから選択することが推奨されている。\n アレルギー情報はコードにより正確に表現することが困難であることが多いので、必ずcode.textにより文字列で記述すること。"
* code.coding 0..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    medication 0..1 MS
and food 0..1 MS
and nonFoodnonMedication  0..1 MS
* code.coding[medication].system =  $JP_JfagyMedicationAllergen_CS (exactly)
* code.coding[food].system =  $JP_JfagyMedicationAllergen_CS (exactly)
* code.coding[nonFoodnonMedication].system =  $JP_JfagyNonFoodNonMedicationAllergen_CS (exactly)
* code.text 1..1 MS
* code.text ^short = "コード化の有無にかかわらず、電子カルテシステム等で登録され表示されている文字列をcode.textに必ず設定すること。"

* patient 1..1   MS   
* patient only Reference(JP_Patient_eCS_Contained)
* patient ^short = "患者情報"
* patient ^definition = "このアレルギー不耐症を有する患者のFHIRリソースへの参照。"
* patient ^comment = "Containedリソースに含まれる患者リソースを参照する場合には、そのid(identifierではなく)をリソース内で#を最初につけて参照する。（患者リソースのid をpatient203987 とすると、　{\"reference\" : \"#patient203987\" }のようになる。）"

* encounter 0..1 MS
* encounter only  Reference(JP_Encounter_OW_eCS_Contained)
* encounter ^short = "この情報を記録したときの受診情報（入外区分など）"
* encounter ^definition = "この情報を記録したときの受診情報（入外区分など）を表すEncounterリソース（Containedリソース）への参照"
* encounter ^comment = "Containedリソースに含まれるEncounterリソースをリソース内で参照する。"

* onset[x] only Period
* onsetPeriod.start ^short = "登録日またはこの状態の存在が開始した日"
* onsetPeriod.end ^short = "この状態がなくなった、無効になった日"

* recordedDate 0..1 MS
* recordedDate ^short = "この情報が記録された登録日"
* recordedDate ^definition = "この情報が記録された登録日"

* recorder 0.. MS
* recorder only Reference(JP_Practitioner_eCS_Contained)
* recorder ^short = "この情報を記録した登録者"
* recorder ^definition = "登録者を表すPractitionerリソース（Containedリソース）への参照"
* recorder ^comment = "Containedリソースに含まれるPractitioner（登録者/医療者）リソースをこのリソース内で参照する。"

* asserter 0..1 MS
  * insert relative_short_definition("この状態があると確認（主張）した人情報への参照。医療者、患者本人の場合にはそれぞれのContainedリソースへの参照を記述する。またはdisplay要素に文字列を記述する")
  * ^comment = "当面、コア情報ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。（新たなcontainedリソースの記述を避けるため）"

* lastOccurrence  0..1 
  * insert relative_short_definition("最後（直近）に知られている発生日時")
* note  0..1 
  * insert relative_short_definition("状態に関する追加的な情報で他の要素で記述できないような情報")
* reaction 0..1 
  * insert relative_short_definition("対象物質に暴露したことに関連して派生した有害反応の履歴事実に関する情報。複数記述できる。")

