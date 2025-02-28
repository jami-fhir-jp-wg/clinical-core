
Instance: Bundle-CLINS-Condition-Example-01
InstanceOf: JP_Bundle_CLINS
Usage: #example

Description: "■ 傷病名2件　Bundleリソース(CLINS送信用)　#01"

* meta.lastUpdated = "2023-11-12T10:00:00+09:00"
* meta.profile[+] = Canonical(http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS|x.x.x-instance)
* meta.profile[+] = Canonical(http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS|x.x.x-instance)


* meta.tag[resourceType].system = $JP_CLINS_BundleResourceType_CS
* meta.tag[resourceType].code = #Condition

* language = #ja

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^2024^0123-IDa-203949583949"    //正しい例
//* identifier.value = "1318814790^2024^0123-ID^-203949583949"    //エラーの例

* type = #collection

* timestamp = "2023-11-12T10:00:00+09:00"

* entry[patient].fullUrl = "urn:uuid:b76ef6f6-f6e3-c110-5039-eee64ef6ab6a"
* entry[patient].resource = InlineExample-JP-Patient-standard

* entry[condition][+].fullUrl = "urn:uuid:f2c5a40b-c7ea-1d52-7e81-7440b1f26f91"
* entry[condition][=].resource = Example-JP-Condition-eCS-cc1-Referral01Inline

* entry[condition][+].fullUrl = "urn:uuid:fd601925-858c-2d96-f061-9de1076d419c"
* entry[condition][=].resource = Example-JP-Condition-eCS-cc2-Referral01Inline

