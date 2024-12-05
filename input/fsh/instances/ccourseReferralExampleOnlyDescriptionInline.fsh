// DocumentReferenceリース
// JP_DocumentReference
// JP_DocumentReference_eCS

Instance: Example-JP-DocRef-eCS-cccourseRef01-onlyDescriptionInline
InstanceOf: JP_DocumentReference_eCS
Usage: #inline
Description: "DocumentReferenceリソース　（診療情報提供書　臨床経過をdescriptionのみでstring記述）"

* meta.lastUpdated = 2024-11-06T00:00:00+09:00
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_eCS"
* language = #ja

* status = #current

* type.coding.system = "http://loinc.org"
* type.coding.code = #11506-3
* type.coding.display = "Progress note"


* description = "⾷欲不振と⼼窩部痛を認めた．悪⼼嘔吐がみられ，吐物に新鮮⾎が混⼊していたため救急外来を受診し，緊急⼊院となった．<br/>⼊院時現症:⾝⻑162.5cm，体重45.2kg，⾎圧80/60mmHg，脈拍80/分，整，体温36.4．眼瞼結膜に貧⾎を認めた．<br/>腹部は平坦，軟で腫瘤や圧痛なし．腸蠕動⾳正常．<br/>⼊院時検査成績(Table1):末梢⾎液検査で，Hb5.0g/dl，Ht15.5%と著明な貧⾎を認めた．<br/>上部消化管内視鏡検査:⼊院翌⽇の検査では，残胃吻合部後壁に約2.5cmの潰瘍形成を認め，潰瘍底に凝⾎塊の付着した露出⾎管と思われる隆起がみられたが，新鮮出⾎はなく，抗潰瘍薬投与による経過観察となった。"


* content[0].attachment.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-nullFlavor"
* content[0].attachment.extension[=].valueCode = #NI

