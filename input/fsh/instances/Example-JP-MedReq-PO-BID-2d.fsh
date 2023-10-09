Instance: Example-JP-MedReq-PO-BID-2d
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　内服処方1日1回１回2錠 2日分処方例"
Id: Example_JP_MedReq_PO_BID_2d

* contained[+] = Example-Patient-minimun
* contained[+] = Example_Practitioner_minimun_D001

* meta.lastUpdated = "2021-07-12T19:29:12.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A172B1DB7EF2B2021071211420001-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A172B1DB7EF2B2021071211420001-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#122394101 "デノタスチュアブル配合錠"
* medicationCodeableConcept.coding[+] = $Icode#I1388110 "デノタスチュアブル配合錠"
* medicationCodeableConcept.text = "デノタスチュアブル配合錠"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-12T11:43:12+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A172B1DB7EF2B2021071211420001-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-12"
* dosageInstruction.text = "1日1回 夕食後 １回 2錠  (１日  2錠) 2　日分"
* dosageInstruction.timing.event = "2021-07-12T08:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 3 'd' "日"
* dosageInstruction.timing.repeat.count = 2
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日1回 夕食後"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 2 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 2 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 4 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 2 'd' "日"