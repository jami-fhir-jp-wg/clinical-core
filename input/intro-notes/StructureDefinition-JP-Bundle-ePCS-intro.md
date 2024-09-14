
# CLINS電子カルテ情報共有サービス用:　患者サマリー（療養計画書） 【送信用Bundleリソース】

## 背景および想定シナリオ

このプロファイルは、患者サマリー（療養計画書）を記述し、CLINSに送信するために作成するBundleリソースのプロファイルを記述するためのものである。


## スコープ
### 対象

患者サマリー（療養計画書）文書を記述の対象とする。

## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Bundle"
  - meta.lastUpdated : 最終更新日時
  - meta.profile : 準拠プロファイル　"http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_ePCS"、バージョン併記必須。
  - identifier : インスタンス識別子
  - type : Bundleリソースのタイプ "document"
  - timestamp : このリソースを生成した日時
  - entry[0] : JP_Composition_ePCS profileに準拠したCompositionリソース。
  - entry[1] : JP_Patient_eCS profileに準拠したPatientリソース。患者情報。
  - entry[2] : JP_Practitioner_eCS profileに準拠したPractitionerリソース。作成者の情報（医師情報）。
  - entry[3] : JP_Organization_eCS profileに準拠したOrganizationリソース。文書作成医療機関（診療科情報を拡張に含む）。
  - entry[4] : JP_Encounter_eCS profileに準拠したEncounterリソース。文書作成時の受診時状況（外来、入院の区分）。
  - entry[5] : JP_CarePlan_ePCS profileに準拠したCarePlanリソース。患者サマリー（療養計画）の情報（内容はテキストで記述）。	
  - entry[6以降] : JP_Condition_eC profileに準拠したConditionリソース。傷病名（主傷病名、副傷病名の別情報を含む）。

### 条件により必須
  - 該当なし。

### 推奨要素
  - 該当なし。

### MustSupport要素
　- 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。
  - 該当なし。

## 要素の説明とプロファイル
  - 多重度欄の背景色：
    - 濃い黄色＝「必須要素」に対応する。
    - 薄い黄色＝「条件により必須要素」に対応する。
    - 薄い緑＝「推奨要素」に対応する。
    - 無色＝本要素を記述する場合の説明を参考までに記載しているが多重度は0..1または0..*であるため出現してもしなくてもよい。ただし、MustSupport要素の場合には、MustSupport要素としての仕様を満たす必要がある。MustSupport要素でなければ、データ設定と送信は任意であり、送信しても受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表に現れない要素であるが、JP-Coreでは出現してもよい（多重度が0..1または0..*の）要素は、データ設定と送信は任意であり、送信しても受信側では無視（破棄）されるかもしれないことに注意すること。
  - この表で要素名のあとに[ ]表記があるものは、値が１個であっても、JSONデータのリスト型の値で記述しなければならない。
  - 要素[*] ：　この要素は繰り返し可能であり、値の記述はリストとなる。
  - 要素[+] ：　（繰り返し可能な要素において）新たなひとつの要素の子要素値として記述される。
  - 要素[=] ：　（繰り返し可能な要素において）すぐ上の要素と同じ要素の子要素値として記述される。

## 詳細説明

<h3>表 「BundlePCS」</h3>

<div id="Table_18042" class="htmlTable" align=center x:publishsource="Excel">
{% include  BundlePCSTable.md %}
</div>
<br>

## プロファイル


{% include markdown-link-references.md %}