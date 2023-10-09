Instance: Example-JP-MedReq-PO-Fumin-asNeeded-4
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　内服頓用　頓用と1回量をコードで記述する例"
Id: Example_JP_MedReq_PO_Fumin_asNeeded_4

* contained[+] = Example-Patient-minimun
* contained[+] = Example_Practitioner_minimun_D001

* meta.lastUpdated = "2021-07-27T01:31:19.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A172AE334669A2021070515574101-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A172AE334669A2021070515574101-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#127031001 "デエビゴ錠２．５ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1379700 "デエビゴ錠２．５ｍｇ"
* medicationCodeableConcept.text = "デエビゴ錠２．５ｍｇ"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-05T16:00:40+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A172AE334669A2021070515574101-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-05"
* dosageInstruction.text = "不眠時  4　回分"
* dosageInstruction.timing.event = "2021-07-05T08:00:00+09:00"
* dosageInstruction.timing.code.text = "不眠時"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.quantity = 4 urn:oid:1.2.392.100495.20.2.101#TAB "錠"