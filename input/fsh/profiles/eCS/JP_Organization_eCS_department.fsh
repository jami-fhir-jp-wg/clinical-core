//-------------------------------
//--- Profile for conatained resource within other resources
//-------------------------------

Profile: JP_Organization_eCS_department
Parent: JP_Organization
Id: JP-Organization-eCS-department

// * obeys checkOrganizationType0
// * obeys checkOrganizationType1
 

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 1.. MS
* insert relative_short_definition("本プロファイルを識別するURLとバージョンを指定する。バージョン指定を省略した場合には、データ受信時点の最新バージョンとみなされる。")



Description: "診療情報・サマリー汎用 　Organizationリソース（診療科情報）プロファイル　（JP_Organizationの派生プロファイル）"
//* obeys checkPhoneNumberExists
* ^url = $JP_Organization_eCS_department
* ^version = "x.x.x-profile"
* ^status = #active
* ^date = "2024-09-14"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* ^fhirVersion = #4.0.1
* ^language = #ja

* . ^short = "診療情報・サマリー汎用 診療科情報の格納に使用する"
* . ^definition = "診療情報・サマリー汎用 診療科情報の格納に使用する"

//* obeys designatedMetaProfile-eCS-department


* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
//* extension ^slicing.discriminator.type = #value
//* extension ^slicing.discriminator.path = "url"
//* extension ^slicing.rules = #open
//* extension ^min = 0
* name 1.. MS
* name ^short = "診療科の名称"
* name ^definition = "医療文書などに印刷、または画面に表示する際に用いられる診療科の名称。\r\n必ずしも正式名称でなく、略称でも差し支えない。"
* partOf 0.. MS
* partOf only Reference(JP_Organization_eCS) 
* partOf.reference 1.. MS 
* partOf.reference ^short = "この診療科が所属する医療機関の情報"
* partOf.reference ^definition = "Bundleリソースに格納される、処方医療機関を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定や、Containedリソースに格納される相対参照を使用する。"

/*
Profile: JP_Organization_eS_departmentOfIssuer
Parent: JP_Organization_eS_department
Id: JP-Organization-eCS-departmentOfissuer
Description: "医療文書を発行した医療機関の診療科情報　JP_Organizationの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS_departmentOfIssuer"
* ^status = #active
*/