Instance: Example-JP-Obs-LabResult-eCS-K
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）カリウム　5.5 mmol/L (High)　　ローカルコード=0000181802 臨床検査項目基本コードJLAC10=3H015000002326101 検体：血清　診療科：循環器診療科"
* note.text = "Observationリソース（検体検査結果）カリウム　5.5 mmol/L (High) 　　ローカルコード=0000181802 臨床検査項目基本コードJLAC10=3H015000002326101 検体：血清　診療科：循環器診療科"

* meta.lastUpdated = "2021-07-09T14:11:13.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
* language = #ja


* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber_Extension 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1311234567"

* extension[eCS_Department].url = $JP_eCS_Department_Extension
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "1311234567-9990767-OBSLAB13883807672021070909210705-2"

//* contained[+] = Example-Contained-JP-Patient-eCS-01-Contained
* contained[+] = Example-Contained-JP-Encounter-AMB

// 検体材料　* contained[+] = Example-Contained-JP-Specimen-Serum
//* contained[+] = Example-Contained-JP-Specimen-Serum

// 検査オーダ医師
* contained[+] = Example-Contained-JP-Practitioner-minimum-D002

* status = #final

* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#10000181802 "カリウム"
* code.coding[+] = $JP_CLINS_CodeSystem_JLAC10_CoreLabo_CS#3H015000002326101  "K"
* code.coding[+] = $JP_ObservationLabResultCode_CS#3H015000002326101  "カリウム_血清_電位差測定_定量値"

* code.text = "カリウム"

//* subject.identifier.system = $JP_Insurance_memberID
//* subject.identifier.value = "00012345:あいう:１８７:05"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* effectiveDateTime = "2021-07-05T11:19:41+09:00"
* encounter = Reference(Example-Contained-JP-Encounter-AMB)
* issued = "2021-07-05T15:38:59.000+09:00"

* performer[+] = Reference(Example-Contained-JP-Practitioner-minimum-D002)

* valueQuantity.value = 5.5
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L

* interpretation.coding = $v3-ObservationInterpretation#H "High"
* interpretation.text = "高"

* specimen.display = "血清"
* specimen.type = "Specimen"

* referenceRange.low.value = 3.5
* referenceRange.low.unit = "mmol/L"
* referenceRange.low.system = "http://unitsofmeasure.org"
* referenceRange.low.code = #mmol/L

* referenceRange.high.value = 5.3
* referenceRange.high.unit = "mmol/L"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.high.code = #mmol/L

