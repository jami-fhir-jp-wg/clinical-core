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

* ^meta.lastUpdated 1..1 MS
* ^meta.profile 0..1 MS
* ^meta.tag  ^slicing.discriminator.type = #value
* ^meta.tag  ^slicing.discriminator.path = "$this"
* ^meta.tag  ^slicing.rules = #open
* ^meta.tag contains lts 0..1 MS
  and uninformed 0..1 MS

* ^meta.tag[lts] = http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#LTS
* ^meta.tag[uninformed] = http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#UNINFORMED

// Patinet、encounter、recorder、は最低限の情報をContainedリソースとして記述する
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains patient 1..1 MS
    and encounter 0..1 MS
    and recorder 0..1 MS

* contained[patient] only JP_Patient_eCS_Contained or JP_Patient
  * insert relative_short_definition( "診療主要情報における患者情報をコンパクトに格納したPatientリソース")
  * ^comment = ""

* contained[encounter] only  JP_Encounter_OW_eCS_Contained or JP_Encounter
* contained[recorder] only  JP_Practitioner_eCS_Contained or JP_Practitioner

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains resourceInstance-identifier 1..1 MS

* clinicalStatus   0..1 MS
* clinicalStatus   ^short = "臨床的状態のステータス。コードで記述は必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存 在し てはな らない。それ以外では必須 。"
* clinicalStatus    ^definition = "active | inactive | resolved のいすれか（現存、非現存、解消）system=http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"

* verificationStatus    1..1 MS
* verificationStatus    ^short = "入力された臨床的状態に対する検証状況を示す。確からしさと考えられる。コード化 記述 が必須 。clinicalStatusとの制約 条件 を参照 のこと。"
* verificationStatus    ^definition = "unconfirmed | confirmed | refuted | entered-in-error  のいずれか（未確認、確認ずみ、否定、エラー）　system=http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"

* type 0..1 
* type ^short = "副反応の生理的なメカニズムの種類（アレルギーによるものか不耐性によるものかどうか）"
* type ^definition = "記述する場合は、コード表：\"http://hl7.org/fhir/allergy-intolerance-type\" から　allergy | intolerance のいずれか（アレルギー反応、不耐性反応）"

* category 0..1 MS  // 薬剤近畿情報の場合は、必須 
* category ^short = "特定された原因物質のカテゴリ。記述を可能な限り推奨する。"
* category ^definition = "コード表：\"http://hl7.org/fhir/allergy-intolerance-category\" から　food | medication | environment | biologic　のいずれか　（食物、医薬品、環境、生物学的）。薬剤禁忌情報の記述ではmedication 医薬品 を使用する。"
* category ^comment = "厚労省6情報などの運用において、薬剤禁忌の情報として格納する場合にはmedicationを格納し、かつ criticality要素=high すること。逆にcategory=medicatoin かつ criticality=high である場合には、受信側において薬剤禁忌の情報とみなされる。"

* criticality 0..1 MS
* criticality ^short = "潜在的な臨床的危険性、致命度"
* criticality ^definition = "記述する場合は、コード表：\"http://hl7.org/fhir/allergy-intolerance-criticality\" から　low | high | unable-to-assess　のいずれか（低、高、評価不能）"
* criticality ^comment = "厚労省6情報などの運用において、薬剤禁忌の情報として格納する場合にはcategory要素にmedicationを格納し、かつ criticality要素=high すること。逆にcategory=medicatoin かつ criticality=high である場合には、受信側において薬剤禁忌の情報とみなされる。" 

* code  1..1 MS
* code  ^short = "アレルギー・不耐反応の対象物の情報。アレルギー・不耐反応の対象物の情報。薬剤禁忌情報の場合には、医薬品情報のコード"
* code  ^definition = "jp-coreで定めるallergy-substanceコード表のコードを使用を推奨する。コード化できない場合には、code.text のみで記述する。使用するコード表（推奨）：http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS 　（食物アレルギー）、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS　（医薬品アレルギー）、http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyNonFoodNonMedicationAllergen_CS　（その他のアレルギー）、薬剤禁忌情報の記述では、医薬品コードはYJコード、厚生労働省医薬品コード、同一般医薬品コード、HOT9コードなどを選べる。"
* code  ^comment = "https://jami-fhir-jp-wg.github.io/jp-core-v1xpages/jpcore-r4/develop/StructureDefinition-jp-allergyintolerance.html#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A0%85 の注意事項を参照のこと。またアレルギー情報はコードにより正確に表現することが困難であることが多いので、必ずcode.textにより文字列で記述すること。"
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
* code.text ^short = "アレルギー情報をフリーテキストで記述した内容"

* patient 1..1   MS   
* patient only Reference(JP_Patient_eCS_Contained)
* patient ^short = "患者情報"
* patient ^definition = "患者情報への参照"
* patient ^comment = "Containedリソースに含まれる患者リソースのid(identifierではなく)をリソース内で#を最初につけて参照する。（患者リソースのid を　123 とすると、　{\"reference\" : \"#123\" }のようになる。）"

* encounter 0..1 MS
* encounter only  Reference(JP_Encounter_OW_eCS_Contained)
* encounter ^short = "この情報を記録したときの受診情報（入外区分など）"
* encounter ^definition = "この情報を記録したときの受診情報（入外区分など）を表すEncounterリソース（Containedリソース）への参照"
* encounter ^comment = "Containedリソースに含まれるEncounterリソースをリソース内で参照する。なくてもよい。"

* onset[x] only Period
* onsetPeriod.start ^short = "登録日またはこの状態の存在が開始した日"
* onsetPeriod.end ^short = "この状態がなくなった、無効になった日"

* recordedDate 0..1 MS
* recordedDate ^short = "この情報を記録した登録日"
* recordedDate ^definition = "この情報を記録した登録日"

* recorder 0.. MS
* recorder only Reference(JP_Practitioner_eCS_Contained)
* recorder ^short = "この情報を記録した登録者"
* recorder ^definition = "登録者を表すPractitionerリソース（Containedリソース）への参照"
* recorder ^comment = "Containedリソースに含まれるPractitioner（登録者/医療者）リソースをこのリソース内で参照する。"

* asserter 0..1 MS
  * ^comment = "当面、コア情報ではこの情報を記録しないが、記録する場合には display子要素だけとし、別のリソースへの参照をしない。（新たなcontainedリソースの記述を避けるため）"


* lastOccurrence  0..1 MS
* note  0..1 MS
* reaction 0..1 MS

