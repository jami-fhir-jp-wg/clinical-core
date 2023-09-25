
# （2文書６情報を含む）電子カルテ情報共有サービスのためのFHIR実装ガイド
 <span style="color: red; font-size: 120%;"><<注意：このIGは協議中の暫定的な内容です。リソースのProfileも暫定版です。また頻繁に書き換え作業中ですので、内容は間違いや暫定情報を含みます。>></span>
<br>

## このImplementationガイド(IG)の目的：

厚生労働省が定めるいわゆる「2文書6情報」で使用されるFHIRリソースについてのプロファイルを定義する実装ガイドである。また、6情報を「電子カルテ情報共有サービス」に送信する際のBundle仕様や、送信した情報を同定するための識別子に関する仕様もここで定めている。
ただし、２文書（診療情報提供書、退院時サマリー）の文書ごとのFHIR実装ガイドは、以下で記載されている。

  -  FHIR厚生労働省標準規格の資料 [https://std.jpfhir.jp/]
  
     - HS038　診療情報提供書HL7FHIR記述仕様 第１版
     - HS039　退院時サマリー HL7 FHIR記述仕様

本実装ガイドは、FHIR R4.0.1に従い、JP-Core V1.1.xからの派生プロファイルの実装ガイドとして作成されている。従って、本IGに記述されていないことについては、JP-Core V1.1.xを参照していただきたい。

## 想定する運用形態
1. Pull形態：
FHIRに準拠した臨床コア情報を必要とするクライアントシステムが、FHIR REST APIに従って、あるFHIRリソースタイプのデータ（リソース・インスタンス）を臨床データを保有するサーバに要求し、サーバからのレスポンスとしてFHIR規格に従ったデータを受け取る形態。<br>
この形態において、クライアントが受け取るリソースが従うべきプロファイルが本IGで説明される。<br>
この形態では、複数のリソース・インスタンスのセットを受け取るときには、FHIR REST APIでの仕様にもとづき、複数のリソース・インスタンスを格納したひとつのBundleリソースタイプのデータとして返される。
1. Push形態：
臨床コア情報を格納しているサーバが、あらかじめ決められた期間や条件を満たす臨床コア情報について、あらかじめ決められたタイミンで、定められたデータ種別のデータを、別のシステムに送信する（Push方式）形態。
<br>
この形態において、サーバが送信時に作成するリソース・インスタンスが従うべきプロファイルが本IGで説明される。<br>
この形態では、複数のリソース・インスタンスのセットを一括して送信するときには、複数のリソースインスタンスを格納したひとつのBundleリソースタイプのデータとして送信する仕様を本実装ガイドで定める。
 
```
[用語説明]　FHIRリソース：　FHIRでは医療情報は、リソースというひとまとまりのデータ項目を集めた構造的なデータとして記述される。
プログラミング言語でいう構造体のようなもので、メソッドのないClassのような概念に相当するともいえる。
患者基本情報のPatientリソース、検査結果のObservationリソースなど、100種類近いリソースが定義されている。
それぞれのリソースの構造（どういうデータタイプのどんな要素から構成されているか）を定義しているのがProfile（プロファイル）である。
Profile自体もひとつのリソースである（StructureDefinitionリソース）。リソースの種類のことをリソースタイプと呼ぶ。
```
```
[用語説明]　リソース・インスタンス：　リソース（のProfile）に従って記述されたひとつひとつの実際のデータ（実体）のこと。
　　例：患者、田中太郎さんの患者基本情報をPatientリソースに従って記述したデータは、
　　　　田中太郎さんのPatientリソース・インスタンスである。
```
## 主要な情報種別の範囲：
* 2022年度時点で厚生労働省が提示する臨床コア6情報（いわゆる６情報）
<br>
  * [アレルギー情報／薬剤禁忌情報　AllergyIntoleranceリソース][JP_AllergyIntolerance_eCS]
  * [傷病名情報	Conditionリソース][JP_Condition_eCS]
  * [検査結果情報（注⁂）／感染症情報　Observationリソース][JP_Observation_LabResult_eCS] （注⁂）救急時に有用な検査、生活習慣病関連の検査）
  * [処方依頼情報　MedicationRequestリソース][JP_MedicationRequest_ePres_eCS]
　<br>
アレルギー情報と薬剤禁忌情報と、別に説明するように、同じプロファイルにしたがって記述され、受信側で区別される。また検査結果情報と感染症情報も同様である。
<br>処方依頼情報には当面、注射点滴手法（自己注射を除く）によるものは含まれない。
<br>

* 上記のリソースから参照される関連情報
　以下の情報は上記主要の6情報から、その要素情報として参照されることがある情報種別として定義されている。
　これらは後述するContainedリソースとよばれる記述形態でのみ使用される、（Containedリソース専用の）プロファイルである。
  * [保険情報 Coverageリソース][JP_Coverage_eCS_insurance]
  * [公費情報 Coverageリソース][JP_Coverage_eCS_publicPayment]
  * [外来受診・入院歴情報	Encounterリソース][JP_Encounter_OW_eCS_Contained]
  * [医療機関情報　Organizationリソース][JP_Organization_eCS_Contained]
  * [診療科情報　Organizationリソース][JP_Organization_eCS_department_Contained]
  * [患者基本情報	Patientリソース][JP_Patient_eCS_Contained]
  * [医療者情報　Practitionerリソース][JP_Practitioner_eCS_Contained]
  * [サービス依頼（オーダ）情報　ServiceRequestリソース][JP_ServiceRequest_eCS_Contained]
  * [検査検体情報	Sepecimenリソース][JP_Specimen_LaboResult_eCS_Contained]
  
  <br>
- 診療情報提供書、退院時サマリーに含まれる上記以外の情報種別
以下のすべてのリソースは、現時点ではFHIRの基底仕様からJP-Coreではまだ吟味されておらず、日本国内での使用についての特別な記述がないものがあるが、必要であれば使用できる。また＊印のリソースはJP-Core　V1.1でJP-Core仕様が公表されている。
  * [バイナリーデータ情報　Binaryリソース][JP_Binary]
  * [ケア計画	CarePlanリソース][JP_CarePlan_eClinicalSummary]
  * [同意情報　Consentリソース][JP_Consent_eClinicalSummary]
  * [医療デバイス情報 Deviceリソース][JP_Device_eClinicalSummary]
  * [医療デバイス使用情報　DeviceUseStatementリソース][JP_DeviceUseStatement]
  * [家族歴情報	FamilyMemberHistoryリソース][JP_FamilyMemberHistory_eClinicalSummary]　＊
  * [予防接種情報　Immunizationリソース][JP_Immunization_eClinicalSummary] ＊
  * [処方内容情報　MedicationStatementリソース][JP_MedicationStatement_eClinicalSummary] ＊
  * [手術処置情報　Procedureリソース][JP_Procedure_eClinicalSummary] ＊
  * [患者関係者情報　RelatedPersonリソース][JP_RelatedPerson_eClinicalSummary]
  * [臨床研究対象者情報　ResearchSubjectリソース][JP_ResearchSubject_eClinicalSummary]
  * [臨床研究課題情報　ResearchStudyリソース][JP_ResearchStudy_eClinicalSummary]


## 埋め込みリソースの取り扱い（Contained リソース）
 
メインのリソースの要素から参照される「別のリソースタイプで記述される情報」を、そのメインのリソースのcontained要素に格納することで、メインリソース単体ですべての参照される情報も包含してしまう（埋め込む）記述手法をとることができ、「「別のリソースタイプで記述される情報」をcontain する」という。「別のリソースタイプで記述される情報」は、Containedリソースとなる、といい、通常のリソース記述に比べていくつかの制限があるため、Containedリソース専用のプロファイル定義をしている場合がある。
[https://www.hl7.org/fhir/references.html](https://www.hl7.org/fhir/references.html) （2.1.3.0.10 節参照）


## ６情報送信に関するFHIR仕様

<A href="core6spec.html">「電子カルテ情報共有サービス（仮称）に医療機関から送信するFHIR仕様について」にジャンプ</a>


{% include markdown-link-references.md %}