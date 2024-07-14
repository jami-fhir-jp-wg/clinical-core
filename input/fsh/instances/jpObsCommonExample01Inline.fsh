// ObservationCommonリソース

Instance: psExample-JP-Obs-Common-eCS-textOnly01Inline
InstanceOf: JP_Observation_Common_eCS
Usage: #inline

Description: "ObservationCommon検査結果　現症例"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_Common_eCS"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS#exam "Exam"

* code.text = "腹部所見"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* valueString = "上腹部圧痛あり、その他特に所見なし。"


Instance: Example-JP-Obs-Common-eCS-textOnly01Inline
InstanceOf: JP_Observation_Common_eCS
Usage: #inline

Description: "ObservationCommon検査結果　例"


* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_Common_eCS"
* language = #ja

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS#exam "Exam"

* code.text = "腹部所見"

// * subject.reference = "Example-JP-Patient-eCS-MAKINOInline"
* subject.reference = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"

* valueString = "上腹部圧痛あり、グル音亢進。"



