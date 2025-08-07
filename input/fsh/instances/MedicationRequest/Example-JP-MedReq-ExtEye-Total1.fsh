Instance: Example-JP-MedReq-ExtEye-Total1
InstanceOf: JP_MedicationRequest_eCS
Usage: #example
Description: "【注意喚起例】：薬剤を標準コードで記述していない、入院処方　外用（点眼）全量処方　1回量をコードで記述できない例"
* note.text = "【注意喚起例】（薬剤コードがYJ、規格別成分コードのいずれも存在しない）：入院処方　外用（点眼）全量処方　1回量をコードで記述できない例. "

//* text.status = #additional
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>入院処方　外用（点眼）全量処方　1回量をコードで記述できない例</p> </div>"

* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber_Extension 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1311234567"
* id = "Example-JP-MedReq-ExtEye-Total1"

// * contained[+] = Example-Patient-minimum
* contained[+] = Example-Contained-JP-Encounter-IMP
* contained[+] = Example-Contained-JP-Practitioner-minimum-D001

* meta.lastUpdated = "2021-07-05T19:28:23.000+09:00"
//* meta.profile = $JP_MedicationRequest_eCS
* language = #ja

* identifier[rpNumber].system = $JP_Medication_RPGroupNumber // "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber" // "urn:oid:1.2.392.100495.20.3.81"
* identifier[rpNumber].value = "3"
* identifier[orderInRp].system = $JP_MedicationAdministrationIndex // "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex" 
* identifier[orderInRp].value = "1"
* identifier[requestIdentifierCommon].system = "urn:oid:1.2.392.100495.20.3.11"
* identifier[requestIdentifierCommon].value = "1311234567-9990767-AC12821012A0552021070513070302-1"
* identifier[requestIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[requestIdentifier].value = "1311234567-9990767-AC12821012A0552021070513070302-1"
* status = #completed
* intent = #order
* category.coding[0] = $JP_MedicationCategoryJHSP0007_CS#BDP "持参薬処方"
* category.coding[+] = $JP_MedicationCategoryMERIT9_CS#IHP "入院処方"
* category.text = "持参薬処方"
* medicationCodeableConcept.coding[0] = $JP_MedicationCodeHOT9_CS#118185202 "トラバタンズ点眼液０．００４％"
* medicationCodeableConcept.coding[+] = $Icode#I3198200 "トラバタンズ点眼液０．００４％　２"
* medicationCodeableConcept.text = "トラバタンズ点眼液０．００４％　２"

* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* encounter = Reference(Example-Contained-JP-Encounter-IMP)

* authoredOn = "2021-07-14T10:52:26+09:00"

* requester = Reference(Example-Contained-JP-Practitioner-minimum-D001) "医療 太郎"
* requester.type = "Practitioner"
* recorder = Reference(Example-Contained-JP-Practitioner-minimum-D001)
* recorder.type = "Practitioner"
* groupIdentifier.value = "1311234567-9990767-AC12821012A0552021070513070302-1"
* dosageInstruction.extension[periodOfUse].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
* dosageInstruction.extension[periodOfUse].valuePeriod.start = "2021-07-05"

* dosageInstruction.text = "両眼点眼 1日1回"
* dosageInstruction.timing.event = "2021-07-05T12:00:00+09:00"
* dosageInstruction.timing.code.coding[+] =  $MHLW_MedicationUsage_ePrescription_CS#2H71000000000000 "１日１回　点眼"
* dosageInstruction.timing.code.text = "両眼点眼 1日1回"
* dosageInstruction.doseAndRate.type = $JP_MedicationIngredientStrengthStrengthType_CS#1 "製剤量"
* dispenseRequest.quantity = 1 $JP_MedicationUnitMERIT9_CS#BTL "瓶"