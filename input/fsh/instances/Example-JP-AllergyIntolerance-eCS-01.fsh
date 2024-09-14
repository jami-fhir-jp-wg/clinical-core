//-- AllergyIntoleranceリソース CLINS必須要素のみ 長期保存 データ作成例(サバアレルギー)
Instance: Example-JP-AllergyIntolerance-eCS-01
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example
Description: "AllergyIntoleranceリソース CLINS必須要素のみ 長期保存 データ作成例(サバアレルギー)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>アレルギー: さば</p> </div>"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"    //必須
* meta.profile[+] = $JP_AllergyIntolerance_eCS    //必須
* meta.profile[+] = http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS|1
* meta.tag[+] = $JP_ehrshrs_indication_CS#LTS "長期保存"    //任意

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"  //CLINS必須

// * contained[+] = Example-Contained-JP-Encounter-AMB  //推奨

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier    //必須
* identifier[resourceIdentifier].value = "102934701"    //必須

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"    //必須

// * category = #food

// * criticality = #unable-to-assess   //任意

* code.coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS#J9FC11310000 "さば"
* code.text = "さば"

//* patient 
* patient.reference = "Patient/Example-JP-Patient-eCS-MAKINO"


//-- INLINE AllergyIntoleranceリソース CLINS必須要素のみ 長期保存 データ作成例(サバアレルギー)
Instance: Example-JP-AllergyIntolerance-eCS-01Inline
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #inline
Description: "AllergyIntoleranceリソース CLINS必須要素のみ 長期保存 データ作成例(サバアレルギー)"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>アレルギー: さば</p> </div>"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"    //必須
* meta.profile[+] = $JP_AllergyIntolerance_eCS    //必須
* meta.tag[+] = $JP_ehrshrs_indication_CS#LTS "長期保存"    //任意

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber  //CLINS必須
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"  //CLINS必須

// * contained[+] = Example-Contained-JP-Encounter-AMB  //推奨

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier    //必須
* identifier[resourceIdentifier].value = "102934701"    //必須

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"    //必須

// * category = #food

// * criticality = #unable-to-assess   //任意

* code.coding[+] = http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS#J9FC11310000 "さば"
* code.text = "さば"

// * patient.reference = "Example-JP-Patient-eCS-MAKINOInline"
* patient.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

// * encounter.reference = "Example-JP-Encounter-eCS-AMB-01Inline"
//* encounter.reference = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"

