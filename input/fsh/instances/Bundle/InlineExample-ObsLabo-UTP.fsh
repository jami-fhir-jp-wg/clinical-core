Instance: InlineExample-ObsLabo-UTP
InstanceOf: JP_Observation_LabResult_eCS
Usage: #inline
Description: "検体検査結果　尿蛋⽩(定性)　± 　　ローカルコード=1A990000000190153 臨床検査項目基本コードJLAC10=1A990000000190153 検体：尿　診療科：循環器診療科"

* meta.lastUpdated = "2021-07-09T14:11:13.000+09:00"
* meta.profile = $JP_Observation_LabResult_eCS

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"

* extension[eCS_Department].url = $JP_eCS_Department
* extension[eCS_Department].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器科"
* extension[eCS_Department].valueCodeableConcept.text = "循環器診療科"


* identifier[resourceIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[resourceIdentifier].value = "1318814790-9990767-OBSLAB13883807672021070909210705-2"

// 入院外来区分
* contained[+] = Example-JP-Encounter-AMB

// 検体材料　* contained[+] = Example-JP-Specimen-Serum
//* contained[+] = Example-JP-Specimen-Serum

* status = #final

* category[laboratory].coding = $JP_SimpleObservationCategory_CS#laboratory
* code.coding[+] = http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS#1A990000000190153 "尿蛋⽩(定性)"
* code.coding[+] = $JP_CLINS_CodeSystem_CoreLabo_CS#1A990000000190153  "U-TP-定性半定量"

* code.text = "尿蛋⽩(定性)"
/*
* subject.identifier.system = $JP_Insurance_memberID
* subject.identifier.value = "00012345:あいう:１８７:05"
*/
* subject.reference = "urn:uuid:b76ef6f6-f6e3-c110-5039-eee64ef6ab6a"

* effectiveDateTime = "2021-07-05T11:19:41+09:00"
* encounter = Reference(Example-JP-Encounter-AMB)
* issued = "2021-07-05T15:38:59.000+09:00"
* valueCodeableConcept.coding = urn:oid:1.2.392.200119.6.2102#2 "±"
* valueCodeableConcept.text = "(±)"

* specimen.display = "尿"
* specimen.type = "Specimen"