<style type="text/css">

table {
  border: solid 1px black;
  border-collapse: collapse;
}
 
table td {
  border: solid 1px black;

}

table th {
  border: solid 1px black;
}
   h1 {
      counter-reset: chapter;
    }

    h2 {
      counter-reset: sub-chapter;
    }

    h3 {
      counter-reset: section;
    }

    h4 {
      counter-reset: sub-section;
    }

    h5 {
      counter-reset: composite;
    }

    h6 {
      counter-reset: sub-composite;
    }

    h1:before {
      color: black;
      counter-increment: bchapter;
      content:  " ";
    }

    h2:before {
      color: black;
      counter-increment: chapter;
      content: counter(chapter) ". ";
    }

    h3:before {
      color: black;
      counter-increment: sub-chapter;
      content: counter(chapter) "."counter(sub-chapter) ". ";
    }


    h4:before {
      color: black;
      counter-increment: section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) " ";
    }

    h5:before {
      color: black;
      counter-increment: sub-section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) "."counter(sub-section) " ";
    }

    h6:before {
      color: black;
      counter-increment: sub-sub-section;
      content: "　　"counter(sub-sub-section) "）";
    }

</style>


# clinical-core
# 名称：臨床コア情報FHIR仕様 : 　JP-FHIR-CCS (Clinical Core Set)
#  （６情報を含む臨床情報のコアセット　FHIR仕様）
## このImplementationガイド(IG)の目的：
臨床情報のうち主要な情報種別について、患者や他の医療機関との診療情報の共有、退院時サマリーなど医療文書の作成、臨床研究のためのデータ利用などを想定して、主要なデータ項目をFHIRに準拠する形式で記述するとともに、そのデータをFHIRのAPIで要求側（通常ははデータを保有しないクライアント）が要求を行い、応答側（通常はデータを保有するサーバ）する（Pull方式）ためのIGである。

また、運用規定にもとづき、定められた期間における定められたデータ種別のデータを、定められたタイミングまたは自発的に、応答側が別のシステムに送信する（Push方式）ことも含める。
 
## 主要な情報種別の範囲：
* 2022年度時点で厚生労働省が提示する臨床コア6情報（いわゆる６情報）
  * [アレルギー情報　AllergyIntoleranceリソース][JP_AllergyIntolerance_eCS]
  * [薬剤禁忌情報　AllergyIntoleranceリソース][JP_DrugContraIndication_eCS]
  * [傷病名情報	Conditionリソース][JP_Condition_eCS]
  * [検査情報（救急時に有用な検査、生活習慣病関連の検査）Observationリソース][Observationリソース]
  * [感染症情報　Observationリソース][JP_Observation_LabResult_eCS]
  * [処方依頼情報　MedicationRequestリソース][JP_Observation_LabResult_InfectionRelated_eCS]

* 上記から参照される情報
　以下の情報は上記主要の6情報から、その要素情報として参照されることがある情報種別として定義されている。
　これらは後述するContainedリソース専用のプロファイルである。
  * [保険情報 Coverageリソース][JP_Coverage_eCS_insurance]
  * [公費情報 Coverageリソース][JP_Coverage_eCS_publicPayment]
  * [外来受診・入院歴情報	Encounterリソース][JP_Encounter_OW_eCS_Contained]
  * [医療機関情報　Organizationリソース][JP_Organization_eCS_Contained]
  * [診療科情報　Organizationリソース][JP_Organization_eCS_department_Contained]
  * [患者基本情報	Patientリソース][JP_Patient_eCS_Contained]
  * [医療者情報　Practitionerリソース][JP_Practitioner_eCS_Contained]
  * [サービス依頼（オーダ）情報　ServiceRequestリソース][JP_ServiceRequest_eCS_Contained]
  * [検査検体情報	Sepecimenリソース][JP_Specimen_LaboResult_eCS_Contained]
  
* 診療情報提供書、退院時サマリーに含まれる上記以外の情報種別
　以下のすべてのリソースは、現時点ではFHIRの基底仕様からまだ吟味されておらず、日本国内での使用についての特別な記述がないが、必要であれば使用できる。また＊印のリソースはJP-Core　V1.1でJP-Core仕様が公表されている。
  * [バイナリーデータ情報　Binaryリソース][JP_Binary]
  * [ケア計画	CarePlanリソース][JP_CarePlan]
  * [同意情報　Consentリソース][JP_Concent]
  * [医療デバイス情報 Deviceリソース][JP_Device]
  * [医療デバイス使用情報　DeviceUseStatementリソース][JP_DeviceStatement]
  * [家族歴情報	FamilyMemberHistoryリソース][JP_FamilyMemberHistory]　＊
  * [予防接種情報　Immunizationリソース][JP_Immunization] ＊
  * [処方内容情報　MedicationStatementリソース][JP_MedicationStatement] ＊
  * [手術処置情報　Procedureリソース][JP_Procedure] ＊
  * [患者関係者情報　RelatedPersonリソース][JP_RelatedPerson]
  * [臨床研究対象者情報　ResearchSubjectリソース][JP_ResearchSubject]
  * [臨床研究課題情報　ResearchStudyリソース][JP_ResearchStudy]


