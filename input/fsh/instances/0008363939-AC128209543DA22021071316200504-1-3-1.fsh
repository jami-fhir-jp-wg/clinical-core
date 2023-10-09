Instance: 0009993939-AC128209543DA22021071316200504-1-3-1
InstanceOf: MedicationRequest
Usage: #inline
* meta.lastUpdated = "2021-07-13T19:21:18.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "3"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-AC128209543DA22021071316200504-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-AC128209543DA22021071316200504-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#BDP "持参薬処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "持参薬処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#104195801 "ミヤＢＭ錠（２０ｍｇ／錠）"
* medicationCodeableConcept.coding[+] = $Icode#I1656900 "ミヤＢＭ錠（２０ｍｇ／錠）"
* medicationCodeableConcept.text = "ミヤＢＭ錠（２０ｍｇ／錠）"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.41) "老年病科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-13T16:23:57+09:00"
* requester = Reference(Practitioner/D41190) "医療　太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/D41190)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-AC128209543DA22021071316200504-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-13"
* dosageInstruction.text = "1日3回 毎食後 １回 2錠  (１日  6錠) 28　日分"
* dosageInstruction.timing.event = "2021-07-13T12:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 29 'd' "日"
* dosageInstruction.timing.repeat.count = 84
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日3回 毎食後"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 2 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 6 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 168 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 28 'd' "日"