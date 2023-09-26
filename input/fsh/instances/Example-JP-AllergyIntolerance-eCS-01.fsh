// JP_AllergyIntolerance_eCS
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: Example-JP-AllergyIntolerance-eCS-01
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example
Description: "allergyIntoleranceExample01 必須要素だけのサンプル"

* contained[+] = Example-JP-Patient-eCS-01-Contained

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value = "102934701"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
 // active | recurrence | relapse | inactive | remission | resolved

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//* category = #food

// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
//* criticality = #unable-to-assess

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)
* code.coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS#J9FC11310000 "サバ類"
* code.text = "サバ"

* patient = Reference(Example-JP-Patient-eCS-01-Contained)

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
//* onsetPeriod.start = "2020-04-10"
* note.text = "サバ食後３時間ほどで全身に発疹と腹痛あり"



//------------------------------------------------------
Instance: Example-JP-AllergyIntolerance-eCS-02
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example
Description: "allergyIntoleranceExample02 必須要素と推奨要素とプラスアルファを記述したサンプル"

* contained[+] = Example-JP-Patient-eCS-01-Contained
* contained[+] = Example-JP-Encounter-OW-eCS-01-Contained

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_AllergyIntolerance_eCS
* meta.tag[+] = http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#LTS "長期保存"

* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value = "102934702"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active  "Active"
 // active | recurrence | relapse | inactive | remission | resolved

* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food

// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
//* criticality = #unable-to-assess

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)
* code.coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS#J9FC11310000 "サバ類"
* code.text = "サバ"

* patient = Reference(Example-JP-Patient-eCS-01-Contained)

* encounter = Reference(Example-JP-Encounter-OW-eCS-01-Contained)

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetDateTime = "2020-04-10"

* recorder.display =  "看護師A"
* asserter.display =  "本人"

* note.text = "サバ食後３時間ほどで全身に発疹と腹痛あり"


//------ 医薬品禁忌-----------------
Instance: Example-JP-DrugContraindications-eCS-03
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example
Description: "allergyIntoleranceExample02 必須要素で記述した薬剤禁忌情報のサンプル"

* contained[+] = Example-JP-Patient-eCS-01-Contained
* contained[+] = Example-JP-Encounter-OW-eCS-01-Contained

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.tag[+] = http:/jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication#LTS "長期保存"

* identifier[resourceInstance-identifier].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[resourceInstance-identifier].value = "102934703"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active  "Active"
 // active | recurrence | relapse | inactive | remission | resolved

* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #medication

// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
* criticality = #high

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)
* code.coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyMedicationAllergen_CS#2260701F1ZZZ "【般】ポビドンヨード含嗽用液７％"
* code.text = "ポビドンヨード"

* patient = Reference(Example-JP-Patient-eCS-01-Contained)

* encounter = Reference(Example-JP-Encounter-OW-eCS-01-Contained)

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetDateTime = "2020-04-10"

* recorder.display =  "看護師A"
* asserter.display =  "本人"


* note.text = "ポビドンヨード含嗽後に嘔吐と全身に発疹"

