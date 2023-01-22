Profile: JP_Patient_ccs
Parent: JP_Patient
Id: JP-Patient-ccs
Description: "対象患者のPatientプロファイル　JP_Patientの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Patient_ccs"
* ^status = #active

* meta.source  ^short = "【SS-MIX2】\"http://jpfhir.jp/ssmix2std/<MSH-21-1>/医療機関識別OID番号\"\r\n【電子カルテ】適宜設定してよいが、最後のパートに医療機関番号11桁を設定すること。"
* meta.source  ^definition = "【SS-MIX2】\"http://jpfhir.jp/ssmix2std/<MSH-21-1>/医療機関識別OID番号\"\r\n【電子カルテ】適宜設定してよいが、最後のパートに医療機関番号11桁を設定すること。"

* meta.profile  ^short = "【CCS】固定値：\"http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient_ccs\""
* meta.profile  ^definition = "【CCS】固定値：\"http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient_ccs\""

* text.status ^short = "【CCS】固定値：generated テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status ^definition = "【CCS】固定値：generated テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"

* text.div ^short = "【CCS】XHTML形式。"
* text.div ^definition = "【CCS】本リソースの構造化情報から生成したテキスト表現をいれてもよい。\r\nXHTML形式。\r\n例：田中一郎、男、1980/7/1生、東京都中央区日本橋１－１－１, 03_1234_5678"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* identifier 1.. MS
* identifier ^short = "【CCS】患者番号の情報"
* identifier ^definition = "【CCS】患者番号の情報"

* identifier.system 1.. MS
* identifier.system  ^short = "【CCS】固定値:\"urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号\""
* identifier.system ^definition = "【CCS】固定値:\"urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号\""
* identifier.system ^comment = "医療機関識別OID番号;患者IDの発行者である機関の医療機関コード（１０桁）の先頭に１をつけた11桁"

* identifier.value 1.. MS
* identifier.value  ^short = "【SS-MIX2】<PID-3-1> (患者ID)\r\n【電子カルテ】当該医療機関における患者ID。"
* identifier.value  ^definition = "【SS-MIX2】<PID-3-1> (患者ID)\r\n【電子カルテ】当該医療機関における患者ID。"
* identifier.value ^comment =  "英数字列とし、途中にはいる記号は原則として削除する。\r\n[SS-MIX2]
英数字 6 文字以上で設定する。なお、患者 ID が 6 桁未満で表現される可能性がある場合は、6 桁以上になるように設定する。"

* name 1.. MS
* name ^short = "患者の氏名"
* name ^definition = "[SS-MIX2]名前タイプコード（XPN.7）は、HL7 表「0200-名前タイプ」に記載されている「L：法的な名前」を使用、名前表記コード（XPN.8）は、HL7 表「0465-名前/アドレス表記」に記載されている「I：漢字表記」
「P：カナ表記」を使用する。"
* name.extension ^short = "氏名が漢字表記かカナ表記かを区別する拡張"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode ^short =  "漢字表記：\"IDE\"、カナ表記：\"SYL\""

* telecom 0.. MS
* gender 1.. MS
* birthDate 1.. MS
* address 0..1 MS
* address ^definition = "An address for the individual.\r\n患者の住所。必須。"
* address.text 1.. MS
* address.postalCode 1.. MS
* address.country 0.. MS
