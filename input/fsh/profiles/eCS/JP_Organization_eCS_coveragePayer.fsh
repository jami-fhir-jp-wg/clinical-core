Profile: JP_Organization_eCS_coveragePayer
Parent: JP_Organization
Id: JP-Organization-eCS-coveragePayer
Description: "処方など医療サービスに適用される保険の保険者または公費の公費受給者　JP_Organizationの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_eCS_coveragePayer"
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 1.. MS
* insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。")



* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^definition = "固定値.テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* extension[prefectureNo] ..0
* extension[organizationCategory] ..0
* extension[organizationNo] ..0
* identifier[medicalInstitutionCode] ..0
* identifier[medicalInstitutionCode].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no" (exactly)
* identifier[insurerNumber] 0..1 MS
* identifier[insurerNumber].id ..0
* identifier[insurerNumber].use ..0
* identifier[insurerNumber].type ..0
* identifier[insurerNumber].system ^short = "保険者番号の名前空間を示すURIを指定"
* identifier[insurerNumber].system ^definition = "保険者番号の名前空間を示すURIを指定。固定値"
* identifier[insurerNumber].system MS
* identifier[insurerNumber].system = $JP_IdSystemInsurerNumber (exactly)
* identifier[insurerNumber].value ^short = "保険者番号"
* identifier[insurerNumber].value ^definition = "保険者番号を半角数字で８ケタ以内の文字列で記述する。"
* identifier[insurerNumber].value MS
* identifier[insurerNumber].period ..0
* identifier[insurerNumber].assigner ..0
* identifier contains publicPayer 0..1  MS
* identifier[publicPayer].id ..0
* identifier[publicPayer].use ..0
* identifier[publicPayer].type ..0
* identifier[publicPayer].system = $JP_IdSystem_PublicPayerNumber  (exactly)
* identifier[publicPayer].system ^short = "公費負担者番号"
* identifier[publicPayer].system ^definition = "保険種別が「8：公費」の場合は、公費負担者番号を記録する。それ以外の場合は、本要素は出現しない"
* identifier[publicPayer].system MS
* identifier[publicPayer].value ^short = "公費負担者番号"
* identifier[publicPayer].value ^definition = "公費負担者番号。\r\n医療券等に記載されている公費負担者番号８桁以内を半角数字で記録する。"
* identifier[publicPayer].value MS
* identifier[publicPayer].period ..0
* identifier[publicPayer].assigner ..0
* active ..0
* type 1..1 MS
* type.coding 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
* type.coding.system ^short = "施設種別コードのコード体系を識別するURI"
* type.coding.system ^definition = "施設種別コードのコード体系を識別するURI。固定値。"
* type.coding.system MS
* type.coding.code ^short = "施設種別コード"
* type.coding.code ^definition = "費用負担者が保険者の場合は\"ins\"。それ以外の場合は、公費負担者の場合には、その他を意味する \"other\"を指定。"
* name ^short = "保険者、公費受給者の名称文字列"
* name ^definition = "保険者、公費受給者の名称文字列。"
* name MS
* alias ..0
* telecom ..0
* address ..0
* partOf ..0
* contact ..0
* endpoint ..0