Instance: Example-JP-MedReq-PO-SID-90-AMB
InstanceOf: MedicationRequest
Usage: #example
Description: "外来院外処方　内服1日1回１回1錠 標準用法フルコード化90日分処方例"
Id: Example_JP_MedReq_PO_SID_90_AMB

* contained[+] = Example-Patient-minimun
* contained[+] = Example_Practitioner_minimun_D002

* meta.lastUpdated = "2023-09-14T14:03:37.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-0009997023-0A172BAD00C8F82023091412502302-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-0009997023-0A172BAD00C8F82023091412502302-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#OHO "院外処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#OHP "外来処方"
* category.text = "院外処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#121431401 "アムロジピンＯＤ錠１０ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1042350 "アムロジピンＯＤ錠１０ｍｇ"
* medicationCodeableConcept.text = "アムロジピンＯＤ錠１０ｍｇ"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"
* authoredOn = "2023-09-14T12:50:36+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_D002) "田中　宏"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_D002)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-0009997023-0A172BAD00C8F82023091412502302-1"

* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2023-09-14"
* dosageInstruction.text = "1日1回 朝食後 １回 1錠  (１日  1錠) 90日分"
* dosageInstruction.timing.event = "2023-09-14T00:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 90 'd' "日"
* dosageInstruction.timing.repeat.count = 90
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d

* dosageInstruction.timing.code.coding =  urn:oid:1.2.392.200250.2.2.20#1011000400000000 "内服 １日１回 朝食後"
* dosageInstruction.timing.code.text = "1日1回 朝食後"
* dosageInstruction.route = http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes#PO "口"
* dosageInstruction.route.text = "経口"
* dosageInstruction.method = http://jami.jp/CodeSystem/MedicationMethodBasicUsage#1 "内服"

* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 90 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 90 'd' "日"