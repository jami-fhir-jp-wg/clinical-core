Instance: Example-Patient-minimun-0A1720D83807672021070909210705-2-1-1
InstanceOf: MedicationRequest
Usage: #example
Description: "外来院外処方　内服1日1回１回1錠 標準用法コード化90日分処方例　（発行診療科、オーダ番号記載あり）"

* meta.lastUpdated = "2021-07-09T14:11:13.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"

* extension[0].url = $JP_MedicationRequest_eCS_RequestDepartment
* extension[=].valueCodeableConcept.coding[+] = $JP_Department_SsMix_CS#08 "循環器内科"
* extension[=].valueCodeableConcept.text = "循環器診療科"

* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A1720D83807672021070909210705-2"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A1720D83807672021070909210705-2"
* identifier[+].system = $JP_MedicationRequest_eCS_RequestDepartment
* identifier[=].value = "HISMED0A1720D99907672021070909210705"

* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#104195801 "ミヤＢＭ錠"
* medicationCodeableConcept.coding[+] = $Icode#I1656900 "ミヤＢＭ錠（２０ｍｇ／錠）"
* medicationCodeableConcept.coding[+] = $JP_MedicationCodeYJ_CS#2316009F1022 "ミヤＢＭ錠"
* medicationCodeableConcept.text = "ミヤＢＭ錠（２０ｍｇ／錠）"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-09T09:47:14+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A1720D83807672021070909210705-2"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-09"
* dosageInstruction.text = "1日3回 毎食後 １回 2錠  (１日  6錠) 2　日分"
* dosageInstruction.timing.event = "2021-07-09T08:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 3 'd' "日"
* dosageInstruction.timing.repeat.count = 6
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d

* dosageInstruction.timing.code.coding =  urn:oid:1.2.392.200250.2.2.20#1013044400000000 "内服 １日３回 朝昼夕食後"
* dosageInstruction.timing.code.text = "1日1回 毎食後"

* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 2 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 6 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 12 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 2 'd' "日"