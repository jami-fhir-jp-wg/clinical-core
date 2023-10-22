Profile: JP_Patient_eCS
Parent: JP_Patient
Id: JP-Patient-eCS
Title: "eCS:JP_Patient_eCS"
Description: "eCS 診療情報・サマリー汎用 Patientリソース（患者情報）プロファイル"


* ^url = $JP_Patient_eCS
* ^status = #active


* name 1.. MS
* name.family 1.. MS
* name.given 1.. MS

* gender 1.. MS
* birthDate 1.. MS
* address 1..1 MS
* address ^definition = "患者の住所。必須。"

* address.text 1.. MS
* address.city 1.. MS
* address.state 1.. MS


