Instance: 0009993939-0A1721342FB30D2021070718303401-1-1-1
InstanceOf: MedicationRequest
Usage: #inline
* meta.lastUpdated = "2021-07-07T21:34:05.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-0A1721342FB30D2021070718303401-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-0A1721342FB30D2021070718303401-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#XTR "臨時処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "時間外処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#115228902 "カロナール錠３００"
* medicationCodeableConcept.coding[+] = $Icode#I1187710 "カロナール錠３００"
* medicationCodeableConcept.text = "カロナール錠３００"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.41) "老年病科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-07T18:31:43+09:00"
* requester = Reference(Practitioner/D41190) "医療　太郎""
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/D41190)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-0A1721342FB30D2021070718303401-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-07"
* dosageInstruction.text = "発熱時  4　回分,37.5度以上で本人希望時　4時間あけて1日3回まで"
* dosageInstruction.timing.event = "2021-07-07T08:00:00+09:00"
* dosageInstruction.timing.code.text = "発熱時"
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 4 urn:oid:1.2.392.100495.20.2.101#TAB "錠"