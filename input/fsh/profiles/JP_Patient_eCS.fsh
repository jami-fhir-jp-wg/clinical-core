Profile: JP_Patient_ccs
Parent: JP_Patient
Id: JP-Patient-ccs
Description: "対象患者のPatientプロファイル　JP_Patientの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Patient_ccs"
* ^status = #active

* meta.source  ^short = "【SS-MIX2】\"http://jpfhir.jp/ssmix2std/<MSH-21-1>/医療機関識別OID番号\"\r\n【電子カルテ】適宜設定してよいが、最後のパートに医療機関番号11桁を設定すること。"
* meta.source  ^definition = "【SS-MIX2】\"http://jpfhir.jp/ssmix2std/<MSH-21-1>/医療機関識別OID番号\"\r\n【電子カルテ】適宜設定してよいが、最後のパートに医療機関番号11桁を設定すること。"

* meta.profile  ^short = "固定値：\"http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient_ccs\""
* meta.profile  ^definition = "固定値：\"http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient_ccs\""

* text.status ^short = "固定値：generated テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.status ^definition = "固定値：generated テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"

* text.div ^short = "XHTML形式。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\r\nXHTML形式。\r\n例：田中一郎、男、1980/7/1生、東京都中央区日本橋１－１－１, 03_1234_5678"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* identifier 1.. MS
* identifier ^short = "患者番号の情報"
* identifier ^definition = "患者番号の情報"

* identifier.system 1.. MS
* identifier.system  ^short = "固定値:\"urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号\""
* identifier.system ^definition = "固定値:\"urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号\""
* identifier.system ^comment = "医療機関識別OID番号;患者IDの発行者である機関の医療機関コード（１０桁）の先頭に１をつけた11桁"

* identifier.value 1.. MS
* identifier.value  ^short = "当該医療機関における患者ID。"
* identifier.value  ^definition = "【SS-MIX2】<PID-3-1> (患者ID)\r\n【電子カルテ】当該医療機関における患者ID。"
* identifier.value ^comment =  "英数字列とし、途中にはいる記号は原則として削除する。\r\n[SS-MIX2]
英数字 6 文字以上で設定する。なお、患者 ID が 6 桁未満で表現される可能性がある場合は、6 桁以上になるように設定する。"

* name 1.. MS
* name ^short = "患者の氏名"
* name ^definition = "患者の氏名。漢字表記とカナ表記の別はname.extension.valueCode で表す。【SS-MIX2】PID-5[*]の情報。"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension ^short = "氏名が漢字表記かカナ表記かを区別する拡張"
* name.extension ^definition = "氏名が漢字表記かカナ表記かを区別する拡張"
* name.extension.valueCode ^short =  "漢字表記：\"IDE\"、カナ表記：\"SYL\"。【SS-MIX2】<PID-5[*]-8>='I'の場合、そのパートは漢字表記、 <PID-5[*]-8>='P'の場合、そのパートはカナ表記、"

* name.use 0..1 MS
* name.use ^short = "氏名の用途タイプ。通常は \"official\"を使用する（住民票や保険証と一致した名前）。"
* name.use ^definition = "【SS-MIX2】<PID-5[*]-7>が法的氏名\"L\"の場合には\"official\" とする。"
* name.use ^comment = "\r\n【電子カルテ】通常は \"official\"。その他には、慣用名:\"usual\"、ニックネーム:\"nickname\"、匿名加工名:\"anonymous\"、旧姓:\"maiden\"、などが使用できる。http://hl7.org/fhir/R4/valueset-name-use.html を参照"

* name.text 1..1 MS
* name.text ^short = "氏名全体のテキスト表記"
* name.text ^definition = "氏名全体のテキスト表記。通常は姓と名を全角空白1つでつなげた文字列。"

* name.family 1..1 MS
* name.family ^short = "氏名の姓の部分"
* name.family ^definition = "氏名の姓の部分。\r\n【SS-MIX2】 <PID-5[*]-1>"
* name.family ^short = "氏名の姓の部分"
* name.family ^definition = "氏名の姓の部分。\r\n【SS-MIX2】 <PID-5[*]-1>"

* name.given 1..1 MS
* name.given ^short = "氏名の名の部分"
* name.given ^definition = "氏名の姓の部分。\r\n【SS-MIX2】 <PID-5[*]-2>"
* name.given ^short = "氏名の名の部分"
* name.given ^definition = "氏名の姓の部分。\r\n【SS-MIX2】 <PID-5[*]-2>"

* telecom 0.. MS
* gender 1.. MS
* birthDate 1.. MS
* address 0..1 MS
* address ^definition = "An address for the individual.\r\n患者の住所。必須。"
* address.text 1.. MS
* address.postalCode 1.. MS
* address.country 0.. MS
