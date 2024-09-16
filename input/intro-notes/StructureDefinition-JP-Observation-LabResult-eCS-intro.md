
# eCS/CLINS 診療情報・サマリー汎用：【検体検査結果・感染症情報】

## 背景および想定シナリオ
このプロファイルは、５情報をはじめ、診療情報提供書や退院時サマリーなどの2文書や、診療５情報・サマリー用に「検体検査結果（感染症情報を含む）」を記述するためのものである。
電子カルテ情報共有サービスに送信する場合、および同サービスに送信される２文書に含まれる場合、このプロファイルを使用することができる。


## スコープ
### 対象
以下のような検体検査結果の情報。
 - 血液検体検査結果
 - 上記に含まれる感染症（抗原、抗体）検査結果
 - 尿検体検査結果
 - 生体から取得したその他の検体材料の検査結果

### 対象としないこと
 - 細菌検査結果（塗抹、培養、感受性等）は含まない。
 - 病理検体検査結果（細胞診、組織診）は含まない。

## プロファイル定義における必須要素と推奨要素
  - MustSupport要素は、送信側（データ作成側）にその情報があれば特段の理由がない限り、値をなんらかの方法で設定し、送信しなければならない項目。受信側では値が設定されているのであれば、格納しなければならない（破棄してはならない）。
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Observation"
  - meta.lastUpdated : 最終更新日時
  - meta.profile : プロファイルURL、バージョン併記必須。
  - identifier : インスタンス識別ID
  - status : 検査・観察のステータス
  - category : 検査結果カテゴリー。コード"laboratory"を設定する。
  - code : 検査・観察の項目コード
    - .coding : コード化された情報
    - .coding.system : コード化に用いたコードシステムURL
    - .coding.code : コード化に用いたコード
    - .coding.display : コード化に用いたコードの表示名
    - .text : 検体検査名称のテキスト記述
  - subject : 患者のFHIRリソースへの参照
  - effectiveDateTime : 検体採取日または検体採取日時
  - specimen :　検体材料のFHIRリソースへの参照

### 条件により必須
  - meta.tag  ("LTS"): 電子カルテ情報共有サービス（5情報のひとつとして送信される場合）で長期保存フラグの設定する場合に必須。
  - contained (JP_Encounter) : 電子カルテ情報共有サービス（同）では必須。検査オーダまたは検体採取時の入院外来区分情報
  - contained (JP_Practitioner) : 電子カルテ情報共有サービス（同）では必須。検査オーダ作成者の医療者情報
  - extension (eCS_InstitutionNumber) : 電子カルテ情報共有サービス（同）では必須。医療機関番号１０桁
  - extension (eCS_Department) : 電子カルテ情報共有サービス（同）では必須。診療科名称（とコード）
  - encounter : 電子カルテ情報共有サービス（同）では必須。検査オーダまたは検査実施時（検体採取時）の入院外来区分情報を記述しているcontainedリソース(JP_Encounter) への参照。
  - performer : 電子カルテ情報共有サービス（同）では必須。検査オーダー者情報。この検査オーダを作成した医療者の情報を記述しているcontainedリソース(JP_Practitioner) への参照。
  - value[x] : 検査結果や観察結果。検査項目がバッテリー項目（グループ項目）の場合や理由があって検査値が得られなかった場合を除き必須。
  - dataAbsentReason : 検査値が得られなかった理由。検査値が得られなかった場合には必須。
  - hasMember : このグループに含まれる個々の検査の参照。この検査が複数の検査項目をグループ化したパネル検査もしくはバッテリー検査の場合には必須。
  - component : １回の検査・観察で同時に複数の検査結果が得られる場合には必須。

### 推奨要素
  - code.coding.version : 使用したコードシステムのバージョン文字列
  - interpretation : 検査結果値の評価コード
  - referenceRange : 基準値範囲

### MustSupport要素
　- 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。
  - contained (JP_Specimen) : 検体材料情報
  - contained (JP_ServiceRequest) : 検査オーダ情報
  - note : 結果に対するコメントテキスト記述。
  - method : 検査手法の記述。
  - issued : 検査結果報告日時（システムへの結果登録日時）

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



<h3>表「Observation_LabResult」</h3>
<button id="mrc" type="button" onclick="details_open(true,'TableDetails','mrc')">表「Observation_LabResult」開く</button>
<details id="TableDetails">
<button type="button" onclick="details_open(false,'TableDetails', 'mrc')">閉じる</button>
<summary></summary>

<div id="Table_20456" class="htmlTable" align=center x:publishsource="Excel">


{% include ObservationLabTable.md %}

</div>



<button type="button" onclick="details_open(false,'TableDetails','mrc')">閉じる</button>

</details>


<br>

## プロファイル

【注】プロファイル詳細における「全要素のツリー」表示において、表示系ソフトのバグのため　meta.tag部分の一部で不要な重複表示が発生していることがある。<br>

<img src="chouhukuNote.png" width="60%">


{% include markdown-link-references.md %}
{% include external-link-reference.md %}