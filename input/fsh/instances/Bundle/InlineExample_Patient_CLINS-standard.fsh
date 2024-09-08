Instance: InlineExample-JP-Patient-standard
InstanceOf: JP_Patient_eCS
Usage: #inline
Description: "Patientリソース　標準的記述 データ作成例"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"   lang=\"ja\"  xml:lang=\"ja\"> <p>患者ID：000999739</p><p>被保険者患者番号：00012345:あいう:１８７:05</p><p>漢字氏名：マキノ ランマン</p><p>カナ氏名：牧野 爛漫</p><p>電話：03-123-1234</p><p>性別：female</p><p>生年月日：1930-06-28</p><p>高知県高知市五台山4200-6</p></div>"
/*
* extension[eCS_InstitutionNumber].url = $JP_eCS_InstitutionNumber 
* extension[eCS_InstitutionNumber].valueIdentifier.system = $JP_InstitutionNumber
* extension[eCS_InstitutionNumber].valueIdentifier.value = "1318814790"
*/


* meta.profile[+] = $JP_Patient_eCS
* language = #ja


* identifier[+].system = "urn:oid:1.2.392.100495.20.3.51.11318814790"
* identifier[=].value = "000999739"
* identifier[+].system = $JP_Insurance_memberID
* identifier[=].value = "00012345:あいう:１８７:05"
//* identifier[=].value = "50012:あいう:123:05"
//* identifier[=].value = "00012345::１８７:05"
//* identifier[=].value = "00012345:あいう::05"
//* identifier[=].value = "00012345:あいう:１８７:1"


* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "牧野 爛漫"
* name[=].family = "牧野"
* name[=].given = "爛漫"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "マキノ ランマン"
* name[=].family = "マキノ"
* name[=].given = "ランマン"
* telecom.system = #phone
* telecom.value = "03-123-1234"
* telecom.use = #home
* telecom.rank = 1
* gender = #female
* birthDate = "1930-06-28"
* address.text = "高知県高知市五台山4200-6"
* address.postalCode = "781-8125"
* address.city = "高知市"
* address.state = "高知県"
* contact.telecom.system = #phone
* contact.telecom.value = "03-0123-4545   99991"
* contact.telecom.use = #work
* contact.telecom.rank = 2