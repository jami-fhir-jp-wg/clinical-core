
Profile: JP_Organization_eCS
Parent: JP_Organization
Id: JP-Organization-eCS
Title: "JP_Organization_eCS"
Description: "診療情報・サマリー汎用　Organizationリソース（医療機関等の組織・機関情報）プロファイル　（JP_Organizationの派生プロファイル）"
//* obeys checkPhoneNumberExists
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS"
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* . ^short = "２文書５情報や診療サマリーなどで記録する医療機関(および診療科情報）の格納に使用する"
* . ^definition = "２文書５情報や診療サマリーなどで記録する医療機関(および診療科情報）の格納に使用する"
* . ^comment = "広義の医療機関すなわち健康医療介護等にかかわる組織（調剤薬局、健診機関などを含む）の格納に使用できる。機関の中の部署、診療科のような部分組織には、本プロファイルを使用しない。機関に所属する診療科や部署・チームの情報を含めて記述する場合には、本プロファイルではJP_eCS_Department拡張を使用して、必ず所属機関の情報の一部とすること。"

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 1.. MS
  * insert relative_short_definition("準拠しているプロファイルとして次のURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS|x.y.z")


//* obeys designatedMetaProfile-eCS-organization

* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^short = "generated| extensions | additional | empty"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    JP_eCS_Department named department ..1

* extension[prefectureNo] ^short = "都道府県番号２桁を表現するExtension"
* extension[prefectureNo] ^comment = "都道府県番号２桁。Identifier型の拡張を使用する。  
valueには都道府県番号2桁の値を格納し、systemには都道府県番号を表すURL「http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo」を指定する。"
* extension[organizationCategory] ^short = "点数表コード１桁（医科１、非保険検診施設２、歯科３、調剤４、訪問看護ステーション６）を表現するExtension【詳細参照】"
* extension[organizationCategory] ^comment = "点数表コード１桁（医科１、非保険検診施設２、歯科３、調剤４、訪問看護ステーション６）。systemには点数表番号を表すURL「http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory」を指定する。"

* extension[department] 0.. MS
* extension[department] ^short = "診療科情報"
* extension[department] ^definition = "診療科情報。コード化する場合にはSS-MIX2診療科コードを使用する。"
* extension[department] ^comment = "診療科だけでなく、医療機関の部署も記述しても差し支えない。ただし支部や分院のように別の組織ではあるが階層関係がある場合には、別のOrganizationリソースで記述し、そのpartOf要素に上位の機関のリソースを参照するようにすること。"
* extension[department].value[x] 1.. MS

* identifier[medicalInstitutionCode] 1..1 MS
* identifier[medicalInstitutionCode].value 1..1 MS  //http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no 10桁　保険医用期間番号

* type 0..* MS
* type.coding 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
* type.coding.system 1.. MS
* type.coding.system ^short = "施設種別を表すコード体系を識別するURI"
* type.coding.system ^definition = "施設種別を表すコード体系を識別するURI。http://terminology.hl7.org/CodeSystem/organization-type　固定値。"
* type.coding.code 1..1 MS
* type.coding.code from OrganizationType (extensible)
* type.coding.code ^short = "施設種別コード"
* type.coding.code ^definition = "医療機関の場合、\"prov\" を指定する。他の種別の場合には、http://terminology.hl7.org/CodeSystem/organization-type　に定義されているコードを指定する。"

* name 1..1 MS
* name ^short = "医療機関名"
* name ^definition = "医療機関名。"

* telecom 0..* MS
  * ^short = "医療機関電話番号。紹介元医療機関では必須。電話番号に加えて、fax や emailなどを追加してもよい。"
  * system 0..1 MS
    * ^short = "電話では\"phone\"を使用する。fax や emailなどを追加してもよい。https://hl7.org/fhir/R4/valueset-contact-point-system.htmlを参照。"
  * value 1..1 MS
    * ^short = "電話番号など。"
* address 0..1 MS
* address ^short = "医療機関住所"
* address ^definition = "医療機関住所"
* address.text 1.. MS
* address.text ^short = "医療機関の住所"
* address.text ^definition = "都道府県名を含む住所の文字列は必須。郵便番号を含めない。\r\n例）\"神奈川県横浜市港区１－２－３\""
* address.postalCode ^short = "郵便番号"
* address.postalCode ^definition = "郵便番号。３桁-４桁。\r\n例）　\"123-4567\""
//
* partOf 0.. MS
* partOf only Reference(JP_Organization) 
* partOf.reference 1.. MS 
* partOf.reference ^short = "この機関が所属する上位の機関の参照情報"
* partOf.reference ^definition = "Bundleリソースに格納される、上位医療機関を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定や、Containedリソースに格納される相対参照を使用する。"

