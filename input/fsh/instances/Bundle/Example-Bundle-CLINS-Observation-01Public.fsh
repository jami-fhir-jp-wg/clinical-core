
Instance: Bundle-CLINS-Observations-Example-01-public
InstanceOf: JP_Bundle_CLINS
Usage: #example

Description: "■ 検体検査結果3件　Bundleリソース(CLINS送信用)　#01 生活保護受給者識別子の例"

* meta.lastUpdated = "2023-11-12T10:00:00+09:00"
* meta.profile[+] = Canonical(http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS|x.x.x-instance)
* meta.profile[+] = Canonical(http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS|x.x.x-instance)


* meta.tag[resourceType].system = $JP_CLINS_BundleResourceType_CS
* meta.tag[resourceType].code = #Observation

* language = #ja

* identifier.system = $JP_BundleIdentifier
* identifier.value = "1311234567^2024^0123-IDa-203949583950"    //正しい例
//* identifier.value = "1311234567^2024^0123-ID^-203949583949"    //エラーの例

* type = #collection

* timestamp = "2023-11-12T10:00:00+09:00"

* entry[patient].fullUrl = "urn:uuid:0c435575-2544-d879-3b41-8babddd4cee0"
* entry[patient].resource = InlineExample-JP-Patient-standard-public
    
* entry[observationLaboResult][+].fullUrl = "urn:uuid:e75a46dd-1122-6676-b560-3035a8403942"
* entry[observationLaboResult][=].resource = InlineExample-JP-Obs-LabResult-eCS-Alb-public

* entry[observationLaboResult][+].fullUrl = "urn:uuid:b71697e5-d100-d930-8fc4-7bf63812c384"
* entry[observationLaboResult][=].resource = InlineExample-JP-Obs-LabResult-eCS-K-public

* entry[observationLaboResult][+].fullUrl = "urn:uuid:003ec795-472c-31c7-5a50-8c4b4ab06f9e"
* entry[observationLaboResult][=].resource = InlineExample-JP-Obs-LabResult-eCS-eGFR-public

* entry[observationLaboResult][+].fullUrl = "urn:uuid:6c3a18c2-2388-88c1-0b87-9f966af14702"
* entry[observationLaboResult][=].resource = InlineExample-JP-Obs-LabResult-eCS-UTP-public

