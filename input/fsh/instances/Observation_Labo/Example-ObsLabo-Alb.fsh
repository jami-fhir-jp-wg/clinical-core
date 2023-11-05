Instance: Example-ObsLabo-Alb
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
* meta.lastUpdated = "2021-07-05T15:38:59.000+09:00"
* meta.profile = "http://test/StructureDefinition/JP-Observation-LabResult-Test"
* identifier.system = "http://fhir/Observation"
* identifier.value = "0008363939-LABOCL202107051150230274225000-0000181800"
* status = #final

* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#0000181800 "アルブミン"
* code.coding[+] = $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000001827101  "ALB"
//* code.coding[+] = $LocalExamHistoryItemCode#0000181800 "ｱﾙﾌﾞﾐﾝ"
* code.text = "アルブミン"
* subject = Reference(Patient/0008363939)

* effectiveDateTime = "2021-07-05T11:19:41+09:00"
* issued = "2021-07-05T15:38:59.000+09:00"
* valueQuantity.value = 80
* valueQuantity.unit = "mg/L"
//* interpretation.coding.version = "4.0.1"
//* interpretation.coding = $v3-ObservationInterpretation#null "範囲未定義、もしくは正常が適用されない"
//* interpretation.text = "範囲未定義、もしくは正常が適用されない"
* specimen = Reference(Specimen/0008363939-2021-40824334-0000181800)
* specimen.type = "Specimen"

