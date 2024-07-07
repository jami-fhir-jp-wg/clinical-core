Instance: Example-JP-CarePlan-eCS-HT
InstanceOf: JP_CarePlan_ePCS
Usage: #example

Description: "CarePlanリソース　データ作成例"

* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_CarePlan_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192838"

* status = #active
* intent = #plan
* category.coding = $JP_carePlanCategory_CS#followup-plan "外来診療経過中プラン"

* title = "療養計画"
* description = "高血圧について内服を継続してください。\r\n1日30分でも軽い運動を継続しましょう。\r\n"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* period.start = "2024-07-07"
* created = "2024-07-07"

//--------------------------------------------------------------------------------
Instance: Example-JP-CarePlan-eCS-HT-Inline
InstanceOf: JP_CarePlan_ePCS
Usage: #inline

Description: "CarePlanリソース　データ作成例(Inline)"

* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_CarePlan_eCS"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192838"

* status = #active
* intent = #plan
* category.coding = $JP_carePlanCategory_CS#followup-plan "外来診療経過中プラン"

* title = "療養計画"
* description = "高血圧について内服を継続してください。\r\n1日30分でも軽い運動を継続しましょう。\r\n"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* period.start = "2024-07-07"
* created = "2024-07-07"