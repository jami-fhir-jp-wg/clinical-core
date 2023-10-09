Instance: Example-JP-MedReq-ExtAnus-AsNeeded-Total1
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　外用(坐剤)頓用全量処方　頓用と1回量をコードで記述できない例"
Id: Example_JP_MedReq_ExtAnus_AsNeeded_Total1

* contained[+] = Example-Patient-minimun
* contained[+] = Example-JP-Encounter-IMP
* contained[+] = Example_Practitioner_minimun_R001

* meta.lastUpdated = "2021-07-14T16:14:35.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"

* extension[0].url = $JP_MedicationRequest_eCS_RequestDepartment
* extension[=].valueCodeableConcept = $JP_Department_SsMix_CS#01 "内科"

* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A172220B35F172021071410514001-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A172220B35F172021071410514001-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#104937401 "新レシカルボン坐剤"
* medicationCodeableConcept.coding[+] = $Icode#I3344500 "新レシカルボン坐剤"
* medicationCodeableConcept.text = "新レシカルボン坐剤"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"
* encounter = Reference(Example-JP-Encounter-IMP)

* authoredOn = "2021-07-14T10:52:26+09:00"

* requester = Reference(Practitioner/Example_Practitioner_minimun_R001) "医学 一郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_R001) "医学 一郎"
* recorder.type = "Practitioner"

* groupIdentifier.value = "1318814790-9990767-0A172220B35F172021071410514001-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-14"
* dosageInstruction.text = "坐薬 便秘時 1回1個 肛門へ挿入"
* dosageInstruction.timing.event = "2021-07-14T08:00:00+09:00"
* dosageInstruction.timing.code.text = "坐薬 便秘時 1回1個 肛門へ挿入"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 10 urn:oid:1.2.392.100495.20.2.101#KO "個"