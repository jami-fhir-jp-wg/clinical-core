// ObservationCommonリソース

Instance: Example-JP-Obs-Common-eCS-PS-textOnly01
InstanceOf: JP_Observation_Common_eCS
Usage: #example
  
Description: "Observationリソース　（診療情報提供書　腹部所見テキスト）"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_Common_eCS"
* language = #ja


* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837"
* status = #final

* category[+] = http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS#exam "Exam"

* code.text = "腹部所見"

* subject.reference = "Patient/Example-JP-Patient-eCS-MAKINO"
* performer[+] = Reference(Example-Contained-JP-Practitioner-minimun-D002)

* valueString = "上腹部圧痛あり、その他特に所見なし。"

