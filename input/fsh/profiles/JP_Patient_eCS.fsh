Profile: JP_Patient_eCS
Parent: JP_Patient
Id: JP-Patient-eCS
Title: "JP_Patient_eCS"
Description: "診療情報サマリー用　Patientリソース（患者情報）プロファイル"
* ^url = $JP_Patient_eClinicalSummary
* ^status = #active
* ^date = "2023-03-31"
* . ^short = "診療情報コアサマリーにおける患者情報の格納に使用する"
* . ^definition = "診療情報コアサマリー・厚労省6情報などにおける患者情報の格納に使用する"
* . ^comment = "他のリソースに埋め込まれる（contained要素）患者情報のためには、別のプロファイルが用意されている。"

* meta.lastUpdated 0.. MS
* meta.lastUpdated ^short = "最終更新日"
* meta.lastUpdated ^definition = "この患者情報の内容がサーバ上で最後に格納または更新された日時、またはこのFHIRリソースが生成された日時"


* identifier 1.. MS
* identifier.assigner.reference ^short = "患者番号を付番した医療機関情報（Organization）への参照"
* identifier.assigner.reference ^definition = "患者番号を付番した医療機関情報（Organization）への参照"
* identifier.assigner.reference
* identifier.system 1..1
* identifier.system  ^short = "医療機関患者番号のためのsystem値(url)、または険者・被保険者番号情報のためのsystem値(url)"
* identifier.system  ^definition = "医療機関患者番号のためのsystem値(url)、または険者・被保険者番号情報のためのsystem値(url)"
* identifier.value 1..1
* identifier.value ^short = "医療機関での患者番号、または保険者・被保険者番号情報"
* identifier.value ^definition = "医療機関での患者番号、または保険者・被保険者番号情報"
* identifier.value ^comment = "リソースをオン資ネットワークに送信する場合には、保険者・被保険者番号情報は必須。"
//""extension('http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation')""
* name 1.. MS

* name.id ..0
* name ^short =  "漢字またはカナの名前情報"
* name ^definition =  "漢字またはカナの名前情報。extension.url='http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation' の拡張のvalueCode = IDE:漢字名前、SYL:カナ名前　で区別される"


* name.text 1..1    // 名前　半角空白で姓と名を区切る
* name.family 1..1  // 姓
* name.given 1..1  // 名
* name.prefix ..0
* name.suffix ..0
* name.period ..0

* gender 1.. MS
* birthDate 1.. MS
* address 0..1 
* address ^definition = "An address for the individual.\r\n患者の住所。必須。"
* address.text 1.. 
* address.postalCode 1.. 
* address.country 0.. 