## 基本方針：
1. 2023年3月時点では、各リソースの仕様はFHIR R4.0.1 および JP-Core V1.1に準拠する。
1. 対応する各リソースの要素（エレメント）仕様について、①SS-MIX2標準化ストレージの仕様の必須項目、任意項目、未使用項目を参考に、対応メッセージの必須項目のデータが原則として格納できるようにする、②同ストレージで任意となっている項目のデータが必須エレメントとならないようにする。ただし、HL7メッセージ管理目的の項目やSS-MIX2標準化ストレージ管理目的の項目、またFHIR仕様で必須となっているものなどはこの限りではない。
1. 認証の取り決めは本仕様のスコープ外とする。

## プロファイルURL等のルール
FHIRでは、Profile（プロファイル）とよばれる定義ファイルにより、それぞれのリソースごとに要素の制約は使用方法を記述する。このプロファイルを識別するURLは以下のようなルールで定めることにする。

URLベース部分　：　http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/

URL末尾パートは、
JP_\[リソースタイプ\]\(_0個以上の付加的な階層名\)_eClinicalSummary

または、
JP_\[リソースタイプ\]\(_0個以上の付加的な階層名\)_eCS_プロファイル目的名
のような形式をとっている。

ここで、プロファイル目的名は、このプロファイルが、他のリソースのContained要素に格納されるリソースのプロファイルを定義している場合に、Contained を記述している。
プロファイル目的名のパートがContained となっているプロファイルは、自身のリソースでContained要素が持てないなどの制約が追加されている。



## 埋め込みリソースの取り扱い（Contained リソース）
 
