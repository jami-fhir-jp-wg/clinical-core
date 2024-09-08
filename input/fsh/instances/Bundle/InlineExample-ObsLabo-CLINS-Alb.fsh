Instance: InlineExample-JP-Obs-LabResult-eCS-Alb
InstanceOf: JP_Observation_LabResult_eCS
Usage: #inline
Description: "Observationリソース（検体検査結果）アルブミン　3.9　mg/L　　ローカルコード=0000181800 臨床検査項目基本コードJLAC10=3A015000001827101 検体：血清(埋込みリソース）　診療科：循環器診療科"

* meta.lastUpdated = "2021-07-09T14:11:13.000+09:00"
* meta.profile = $JP_Observation_LabResult_eCS
* language = #ja


* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "1318814790-9990767-OBSLAB13883807672021070909210705-2"

// 入院外来区分
* contained[+] = Example-Contained-JP-Encounter-AMB

// 検体材料　* contained[+] = Example-Contained-JP-Specimen-Serum
* contained[+] = Example-Contained-JP-Specimen-Serum

// 検査オーダ医師
* contained[+] = Example-Contained-JP-Practitioner-minimun-D002

* status = #final

* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#0000181800 "アルブミン"
* code.coding[+] = $JP_CLINS_CodeSystem_CoreLabo_CS#3A015000001827101  "ALB"
//* code.coding[+] = $LocalExamHistoryItemCode#0000181800 "ｱﾙﾌﾞﾐﾝ"

* code.text = "アルブミン"

* subject.reference = "urn:uuid:b76ef6f6-f6e3-c110-5039-eee64ef6ab6a"

* effectiveDateTime = "2021-07-05T11:19:41+09:00"
* encounter = Reference(Example-Contained-JP-Encounter-AMB)

* issued = "2021-07-05T15:38:59.000+09:00"
* performer[+] = Reference(Example-Contained-JP-Practitioner-minimun-D002)
* valueQuantity.value = 3.9
* valueQuantity.unit = "mg/L"
//* interpretation.coding.version = "4.0.1"
//* interpretation.coding = $v3-ObservationInterpretation#null "範囲未定義、もしくは正常が適用されない"
//* interpretation.text = "範囲未定義、もしくは正常が適用されない"
* specimen = Reference(Specimen/Example-Contained-JP-Specimen-Serum)
* specimen.type = "Specimen"

