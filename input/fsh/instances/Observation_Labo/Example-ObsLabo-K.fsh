
Instance: Example-ObsLabo-K
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
* meta.lastUpdated = "2021-07-05T15:38:59.000+09:00"
* meta.profile = "http://test/StructureDefinition/JP-Observation-LabResult-Test"
* identifier.system = "http://fhir/Observation"
* identifier.value = "0008363939-LABOCL202107051150230274225000-0000181800"
* status = #final

* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#123 "カリウム"
* code.coding[+] = $JP_CLINS_CodeSystem_CoreLabo_CS#3H015000001826101  "K"
* code.coding[+] = $JP_ObservationLabResultCode_CS#3H015000002326101  "K"   


* code.text = "カリウム"
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