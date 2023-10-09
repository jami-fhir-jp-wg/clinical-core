Instance: Example-Patient-minimun-0A17296D729AE72021071219211801-2-1-1
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　内服処方1日1回１回2錠（投与指示あり） 2日分処方例"

* meta.lastUpdated = "2021-07-13T14:24:21.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-0A17296D729AE72021071219211801-2"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-0A17296D729AE72021071219211801-2"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryMERIT9_CS#DCG "退院処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "退院時処方"
* medicationCodeableConcept = $Icode#I1692880 "ラクツロースシロップ６５％「タカタ」"
* medicationCodeableConcept.text = "ラクツロースシロップ６５％「タカタ」"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-13T14:22:09+09:00"
* requester = Reference(Practitioner/Example_Practitioner_minimun_D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example_Practitioner_minimun_D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-0A17296D729AE72021071219211801-2"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-12"
* dosageInstruction.text = "1日2回 朝夕食後 １回 15ｍＬ  (１日  30ｍＬ) 10　日分,便秘時にお飲みください"
* dosageInstruction.timing.event = "2021-07-12T00:00:00+09:00"
* dosageInstruction.timing.repeat.boundsDuration = 10 'd' "日"
* dosageInstruction.timing.repeat.count = 20
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "1日2回 朝夕食後"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dosageInstruction.doseAndRate.doseQuantity = 15 urn:oid:1.2.392.100495.20.2.101#ML "ｍＬ"
* dosageInstruction.doseAndRate.rateRatio.numerator = 30 urn:oid:1.2.392.100495.20.2.101#ML "ｍＬ"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 'd' "日"
* dispenseRequest.quantity = 300 urn:oid:1.2.392.100495.20.2.101#ML "ｍＬ"
* dispenseRequest.expectedSupplyDuration = 10 'd' "日"