メインのリソースの要素から参照される「別のリソースタイプで記述される情報」を、そのメインのリソースのcontained要素に格納することで、メインリソース単体ですべての参照される情報も包含してしまう（埋め込む）記述手法をとることができ、「「別のリソースタイプで記述される情報」をcontain する」という。「別のリソースタイプで記述される情報」は、Containedリソースとなる、といい、通常のリソース記述に比べていくつかの制限があるため、Containedリソース専用のプロファイル定義をしている場合がある。
[https://www.hl7.org/fhir/references.html](https://www.hl7.org/fhir/references.html) （2.1.3.0.10 節参照）


## 電子カルテ情報交換サービス（仮称）に医療機関から送信するFHIR仕様について
### 共通仕様
#### 保険個人識別子の格納
電子カルテ情報交換サービス（仮称）に医療機関から送信する場合には、個人識別子として、保険者情報と被保険者情報を送信することが必須である。このためFHIRリソースの患者情報であるPatientリソースのidentifier要素にこの識別子情報を設定しなければならない。<br>以下にその仕様を示す。<br>
なお、Patientリソースが、別のリソースに包含されるContainedリソースとなっているにもPatientリソースのidentifier要素にこの識別子情報を設定しなければならない。

##### 保険個人識別子の文字列仕様
個人識別子として、保険者情報と被保険者情報とを以下の仕様で連携した文字列を使用する。<br>
本仕様では、以下、これを「保険個人識別子」と称する。また英数字は１バイト系文字の英数字を指す。<br>
保険個人識別子:　以下の各情報（要素）を半角コロン（文字コード１６進数 5A）で結合する。<br>
要素を省略する、とある場合には、長さ０の文字列とする。<br>
　保険者等番号:　英数字８桁　保険者番号。８桁に満たない場合は、先頭に半角ゼロを追加して８桁とする。<br>
　　（保険者等番号とは、保険者番号または公費負担者番号を指す）<br>
　被保険者証（手帳）等の記号:　英数または全角文字。健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の記号を記録する。全角だけからなる文字列または半角だけからなる文字列のどちらかとする。英数字だけの場合には 1 バイト系（半角）文字だけから構成するか、または全角文字だけから構成する。記号または仮名漢字を含む場合には、英数字を含めすべて全角文字だけから構成する。なお、いずれの場合にも、全角空白を含めないこととする。被保険者証（手帳）等の番号だけしかない場合には、本要素は省略する。<br>
　被保険者証（手帳）等の番号:　英数または全角文字。健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の番号、または後期高齢者被保険者証の被保険者番号を記録する。全角だけからなる文字列または半角だけからなる文字列のどちらかとする。英数字だけの場合には 1 バイト系（半角）文字だけから構成するか、または全角文字だけから構成する。記号または仮名漢字を含む場合には、英数字を含めすべて全角文字だけから構成する。なお、いずれの場合にも、全角空白を含めないこととする。<br>
　被保険者証等枝番: 「被保険者証等枝番」に対応する文字列。半角数字2桁固定とする。枝番がない（表記されていない）場合には、00とするのではなく本要素は省略する。<br>
<br>
例）保険者等番号＝12345、被保険者証（手帳）等の記号＝あいう、被保険者証（手帳）等の番号＝１８７、枝番＝05 の場合、<br>
　　保険個人識別子＝ "00012345:あいう:１８７:05" となる。<br>
　被保険者証（手帳）等の記号と枝番がない場合には<br>
　　保険個人識別子＝ "00012345::１８７:" となる。この場合、最後のコロンは必須である。<br>

##### 保険個人識別子の格納方法
保険個人識別子は、Patientリソースのidentifier要素のvalueに記述する。この場合、system値には、「保険個人識別子」であることを示す「http:/jpfhir.jp/fhir/ccs/Idsysmem/JP_Insurance_member/保険者等番号８桁文字列」を設定する。
```
    {
      "resourceType": "Patient",
      "id": "Patient1",
        <省略>
      "identifier": [
        {
          "system": "urn:oid:1.2.392.100495.20.3.51.11234567890",
          "value": "12345"
        },
        {
          "system": "http:/jpfhir.jp/fhir/ccs/Idsysmem/JP_Insurance_member/00012345",
          "value": "00012345:あいう:１８７:05"
        }
      ],
      "name": [
        <省略>
```

##### 長期保存の対象であることの格納
電子カルテ情報交換サービス（仮称）に医療機関から送信する場合、送信するFHIRリソースが長期保存対象の情報である場合には、そのことを明示的に示すため、それぞれのリソース識別子情報を設定しなければならない。<br>以下にその仕様を示す。<br>

ｓ##### 長期保存情報の仕様
リソースのデータを長期保存対象とする場合には、そのリソースのデータにおけるmeta要素のtag要素に以下の形式で記述しなければならない。<br>
　meta.tag.system = "http:/jpfhir.jp/fhir/ccs/CodeSystem/JP_ehrexs_indication"　(この固定値とする)<br>
　meta.tag.code = "LTS"　(この固定値とする)<br>

```
{
  "resourceType": "AllergyIntolerance",
  "id": "Example-allergy",
  "meta": {
    :
    <省略>
    :
    "tag": {[
      {
        "system": "http:/jpfhir.jp/fhir/ccs/CodeSystem/JP_ehrexs_indication",
        "code": "LTS"
      }
    ]
    }

  },
```

### 送信時の複数リソースデータのまとめ方
電子カルテ情報交換サービス（仮称）に医療機関から送信する場合、１回に送信するリソースデータは、複数リソースタイプの複数リソースデータから構成されるのが普通である。FHIRではこのような送受信のまめに、異なるリソースタイプの複数リソースデータをひとまりにしたひとつのリソースとしてBundleリソースタイプが用意されている。<br>
電子カルテ情報交換サービス（仮称）に医療機関から送信する場合には、このBundleリソースタイプのひとつのリソースデータにして１回の送信で送信する。
Bundleリソースのタイプ（type要素）は"collection"を使用する。<br>
なお格納されるリソースデータ（以下の例では、Observation）同士を相互参照することはできない。<br>

```
{
    "resourceType": "Bundle",
    "id": "Bundle-for-Example01",
    "meta": {
        :
        <省略>
        :
    },
    "identifier": {
        :
        <省略>
        :
    },
    "type": "collection",
    "timestamp": "2020-08-21T12:12:21+09:00",
    "entry": [
        {
            "fullUrl": "urn:uuid:20ade057-b106-9223-585e-20aa8d1635af",
            "resource": {
                "resourceType": "Observation",
                "id": "JP-Observation-Example001",
                :
                <１個目の検査結果><省略>
                :
            }
        },
        {
            "fullUrl": "urn:uuid:20ade057-b106-9223-585e-20aa8d1635af",
            "resource": {
                "resourceType": "Observation",
                "id": "JP-Observation-Example001",
                :
                <２個目の検査結果><省略>
                :
            }
        },
        {
            "fullUrl": "urn:uuid:20ade057-b106-9223-585e-20aa8d1635af",
            "resource": {
                "resourceType": "Observation",
                "id": "JP-Observation-Example001",
                :
                <３個目の検査結果><省略>
                :
            }
        }
    ]
}
```

{% include markdown-link-references.md %}