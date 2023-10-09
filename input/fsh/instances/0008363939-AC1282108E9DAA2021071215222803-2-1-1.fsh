Instance: 0009993939-AC1282108E9DAA2021071215222803-2-1-1
InstanceOf: MedicationRequest
Usage: #inline
* meta.lastUpdated = "2021-07-13T02:41:19.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-AC1282108E9DAA2021071215222803-2"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-AC1282108E9DAA2021071215222803-2"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#DCG "退院処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "退院時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#124045001 "タケキャブ錠２０ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1350100 "タケキャブ錠２０ｍｇ"
* medicationCodeableConcept.text = "タケキャブ錠２０ｍｇ"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.41) "老年病科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-12T16:19:06+09:00"
* requester = Reference(Practitioner/R20005) "医学　一郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/R20005)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-AC1282108E9DAA2021071215222803-2"
* note.text = "7/16-20分"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-12"
* dosageInstruction.text = "1日1回 朝食後 １回 1錠  (１日  1錠) 5　日分"
* dosageInstruction.timing.event = "2021-07-12T00:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 5 'd' "日"
* dosageInstruction.timing.repeat.count = 5
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日1回 朝食後"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 5 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 5 'd' "日"