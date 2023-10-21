Instance: Example-JP-MedReq-PO-AsNeeded-LimitMax
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　内服処方頓用発熱時　1回量記述なし、4回分処方例"
* id = "Example-JP-MedReq-PO-AsNeeded-LimitMax"

* contained[+] = Example-Patient-minimun
* contained[+] = Example-Practitioner-minimun-D001

* meta.lastUpdated = "2021-07-07T21:34:05.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A1721342FB30D2021070718303401-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A1721342FB30D2021070718303401-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#ORD "定期処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院定期処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#115228902 "カロナール錠３００"
* medicationCodeableConcept.coding[+] = $Icode#I1187710 "カロナール錠３００"
* medicationCodeableConcept.text = "カロナール錠３００"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-07T18:31:43+09:00"
* requester = Reference(Practitioner/Example-Practitioner-minimun-D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example-Practitioner-minimun-D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A1721342FB30D2021070718303401-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-07"
* dosageInstruction.text = "発熱時  4　回分,37.5度以上で本人希望時　4時間あけて1日3回まで"
* dosageInstruction.timing.event = "2021-07-07T08:00:00+09:00"
* dosageInstruction.timing.code.text = "発熱時"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 4 urn:oid:1.2.392.100495.20.2.101#TAB "錠"