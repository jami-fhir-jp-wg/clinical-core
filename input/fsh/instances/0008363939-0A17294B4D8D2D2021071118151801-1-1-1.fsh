Instance: 0009993939-0A17294B4D8D2D2021071118151801-1-1-1
InstanceOf: MedicationRequest
Usage: #example
* meta.lastUpdated = "2021-07-11T19:18:06.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-0A17294B4D8D2D2021071118151801-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-0A17294B4D8D2D2021071118151801-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#XTR "臨時処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "時間外処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#103346501 "硝酸イソソルビドテープ４０ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I3255050 "硝酸イソソルビドテープ４０ｍｇ"
* medicationCodeableConcept.text = "硝酸イソソルビドテープ４０ｍｇ"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.41) "老年病科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-11T18:16:16+09:00"
* requester = Reference(Practitioner/D41144) "東京　美奈子"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/D41144)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-0A17294B4D8D2D2021071118151801-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-11"
* dosageInstruction.text = "高血圧時に 1日2回まで  "
* dosageInstruction.timing.event = "2021-07-11T08:00:00+09:00"
* dosageInstruction.timing.code.text = "高血圧時に 1日2回まで"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 5 urn:oid:1.2.392.100495.20.2.101#SHT "枚"