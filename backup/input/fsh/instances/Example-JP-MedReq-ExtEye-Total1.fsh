Instance: Example-JP-MedReq-ExtEye-Total1
InstanceOf: MedicationRequest
Usage: #example
Description: "入院処方　外用（点眼）全量処方　1回量をコードで記述できない例"
* id = "Example-JP-MedReq-ExtEye-Total1"

* contained[+] = Example-Patient-minimun
* contained[+] = Example-Practitioner-minimun-D001

* meta.lastUpdated = "2021-07-05T19:28:23.000+09:00"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
* identifier[0].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[=].value = "3"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[=].value = "1"
* identifier[+].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[=].value = "1318814790-9990767-AC12821012A0552021070513070302-1"
* identifier[+].system = $JP_ResourceInstanceIdentifier
* identifier[=].value = "1318814790-9990767-AC12821012A0552021070513070302-1"
* status = #active
* intent = #order
* category.coding[0] = $JP_MedicationCategoryJHSP0007_CS#BDP "持参薬処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "持参薬処方"
* medicationCodeableConcept.coding[0] = urn:oid:1.2.392.200119.4.403.1#118185202 "トラバタンズ点眼液０．００４％　２"
* medicationCodeableConcept.coding[+] = $Icode#I3198200 "トラバタンズ点眼液０．００４％　２"
* medicationCodeableConcept.text = "トラバタンズ点眼液０．００４％　２"
* subject = Reference(Patient/Example-Patient-minimun)
* subject.type = "Patient"

* authoredOn = "2021-07-05T13:08:22+09:00"
* requester = Reference(Practitioner/Example-Practitioner-minimun-D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Practitioner/Example-Practitioner-minimun-D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1318814790-9990767-AC12821012A0552021070513070302-1"
* dosageInstruction.extension.url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension.valuePeriod.start = "2021-07-05"
* dosageInstruction.text = "両眼点眼 1日1回  "
* dosageInstruction.timing.event = "2021-07-05T12:00:00+09:00"
* dosageInstruction.timing.code.text = "両眼点眼 1日1回"
* dosageInstruction.doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "製剤量"
* dispenseRequest.quantity = 1 urn:oid:1.2.392.100495.20.2.101#BTL "瓶"