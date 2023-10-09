Instance: 0009993939-0A172220B35F172021071410514001-1-1-1
InstanceOf: MedicationRequest
Usage: #example
* meta.lastUpdated = "2021-07-14T16:14:35.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009993939-0A172220B35F172021071410514001-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009993939-0A172220B35F172021071410514001-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "入院臨時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#104937401 "新レシカルボン坐剤"
* medicationCodeableConcept.coding[+] = $Icode#I3344500 "新レシカルボン坐剤"
* medicationCodeableConcept.text = "新レシカルボン坐剤"
* subject = Reference(Patient/0009993939)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.41) "老年病科"
* supportingInformation.type = "Organization"
* authoredOn = "2021-07-14T10:52:26+09:00"
* requester = Reference(Practitioner/R20005) "医学　一郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/R20005)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009993939-0A172220B35F172021071410514001-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-14"
* dosageInstruction.text = "坐薬 便秘時 1回1個 肛門へ挿入  "
* dosageInstruction.timing.event = "2021-07-14T08:00:00+09:00"
* dosageInstruction.timing.code.text = "坐薬 便秘時 1回1個 肛門へ挿入"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 1 urn:oid:1.2.392.100495.20.2.101#KO "個"