
# eCS 診療情報・サマリー汎用：【入退院／受診歴情報】

## 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療６情報・サマリー用に患者の入退院や外来受診の情報を記述するためのものである。
電子カルテ情報共有サービスに送信する情報に含まれる場合、６情報として送信されるリソースのいずれかのContainedリソースとして記述するか、２文書（診療情報提供書や退院時サマリー）のBundleリソースのentryに記述することを想定している。

## スコープ
### 対象
　患者の入退院や外来受診の情報

## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Encounter"
  - meta.profile : プロファイルURL
  - status : この情報のステータス("finished")
  - class : 入院中、外来

### 条件により必須
  - reasonCode : 診療情報提供書の場合に必須。入院時主訴や情報提供理由。

### 推奨要素
  - 特記なし。

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


<script>
function details_open(onoff, idname, idCloseButton){
  var elem = document.getElementById(idname);
  elem.open = onoff;
  if (onoff == true){
    document.getElementById(idCloseButton).style.display = 'none';
  } else {
    document.getElementById(idCloseButton).style.display = 'inline';
  }
}
</script>


<h3>表 「Encounter」</h3>
<button id="mrc" type="button" onclick="details_open(true,'TableDetails','mrc')">表「Encounter」開く</button>
<details id="TableDetails">
<button type="button" onclick="details_open(false,'TableDetails', 'mrc')">閉じる</button>
<summary></summary>


<div id="Table_18042" class="htmlTable" align=center x:publishsource="Excel">

{% include EncounterTable.md %}

</div>

<button type="button" onclick="details_open(false,'TableDetails','mrc')">閉じる</button>
</details>

<br>

## プロファイル


{% include markdown-link-references.md %}