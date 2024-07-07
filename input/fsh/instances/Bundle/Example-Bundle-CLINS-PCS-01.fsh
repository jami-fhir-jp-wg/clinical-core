
Instance: Bundle-CLINS-PCS-Example-01
InstanceOf: JP_Bundle_ePCS
Usage: #example

Description: "■ 患者療養計画サマリー　Bundleリソース(CLINS送信用)　#01"

* meta.lastUpdated = "2024-07-07T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS"

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^2024^0123-PCS-203949583949"    //正しい例

* type = #document

* timestamp = "2024-07-07T10:00:00+09:00"

// entry[composition]
* entry[+].fullUrl = "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
* entry[=].resource = compositionPCSExample01Inline

// entry[patient]
* entry[+].fullUrl = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* entry[=].resource = Example-JP-Patient-eCS-MAKINOInline

// entry[practitioners]　医師IDと医師氏名
* entry[+].fullUrl = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* entry[=].resource = Example-JP-Practitioner-eCS-ReferralFrom01Inline

// entry[organization]　医療機関
* entry[+].fullUrl = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* entry[=].resource = Example-JP-Org-eCS-Inst-Referral01Inline

// entry[organization] 診療科
* entry[+].fullUrl = "urn:uuid:a44951be-cdaa-4c53-9e35-6be013da5441"
* entry[=].resource = Example-JP-Org-eCS-ReferralTo01Inline

// entry[encounter]
* entry[+].fullUrl = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
* entry[=].resource = Example-JP-Encounter-eCS-AMB-01Inline

// entry[carePlan]
* entry[+].fullUrl = "urn:uuid:6399da0f-77c7-4eb9-fd93-4559d39f1beb"
* entry[=].resource = Example-JP-CarePlan-eCS-HT

// entry[condition]　副傷病　狭心症
* entry[+].fullUrl = "4c604fad-f24c-da56-d777-8f233bc9f835"
* entry[=].resource = Example-JP-Condition-eCS-ANGINA-NoPrincipal-Active-Inline

// entry[condition]　主傷病　高血圧
* entry[+].fullUrl = "urn:uuid:54b73122-69e7-6864-d6b2-eb8dbf372e65"
* entry[=].resource = Example-JP-Condition-eCS-HT-Principal-Active-Inline

