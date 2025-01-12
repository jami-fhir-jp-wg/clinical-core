Instance: Example-JP-Obs-LabResult-eCS-HbsAg
InstanceOf: JP_Observation_LabResult_eCS
Usage: #example
Description: "Observationリソース（検体検査結果）HBs抗原(定性)　臨床検査項目基本コードJLAC10=5F016141002306311 検体：血清(埋込みリソース）　診療科：循環器診療科　長期保存フラグ設定"
* note.text = "Observationリソース（検体検査結果）HBs抗原(定性)　臨床検査項目基本コードJLAC10=5F016141002306311 検体：血清(埋込みリソース）　診療科：循環器診療科　長期保存フラグ設定"
//* #5F016141002306311  "HBs抗原(定性) 1：陽性、2：陰性"

* meta.lastUpdated = "2021-07-09T14:11:13.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
* meta.profile = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS|x.x.x-instance"
* meta.tag[lts] = $JP_ehrshrs_indication_CS#LTS "長期保存"
* language = #ja


* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"

* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "1318814790-9990767-OBSLAB13883807672021070909210705-2"

//* contained[+] = Example-Contained-JP-Patient-eCS-01-Contained
* contained[+] = Example-Contained-JP-Encounter-AMB

// 検体材料　* contained[+] = Example-Contained-JP-Specimen-Serum
* contained[+] = Example-Contained-JP-Specimen-Serum

// 検査オーダ医師
* contained[+] = Example-Contained-JP-Practitioner-minimun-D002

* status = #final

* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#5F016141002306311 "HBs抗原(定性)"
* code.coding[+] = $JP_CLINS_CodeSystem_JLAC10_InfectionLabo_CS#5F016141002306311  "HBs抗原(定性)"

* code.text = "HBs抗原(定性)"
//* subject.identifier.system = $JP_Insurance_memberID
//* subject.identifier.value = "00012345:あいう:１８７:05"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* effectiveDateTime = "2021-07-05T11:19:41+09:00"
* encounter = Reference(Example-Contained-JP-Encounter-AMB)
* issued = "2021-07-05T15:38:59.000+09:00"

* performer[+] = Reference(Example-Contained-JP-Practitioner-minimun-D002)

* valueString = "1"
* specimen = Reference(Specimen/Example-Contained-JP-Specimen-Serum)
* specimen.type = "Specimen"

