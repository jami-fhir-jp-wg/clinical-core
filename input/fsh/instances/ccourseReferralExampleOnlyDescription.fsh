// DocumentReferenceリース
// JP_DocumentReference
// JP_DocumentReference_eCS

Instance: Example-JP-DocRef-eCS-clinical-ccourse-Referral-01-onlyDescription
InstanceOf: JP_DocumentReference_eCS
Usage: #example
  
Description: "DocumentReferenceリソース　（診療情報提供書　臨床経過をdescriptionのみでstring記述）"

* meta.lastUpdated = 2024-11-06T00:00:00+09:00
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_eCS"
* language = #ja

* status = #current

* type.coding.system = "http://loinc.org"
* type.coding.code = #11506-3
* type.coding.display = "Progress note"


* description = "臨床経過：入院後経過観察をしていたが、特に症状悪化することもなく、3日目に軽快退院した。"

* content[0].attachment.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-nullFlavor"
* content[0].attachment.extension[=].valueCode = #NI

