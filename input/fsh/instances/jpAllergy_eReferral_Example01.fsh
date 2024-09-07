// Allergy_eCS
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: Example-JP-Allergy-eCS-01
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example

Description: "AllergyIntoleranceリソース　（診療情報提供書　アレルギー　サバ）"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "102934701"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved

* type = #allergy

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food
 
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
* criticality = #unable-to-assess

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)

* code.coding[+].system = "http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS"
* code.coding[=].code = #J9FC11310000
* code.coding[=].display = "さば"
* code.text = "サバ"

* patient.reference = "Patient/Example-JP-Patient-eCS-MAKINO"

* encounter.reference = "Encounter/Example-JP-Encounter-eCS-AMB-01"

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetAge.system = "http://unitsofmeasure.org"
* onsetAge.value = 30
* onsetAge.code = #a

* note.text = "サバ食後３時間ほどで全身に発疹と腹痛あり"


Instance: Example-JP-Allergy-eCS-02
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example

Description: "AllergyIntoleranceリソース　（診療情報提供書　アレルギー　キーウイ）"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "102934701"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved

* type = #allergy

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food
 
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
* criticality = #unable-to-assess

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)
* code.coding[+].system = "http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS"
* code.coding[=].code = #J9FA32540000
* code.coding[=].display = "キウイフルーツ"
* code.text = "キーウイ"
 
* patient.reference = "Patient/Example-JP-Patient-eCS-MAKINO"

* encounter.reference = "Encounter/Example-JP-Encounter-eCS-AMB-01"

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetAge.system = "http://unitsofmeasure.org"
* onsetAge.value = 10
* onsetAge.code = #a

* note.text = "食べると口の周りが痺れる感じ"


