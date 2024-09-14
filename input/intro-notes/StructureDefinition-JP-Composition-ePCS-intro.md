
# 患者サマリー（療養計画書）用： Compositionリソース　プロファイル

## 背景および想定シナリオ

このプロファイルは、患者サマリー（療養計画書）を記述するBundleリソースの最初のentry要素に格納されるCompositionリソースのプロファイルである。

## スコープ
### 対象

患者サマリー（療養計画書）を記述するBundleリソースの最初のentry要素に格納されるCompositionリソース。

## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Composition"
  - meta.lastUpdated : 最終更新日時
  - meta.profile : 準拠プロファイル　"http://jpfhir.jp/fhir/ePCS/StructureDefinition/JP_Composition_ePCS"、バージョン併記必須。
  - extension : 文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。
  - identifier : インスタンス識別子
  - status : この文書のステータス "final"
  - type : 文書区分コード。"56447-6" (計画書)
  - category : 文書カテゴリー。退院時文書か外来文書かを区別する。
  - timestamp : このリソースを生成した日時
  - subject : 患者情報を表すPatientリソースへの参照
  - encounter : この文書を作成した入院外来区分を表すEncounterリソースへの参照
  - date : このリソースを作成または最後に編集した日時
  - author : 文書作成責任者、文書作成機関（診療科拡張あり）への参照。
    - .reference : 文書作成責任者　Practitionerリソースへの参照
    - .reference : 文書作成機関（診療科拡張あり）Organizationリソースへの参照
  - title : "患者サマリー（療養計画書）"
  - section : 計画サマリーセクションの情報
    - title : セクションタイトル　"計画サマリー"
    - code : 　セクションコード
    - entry[0] : 患者サマリー（療養計画）の内容を記述したCarePlaneへの参照
    - entry[1] : 対象となる傷病名を記述したConditionへの参照（主病名、副病名）

### 条件により必須
  - 該当なし。

### 推奨要素
  - 該当なし。

### MustSupport要素
  - 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。


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

<h3>表 「CompositionePCS」</h3>
<div id="Table_18042" class="htmlTable" align=center x:publishsource="Excel">
{% include  CompositionPCSTable.md %}
</div>
<br>

## プロファイル


{% include markdown-link-references.md %}