Instance: 0009997023-0A172BAD00C8F82023091412502302-1-3-1
InstanceOf: MedicationRequest
Usage: #example
* meta.lastUpdated = "2023-09-14T14:03:37.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "3"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009997023-0A172BAD00C8F82023091412502302-1"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1318814790-0009997023-0A172BAD00C8F82023091412502302-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#OHO "院外処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#OHP "外来処方"
* category.text = "院外処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#102562001 "メインテート錠５ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1665200 "メインテート錠５ｍｇ"
* medicationCodeableConcept.text = "メインテート錠５ｍｇ"
* subject = Reference(Patient/0009997023)
* subject.type = "Patient"
* supportingInformation = Reference(Organization/Dept-.32) "循環器内科"
* supportingInformation.type = "Organization"
* authoredOn = "2023-09-14T12:50:36+09:00"
* requester = Reference(Practitioner/D03141) "田中　宏"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/D03141)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009997023-0A172BAD00C8F82023091412502302-1"
* insurance = Reference(Coverage/.２８９０２４４２００)
* insurance.type = "Coverage"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2023-09-14"
* dosageInstruction.text = "1日1回 朝食後 １回 1錠  (１日  1錠) 90　日分"
* dosageInstruction.timing.event = "2023-09-14T00:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 90 'd' "日"
* dosageInstruction.timing.repeat.count = 90
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日1回 朝食後"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 90 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 90 'd' "日"