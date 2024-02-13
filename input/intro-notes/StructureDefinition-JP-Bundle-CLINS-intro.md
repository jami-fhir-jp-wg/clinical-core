
# CLINS電子カルテ情報共有サービス用: 【送信用Bundleリソース】

## 背景および想定シナリオ
このプロファイルは、６情報を送信するためにデータをまとめる役割をするBundleリソースのプロファイルを記述するためのものである。

Bundleリソースの使い方については、

  - 2.1.1 送信時の複数リソースデータのまとめ方
  - 2.1.2 送信済みBundleリソース・インスタンスを指定する識別子について
  - 2.1.3 Bundleリソースの送信タイミング

を参照すること。

## スコープ
### 対象
　６情報を送信するためにデータをまとめる際に必ず使用するBundleリソースとなる。

## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Bundle"
  - meta.lastUpdated : 最終更新日時
  - meta.profile : 準拠プロファイル　"http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_CLINS"
  - meta.tag[n].system : このBundleが格納するリソースタイプを識別するcodeのsystem値　"http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS"
  - meta.tag[n].code : このBundleが格納するリソースタイプを識別するcode
  - identifier : インスタンス識別子
  - type : Bundleリソースのタイプ "collection"
  - timestamp : このリソースを生成した日時
  - entry[0] : JP_Patient_CLINS_eCS profileに準拠したPatientリソース。
  - entry[1以降] : このBundleが格納するリソース

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


<h3>表 「Bundle」</h3>
<button id="mrc" type="button" onclick="details_open(true,'TableDetails','mrc')">表「Bundle」開く</button>
<details id="TableDetails">
<button type="button" onclick="details_open(false,'TableDetails', 'mrc')">閉じる</button>
<summary></summary>


<div id="Table_18042" class="htmlTable" align=center x:publishsource="Excel">

{% include bundle.md %}

</div>

<button type="button" onclick="details_open(false,'TableDetails','mrc')">閉じる</button>
</details>

<br>

## プロファイル


{% include markdown-link-references.md %}