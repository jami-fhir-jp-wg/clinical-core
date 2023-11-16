
Instance: Example-Bundle-ObservationType-001
InstanceOf: Bundle
Usage: #example

Description: "Bundleリソースサンプル（検体検査結果３件）６情報送信用"

* meta.lastUpdated = "2023-11-12T10:00:00+09:00"
* meta.profile[+] = $JP_Bundle_CLINS
* meta.tag.system = $JP_CLINS_BundleResourceType_CS
* meta.tag.code = #Observation

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^00012345:あいう:１８７:1^1038463784e937"
* type = #collection

* timestamp = "2023-11-12T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
* entry[=].resource = InlineExample-Patient-standard

* entry[+].fullUrl = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* entry[=].resource = InlineExample-ObsLabo-Alb

* entry[+].fullUrl = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
* entry[=].resource = InlineExample-ObsLabo-K

* entry[+].fullUrl = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* entry[=].resource = InlineExample-ObsLabo-eGFR

