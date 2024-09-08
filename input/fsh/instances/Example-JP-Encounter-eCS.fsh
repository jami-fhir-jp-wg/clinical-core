// JP_Encounter_eCS
Instance: Example-JP-Encounter-eCS-01
InstanceOf: JP_Encounter_eCS
Usage: #example
Description: "Encounterリソース 必須要素だけの最低限の入院外来区分情報 データ作成例"


* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
* meta.profile[+] = $JP_Encounter_eCS
* language = #ja


* status = #finished
* class.system = $v3-ActCode
* class.code = #AMB


* class.display = "外来"
