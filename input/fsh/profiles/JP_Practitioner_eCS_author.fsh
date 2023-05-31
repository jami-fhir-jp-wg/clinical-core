Profile: JP_Practitioner_eCS_author
Parent: JP_Practitioner_eCS
Id: JP-Practitioner-eCSauthor
Description: "診療情報サマリー用　Practitionerリソース（医療文書作成医師情報）プロファイル"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Practitioner_eClinicalSummary_author"
* ^status = #active
* ^date = "2023-03-31"
* . ^short = "診療情報サマリーにおける主として医療文書作成者としての医師情報の格納に使用する"
* . ^definition = "診療情報サマリー・厚労省6情報などにおける主として医療文書作成者としての医師情報の格納に使用する"



* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^short = "generated| extensions | additional | empty"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* identifier ^short = "医師ID"
* identifier ^definition = "医師ID。\r\n医師を識別するIDや番号として、医療機関における医師ID（たとえば端末利用者アカウント、あるいは職員番号など）をPractitionerリソースのidentifier要素に記録する。"
* identifier.system ^short = "医師IDのsystem値"
* identifier.system MS
* identifier.system ^definition = "urn:oid:1.2.392.100495.20.3.41.1[保険医療機関コード(10桁)\r\n末尾の1[保険医療機関コード(10桁)]とは、具体的には保険医療機関コード10桁の先頭に1をつけた必ず11桁とすることを示す。"
* identifier.value ^short = "医療機関で発番している医師のID"
* identifier.value ^definition = "医師を識別するIDや番号として、医療機関における医師ID（たとえば端末利用者アカウント、あるいは職員番号など）をPractitionerリソースのidentifier要素に記録する。"
* identifier.value MS
* name ^short = "医師氏名"
/* 診療情報提供書では資格の明記は不要のためチェックしない
* obeys
    checkQualification-DoctorLicenseExists and 
    checkQualification-approapriateLicense and 
    checkQualification-NarcoticPractitioner and 
    checkQualification-category
    */

* qualification.identifier 0..* MS
* qualification.identifier.system 1.. MS
* qualification.identifier.system ^definition = "医籍登録番号等（歯科医籍登録番号を含む、以下同じ）の場合、識別する名前空間のURI urn:oid:1.2.392.100495.20.3.31。\r\n麻薬施用免許番号の場合：都道府県番号を２桁（１桁の都道府県では０をつけた２桁）を末尾につけた\r\nurn:oid:1.2.392.100495.20.3.32.1[都道府県番号2桁]　形式。"
* qualification.identifier.value 0.. MS
* qualification.identifier.value ^short = "医籍登録番号等または麻薬施用者免許番号"
* qualification.identifier.value ^definition = "医籍登録番号または麻薬施用者免許番号"
* qualification.code MS
* qualification.code.coding 1..1 MS
* qualification.code.coding.system 1.. MS
* qualification.code.coding.system ^definition = "コード体系 Certificateの種類を識別するURI http://jpfhir.jp/fhir/core/CodeSystem/practitioner_certificate_category"
* qualification.code.coding.code 1.. MS
* qualification.code.coding.code ^definition = "Certificateの種類コード 'medical-registration'、'dental-registration'、または'narcotics-practitioner'の固定値。"
