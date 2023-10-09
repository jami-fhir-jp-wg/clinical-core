Instance: 0009993939-0A172AE334669A2021070515574102-1-2-1
InstanceOf: MedicationRequest
Usage: #inline
* meta.lastUpdated = "2021-07-24T20:49:28.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "2"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-0A172AE334669A2021070515574102-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-0A172AE334669A2021070515574102-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#113876402 "ルーラン錠４ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1741900 "ルーラン錠４ｍｇ"
* medicationCodeableConcept.text = "ルーラン錠４ｍｇ"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.41) "老年病科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-05T16:02:06+09:00"
* requester = Reference(Practitioner/D41190) "医療　太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/D41190)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-0A172AE334669A2021070515574102-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-05"
* dosageInstruction.text = "医師指示(不穏時)  2　回分"
* dosageInstruction.timing.event = "2021-07-05T08:00:00+09:00"
* dosageInstruction.timing.code.text = "医師指示(不穏時)"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"