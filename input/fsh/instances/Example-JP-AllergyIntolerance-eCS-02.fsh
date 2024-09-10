//--- AllergyIntoleranceリソース CLINS必須要素と推奨要素とプラスアルファ 長期保存 を記述 データ作成例
Instance: Example-JP-AllergyIntolerance-eCS-02
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example
Description: "AllergyIntoleranceリソース CLINS必須要素と推奨要素とプラスアルファを記述 長期保存 データ作成例"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>アレルギー:キーウイ</p>発症:2020-04-10  情報源：本人　記録：2024-07-10　記録者：看護師A</div>"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"    //必須
* meta.profile[+] = $JP_AllergyIntolerance_eCS    //必須
* meta.tag[+] = $JP_ehrshrs_indication_CS#LTS "長期保存"    //任意

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"  //CLINS必須

//* contained[+] = Example-Contained-JP-Encounter-AMB 



* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier    //必須
* identifier[resourceIdentifier].value = "102934702"    //必須



* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active  "Active"

* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food

//* criticality = #unable-to-assess

* code.coding[+] = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS#J9FA32540000 "キウイフルーツ"
* code.coding[=].version = "20240709" //推奨
* code.text = "キーウイ"

* patient.reference = "Patient/Example-JP-Patient-eCS-MAKINO"   //必須
* encounter.reference = "Encounter/Example-JP-Encounter-eCS-AMB-01"  //推奨


//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetDateTime = "2020-04-10"
* recordedDate = "2024-07-10"  //推奨

* recorder.display =  "看護師A"
* asserter.display =  "本人"

* note[+].text = "食べると口の周りが痺れる感じ"

//--- INLINE ----
//--- AllergyIntoleranceリソース CLINS必須要素と推奨要素とプラスアルファ 長期保存 を記述 データ作成例
Instance: Example-JP-AllergyIntolerance-eCS-02Inline
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #inline
Description: "AllergyIntoleranceリソース CLINS必須要素と推奨要素とプラスアルファを記述 長期保存 データ作成例"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>アレルギー:キーウイ</p>発症:2020-04-10  情報源：本人　記録：2024-07-10　記録者：看護師A</div>"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"    //必須
* meta.profile[+] = $JP_AllergyIntolerance_eCS    //必須
* meta.tag[+] = $JP_ehrshrs_indication_CS#LTS "長期保存"    //任意

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"  //CLINS必須

//* contained[+] = Example-Contained-JP-Encounter-AMB 



* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier    //必須
* identifier[resourceIdentifier].value = "102934702"    //必須



* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active  "Active"

* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food

//* criticality = #unable-to-assess

* code.coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS#J9FA32540000 "キウイフルーツ"
* code.coding.version = "20240709" //推奨
* code.text = "キーウイ"

//* patient.reference = "Patient/Example-JP-Patient-eCS-MAKINO"   //必須
* patient.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

// * encounter.reference = "Example-JP-Encounter-eCS-AMB-01Inline"
//* encounter.reference = "Encounter/Example-JP-Encounter-eCS-AMB-01"  //推奨
* encounter.reference = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"


//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetDateTime = "2020-04-10"
* recordedDate = "2024-07-10"  //推奨

* recorder.display =  "看護師A"
* asserter.display =  "本人"

* note[+].text = "食べると口の周りが痺れる感じ"