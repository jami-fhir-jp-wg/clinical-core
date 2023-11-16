
Instance: Example-Bundle-ObservationType-001
InstanceOf: Bundle
Usage: #example

Description: "Bundleリソースサンプル（検体検査結果３件）６情報送信用"

* meta.lastUpdated = "2023-11-12T10:00:00+09:00"
* meta.profile[+] = $JP_Bundle_CLINS
* meta.tag.system = $JP_CLINS_BundleResourceType_CS
* meta.tag.code = #Observation

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^00012345:あいう:１８７:01^1038463784937"    //正しい例
//* identifier.value = "1318814790^00012345:あいう:１８７:1^1038463784937"    //エラーの例（枝番が１桁）
//* identifier.value = "5318814790^00012345:あいう:１８７:1^1038463784937"    //エラーの例（医療機関番号の冒頭が5であり得ない）
//* identifier.value = "1348814790^00012345:あいう:１８７:1^1038463784937"    //エラーの例（医療機関番号の3桁目が4であり得ない）
//* identifier.value = "131881479^00012345:あいう:１８７:1^1038463784937"    //エラーの例（医療機関番号が9桁）
//* identifier.value = "1318814790^00012345:あいう:１８７:01^+038463784937"   //エラーの例（一意識別子に禁止記号がはいっている）
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

