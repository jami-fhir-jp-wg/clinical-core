Instance: Example-JP-Obs-LabResult-eCS-eGFR-testRef
InstanceOf: JP_Observation_LabResult_eCS-testRef
Usage: #example
Description: "Observationリソース（検体検査結果）eGFR　75.0 ml/min/1.73m2 　　ローカルコード=0000181910 一般項目JLACコードJLAC10=8A065000002391901 検体：血清"
* note.text = "Observationリソース（検体検査結果）eGFR　75.0 ml/min/1.73m2 　　ローカルコード=0000181910 一般項目JLACコードJLAC10=8A065000002391901 検体：血清"

* meta.lastUpdated = "2021-07-09T14:11:13.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"

* language = #ja


* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber_Extension 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1311234567"

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
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#0000181910 "eGFR"
* code.coding[+] = $JP_ObservationLabResultCode_CS#8A065000002391901  "eGFR"   

* code.text = "推算GFR"

//* subject.identifier.system = $JP_Insurance_memberID
//* subject.identifier.value = "00012345:あいう:１８７:05"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* effectiveDateTime = "2021-07-05T11:19:41+09:00"
* encounter = Reference(Example-Contained-JP-Encounter-AMB)
* issued = "2021-07-05T15:38:59.000+09:00"

* performer[+] = Reference(Example-Contained-JP-Practitioner-minimum-D002)

* valueQuantity.value = 75.0
* valueQuantity.unit = "ml/min/1.73m2"
//* interpretation.coding.version = "4.0.1"
//* interpretation.coding = $v3-ObservationInterpretation#null "範囲未定義、もしくは正常が適用されない"
//* interpretation.text = "範囲未定義、もしくは正常が適用されない"
//* specimen = Reference(Specimen/Example-JP-Specimen-Serum)
* specimen.display = "血清"
* specimen.type = "Specimen"

* referenceRange.low.extension.url = "http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_SimpleQuantityWithComparator"
* referenceRange.low.extension.valueCode = #>

* referenceRange.low.value = 68.0
* referenceRange.low.unit = "ml/min/1.73m2"

* referenceRange.high.extension.url = "http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_SimpleQuantityWithComparator"
* referenceRange.high.extension.valueCode = #<

* referenceRange.high.value = 110.0
* referenceRange.high.unit = "ml/min/1.73m2"
