
Instance: Bundle-CLINS-Observations-Example-01
InstanceOf: Bundle
Usage: #example

Description: "■ 検体検査結果3件　Bundleリソース(CLINS送信用)　#01"

* meta.lastUpdated = "2023-11-12T10:00:00+09:00"
* meta.profile[+] = $JP_Bundle_CLINS
* meta.tag.system = $JP_CLINS_BundleResourceType_CS
* meta.tag.code = #Observation

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^2024^0123-IDa-203949583949"    //正しい例
//* identifier.value = "1318814790^2024^0123-ID^-203949583949"    //エラーの例

* type = #collection

* timestamp = "2023-11-12T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:b76ef6f6-f6e3-c110-5039-eee64ef6ab6a"
* entry[=].resource = InlineExample-JP-Patient-standard

* entry[+].fullUrl = "urn:uuid:f2c5a40b-c7ea-1d52-7e81-7440b1f26f91"
* entry[=].resource = InlineExample-JP-Obs-LabResult-eCS-Alb

* entry[+].fullUrl = "urn:uuid:fd601925-858c-2d96-f061-9de1076d419c"
* entry[=].resource = InlineExample-JP-Obs-LabResult-eCS-K

* entry[+].fullUrl = "urn:uuid:2ac56975-1610-5496-eb0e-c2a5f2f01a62"
* entry[=].resource = InlineExample-JP-Obs-LabResult-eCS-eGFR

* entry[+].fullUrl = "urn:uuid:e3a7af80-ca1f-5638-dc97-00fa9458fe1c"
* entry[=].resource = InlineExample-JP-Obs-LabResult-eCS-UTP

