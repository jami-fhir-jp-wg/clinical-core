Instance: Example-JP-MedReq-PO-SID-28days
InstanceOf: MedicationRequest
Usage: #example
Description: "退院時処方　内服1日1回１回1錠 標準用法フルコード化28日分処方例"
Id: Example_JP_MedReq_PO_SID_28days

* contained[+] = Example-Patient-minimun
* contained[+] = Example_Practitioner_minimun_R001

* meta.lastUpdated = "2021-07-13T02:41:19.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "2"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-AC1282108E9DAA2021071215222803-2"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-AC1282108E9DAA2021071215222803-2"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#DCG "退院処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "退院時処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#127031001 "デエビゴ錠２．５ｍｇ"
* medicationCodeableConcept.coding[+] = $Icode#I1379700 "デエビゴ錠２．５ｍｇ"
* medicationCodeableConcept.text = "デエビゴ錠２．５ｍｇ"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-12T16:19:06+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_R001) "医学 一郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_R001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-AC1282108E9DAA2021071215222803-2"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-12"
* dosageInstruction.text = "1日1回 就寝前 １回 1錠  (１日  1錠) 28　日分,自己調節可"
* dosageInstruction.timing.event = "2021-07-12T00:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 28 'd' "日"
* dosageInstruction.timing.repeat.count = 28
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.coding =  urn:oid:1.2.392.200250.2.2.20#1011100000000000 "内服 １日１回 就寝前"
* dosageInstruction.timing.code.text = "1日1回 就寝前"
* dosageInstruction.route = http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes#PO "口"
* dosageInstruction.route.text = "経口"
* dosageInstruction.method = http://jami.jp/CodeSystem/MedicationMethodBasicUsage#1 "内服"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 28 urn:oid:1.2.392.100495.20.2.101#TAB "錠"
* dispenseRequest.expectedSupplyDuration = 28 'd' "日"