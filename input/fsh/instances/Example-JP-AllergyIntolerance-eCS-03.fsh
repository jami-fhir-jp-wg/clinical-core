//------ 医薬品禁忌-----------------
Instance: Example-JP-AllergyIntolerance-eCS-03
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #example
Description: "AllergyIntoleranceリソース　CLINS必須要素で記述した薬剤アレルギー等情報　長期保存 データ作成例"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>ポビドンヨード含嗽後に嘔吐と全身に発疹</p> </div>"


* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS|1"
* meta.tag[+] = $JP_ehrshrs_indication_CS#LTS "長期保存"

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

//* contained[+] = Example-Contained-JP-Patient-eCS-01-Contained
//* contained[+] = Example-Contained-JP-Encounter-AMB


* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "102934703"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active  "Active"

* category = #medication

//* criticality = #high   //任意
* code.coding[+] = $JP_JfagyMedicationAllergenGCM_CS#GCM2260701F1ZZZ  "ポビドンヨード含嗽用液７％"
* code.text = "ヨードうがい液"


//* patient = Reference(Example-JP-Patient-eCS-01-Contained)
//* patient 
* patient.reference = "Patient/Example-JP-Patient-eCS-MAKINO"

//* encounter = Reference(Example-Contained-JP-Encounter-AMB)
* note[+].text = "ポビドンヨード含嗽後に嘔吐と全身に発疹"

//---- INLINE ----
//------ 医薬品禁忌-----------------
Instance: Example-JP-AllergyIntolerance-eCS-03Inline
InstanceOf: JP_AllergyIntolerance_eCS
Usage: #inline
Description: "AllergyIntoleranceリソース　CLINS必須要素で記述した薬剤アレルギー等情報　長期保存 データ作成例"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>ポビドンヨード含嗽後に嘔吐と全身に発疹</p> </div>"


* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_AllergyIntolerance_eCS
* meta.tag[+] = $JP_ehrshrs_indication_CS#LTS "長期保存"

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

//* contained[+] = Example-Contained-JP-Patient-eCS-01-Contained
//* contained[+] = Example-Contained-JP-Encounter-AMB


* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "102934703"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active  "Active"

* category = #medication

//* criticality = #high   //任意
* code.coding[+] = $JP_JfagyMedicationAllergenGCM_CS#GCM2260701F1ZZZ  "ポビドンヨード含嗽用液７％"
* code.text = "ヨードうがい液"


//* patient = Reference(Example-JP-Patient-eCS-01-Contained)
//* patient 
* patient.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

// * encounter.reference = "Example-JP-Encounter-eCS-AMB-01Inline"
//* encounter.reference = "Encounter/Example-JP-Encounter-eCS-AMB-01"  //推奨
* encounter.reference = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"


* note[+].text = "ポビドンヨード含嗽後に嘔吐と全身に発疹"

