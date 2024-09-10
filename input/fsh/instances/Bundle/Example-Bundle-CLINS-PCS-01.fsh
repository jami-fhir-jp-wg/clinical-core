
Instance: Bundle-CLINS-PCS-Example-01
InstanceOf: JP_Bundle_ePCS
Usage: #example

Description: "■ 患者療養計画サマリー　Bundleリソース(CLINS送信用)　#01"

* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS|1"
* language = #ja

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^2024^0123-PCS-203949583949"    //正しい例

* type = #document

* timestamp = "2024-07-07T10:00:00+09:00"

// entry[composition]
* entry[composition].fullUrl = "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
* entry[composition].resource = compositionPCSExample01Inline

// entry[patient]
* entry[patient].fullUrl = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* entry[patient].resource = Example-JP-Patient-eCS-MAKINOInline

// entry[practitioners]　医師IDと医師氏名
* entry[practitioners].fullUrl = "urn:uuid:22212c2d-4837-fd90-c6c5-6ee2a4b7eed2"
* entry[practitioners].resource = Example-JP-Practitioner-eCS-PCS-Author-Inline

// entry[organization]　医療機関と診療科
* entry[organization].fullUrl = "urn:uuid:ee271941-92f0-07cf-7b6e-db8ce65c9543"
* entry[organization].resource = Example-JP-Org-eCS-InstWithDepartment-Inline

// entry[encounter]
* entry[encounter].fullUrl = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
* entry[encounter].resource = Example-JP-Encounter-eCS-AMB-01Inline

// entry[carePlan]
* entry[carePlan].fullUrl = "urn:uuid:6399da0f-77c7-4eb9-fd93-4559d39f1beb"
* entry[carePlan].resource = Example-JP-CarePlan-eCS-HT

// entry[condition]　副傷病　狭心症
* entry[condition][+].fullUrl = "urn:uuid:4c604fad-f24c-da56-d777-8f233bc9f835"
* entry[condition][=].resource = Example-JP-Condition-eCS-ANGINA-NoPrincipal-Active-Inline

// entry[condition]　主傷病　高血圧
* entry[condition][+].fullUrl = "urn:uuid:54b73122-69e7-6864-d6b2-eb8dbf372e65"
* entry[condition][=].resource = Example-JP-Condition-eCS-HT-Principal-Active-Inline

