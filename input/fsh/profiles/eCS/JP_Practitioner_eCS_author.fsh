Profile: JP_Practitioner_eCS_author
Parent: JP_Practitioner_eCS
Id: JP-Practitioner-eCSauthor
Description: "処方を作成した医師情報　JP_Practitionerの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS_author"
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
* text.status ^short = "generated| extensions | additional | empty"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* identifier ^short = "処方医ID"
* identifier ^definition = "処方医ID。\r\n処方医を識別するIDや番号として、処方医療機関における処方医ID（たとえば端末利用者アカウント、あるいは職員番号など）をPractitionerリソースのidentifier要素に記録する。"
* identifier.system ^short = "処方医ID（医師）のsystem値"
* identifier.system MS
* identifier.system ^definition = "urn:oid:1.2.392.100495.20.3.41.1[保険医療機関コード(10桁)\r\n末尾の1[保険医療機関コード(10桁)]とは、具体的には保険医療機関コード10桁の先頭に1をつけた必ず11桁とすることを示す。"
* identifier.value ^short = "医療機関で発番している医師のID"
* identifier.value ^definition = "処方医を識別するIDや番号として、処方医療機関における処方医ID（たとえば端末利用者アカウント、あるいは職員番号など）をPractitionerリソースのidentifier要素に記録する。"
* identifier.value MS
* name ^short = "処方医氏名"
/* 診療情報提供書では資格の明記は不要のためチェックしない
* obeys
    checkQualification-DoctorLicenseExists and 
    checkQualification-approapriateLicense and 
    checkQualification-NarcoticPractitioner and 
    checkQualification-category
    */

* qualification.identifier 0..* MS
* qualification.identifier.system 1.. MS
* qualification.identifier.system ^definition = "医籍登録番号等（歯科医籍登録番号を含む、以下同じ）の場合、識別する名前空間のURI http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber。\r\n麻薬施用免許番号の場合：都道府県番号を２桁（１桁の都道府県では０をつけた２桁）を末尾につけた\r\nurn:oid:1.2.392.100495.20.3.32.1[都道府県番号2桁]　形式。"
* qualification.identifier.value 0.. MS
* qualification.identifier.value ^short = "医籍登録番号等または麻薬施用者免許番号"
* qualification.identifier.value ^definition = "医籍登録番号または麻薬施用者免許番号"
* qualification.code MS
* qualification.code.coding 1..1 MS
* qualification.code.coding.system 1.. MS
* qualification.code.coding.system ^definition = "コード体系 Certificateの種類を識別するURI http://jpfhir.jp/fhir/core/CodeSystem/practitioner_certificate_category"
* qualification.code.coding.code 1.. MS
* qualification.code.coding.code ^definition = "Certificateの種類コード 'medical-registration'、'dental-registration'、または'narcotics-practitioner'の固定値。"
