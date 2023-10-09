Instance: Example-JP-MedReq-ExtSkin-Total2
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　外用（塗布）全量処方　1回量をコードで記述できない例"
* id = "Example-JP-MedReq-ExtSkin-Total2"

* contained[+] = Example-Patient-minimun
* contained[+] = Example_Practitioner_minimun_R001

* meta.lastUpdated = "2021-07-05T19:07:58.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A172C13361BBE2021070517301001-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A172C13361BBE2021070517301001-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#XTR "臨時処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "時間外処方"
* medicationCodeableConcept = $Icode#I3240210 "ヒルドイドローション２５ｇ"
* medicationCodeableConcept.text = "ヒルドイドローション２５ｇ"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-05T17:31:48+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_R001) "医学 一郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_R001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A172C13361BBE2021070517301001-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-05"
* dosageInstruction.text = "1日数回 塗布"
* dosageInstruction.timing.event = "2021-07-05T08:00:00+09:00"
* dosageInstruction.timing.code.text = "1日数回 塗布"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 1 urn:oid:1.2.392.100495.20.2.101#HON "本"