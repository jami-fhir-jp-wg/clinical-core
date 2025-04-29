
# 診療情報・サマリー汎用：【検体検査結果・感染症情報】

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
  - meta.tag  ("LTS"): 電子カルテ情報共有サービス（5情報のひとつ、または２文書内で送信される場合）、長期保存フラグを設定したい場合には必須。
  - contained (JP_Encounter) :電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では必須。２文書内で送信される場合はなくてもよい。検査オーダまたは検体採取時の入院外来区分情報
  - contained (JP_Practitioner) : 電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では必須。２文書内で送信される場合はなくてもよい。検査オーダ作成者の医療者情報
  - extension (eCS_InstitutionNumber) : 電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では必須。２文書内で送信される場合はなくてもよい。医療機関番号１０桁
  - extension (eCS_Department) : 電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では必須。２文書内で送信される場合はなくてもよい。診療科名称（とコード）
  - encounter : 電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では必須。２文書内で送信される場合はなくてもよい。検査オーダまたは検査実施時（検体採取時）の入院外来区分情報を記述しているcontainedリソース(JP_Encounter) への参照。
  - performer : 電子カルテ情報共有サービス（5情報のひとつとして送信される場合）では必須。２文書内で送信される場合はなくてもよい。検査オーダー者情報。この検査オーダを作成した医療者の情報を記述しているcontainedリソース(JP_Practitioner) への参照。
  - value[x] : 検査結果や観察結果。検査項目がバッテリー項目（グループ項目）の場合や理由があって検査値が得られなかった場合を除き必須。
  - dataAbsentReason : 検査値が得られなかった理由。検査値が得られなかった場合には必須。
  - hasMember : このグループに含まれる個々の検査の参照。この検査が複数の検査項目をグループ化したパネル検査もしくはバッテリー検査の場合には必須。ただし、実際にこの方式で記述するか、または別々のObservationリソースで記述するかについては、記述方針が別途定められている場合にはそれに従う。電子カルテ情報共有サービスで5情報を送信する場合にはこの要素は使用しない。
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


## 検体検査結果情報における検査項目のコーディング方法について

### はじめに

５情報のうち、検体検査結果情報と感染症情報はObservationリソースタイプを使用し、「eCS 診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）プロファイル」に準拠してデータを作成する必要がある。

以降では次の用語を使用する。
 - 指定検査43項目：　別に厚生労働省が定める、「臨床検査項目　指定検査43項目」の表に収載されている検査項目。
 - 指定感染症5項目リスト:  別に厚生労働省が定める「５情報における指定感染症5項目リスト」の表。
 - FHIR検査項目情報： Observation.code.coding[n]に設定されるsystem, code, displayの３つの値。([n]は繰り返し可能なcoding要素のいずれかひとつのcoding要素を指す)
 - 共有項目JLACコード： 指定検査43項目、または指定感染症5項目リスト　の<span style="color: red; ">どちらかに収載されている</span>検査項目のJLAC10またはJLAC11コード。測定法コード部分3桁（13-15桁）が998（測定法問わず）または999（その他の測定法）であるJLAC10コード、および000（その他の測定法）であるJLAC11コードも含む。
 - 一般項目JLACコード： 指定検査43項目、と指定感染症5項目リスト　の<span style="color: red; ">いずれにも収載されていない</span>検査項目のJLAC10またはJLAC11コード。測定法コード部分3桁（13-15桁）が998（測定法問わず）または999（その他の測定法）であるJLAC10コード、および000（その他の測定法）であるJLAC11コードも含む。
 - 施設固有コード: 検査項目に施設固有のコードを割り当てたコード。
 - 未標準化コード：　すべて9からなる17桁のコード（<span style="color: blue; ">99999999999999999</span>）。
 - FHIR識別名 : 指定検査43項目、または指定感染症5項目リスト　に収載されている項目の「FHIR識別名」

 display要素、text要素には、半角カタカナ文字、全角空白、制御文字（タブ、改行など）を含んではいけない。<span style="color: red; ">カタカナは必ず全角文字とすること。</span>英数字記号および空白は半角文字とすること。全角ギリシャ文字、全角ローマ数字は可。機種やOS依存文字は含まないこと。

### 本仕様・IGで使用するCodeSystem

| No   |         | system値(URL) |
| --- | ----------- | ------- |
| 1    | 指定検査４３項目　JLAC10 |http://jpfhir.jp/fhir/clins/CodeSystem/JLAC10/JP_CLINS_ObsLabResult_CoreLabo_CS|
| 2    | 指定検査４３項目　JLAC11   |http://jpfhir.jp/fhir/clins/CodeSystem/JLAC11/JP_CLINS_ObsLabResult_CoreLabo_CS|
| 3    | 指定感染症５項目　JLAC10 |http://jpfhir.jp/fhir/clins/CodeSystem/JLAC10/JP_CLINS_ObsLabResult_InfectionLabo_CS|
| 4    |指定感染症５項目　JLAC11 |   http://jpfhir.jp/fhir/clins/CodeSystem/JLAC11/JP_CLINS_ObsLabResult_InfectionLabo_CS|
| 5    | 一般項目JLACコード　JLAC10| http://medis.or.jp/CodeSystem/master-JLAC10-17digits|
| 6 　　| 未標準化コード | http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS|
|7|施設固有コード|http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS



### 「FHIR検査項目情報」の設定パターンについて
 - （１）施設固有コード設定パターン<br>
   検査項目コードと名称を、Observationリソースのcode.coding[n]に以下のように設定する。<br>
    - code.coding[n].system : 施設固有コードのsystem値(URL)とする。
      - 本来は施設ごとに異なるsystem値にすべきであるが、本仕様では施設によらずこの固定値を設定すること。
    - code.coding[n].code :　その施設固有の検査項目コード（いわゆるローカルコード）。異なる検体材料に同じ検査項目コードの検査が実施される施設の場合には、原則として検査項目コードに続けて"_"と検体材料の施設固有コードを連結した文字列とすることで、検体材料もわかるようなコードとすること。コード文字列中に英数字、ハイフン、アンダーバー以外の文字を含まないこと。
    - code.coding[n].display :　その施設での検査項目名。空白を含まない、なるべく長い文字列名称を推奨する。短い略称と長い略称がある選べる場合には、長い略称文字列を推奨する。異なる検体材料に同じ検査項目名の検査が実施されるシステムの場合には、原則として検査項目名に続けて"_"（半角アンダーバーこ）と検体材料名称を連結した文字列とすることで、検体材料もわかるようにすること（例："総蛋白_髄液"）。

 - （２）共有項目JLACコード設定パターン<br>
   検査項目コードと名称を、code.coding[n]に以下のように設定する。<br>
    - code.coding[n].system :　<br>
      - 指定検査43項目の検査項目
      : 指定検査４３項目JLAC10またはJLAC11のsystem値(URL)
      - 指定感染症5項目リストの検査項目：
      : 指定感染症５項目JLAC10またはJLAC11のsystem値(URL)
    - code.coding[n].code :　共有項目JLACコード
    - code.coding[n].display :　FHIR識別名

 - （３）一般項目JLACコード設定パターン<br>
   検査項目コードと名称を、code.coding[n]に以下のように設定する。<br>
    - code.coding[n].system :　一般項目JLACコードJLAC10のsystem値(URL)、または17桁JLAC11に割り当てられたURI(未定)。
    - code.coding[n].code :　一般項目JLACコード（17桁）
    - code.coding[n].display :　検査項目名。（JLACコードに対応する標準検査項目名称は定義されていないため、施設固有の検査項目名を用いて構わない。またJLACコードには検体材料コード情報が含まれているので、検体材料名称は検査項目名の一部として含まれれいなくても構わない。）

 - （４）未標準化コード設定パターン<br>
   検査項目コードと名称を、code.coding[n]に以下のように設定する。<br>
    - code.coding[n].system : 未標準化コードのsystem値(URL)
    - code.coding[n].code :　未標準化コードを設定する。すべて9からなる17桁のコード（<span style="color: blue; ">99999999999999999</span>）。
    - code.coding[n].display :　"未標準化コード項目(JLAC)"　を検査項目に関わらず固定文字列で設定する。英字と記号は半角文字。<br>

いずれのパターンの場合にも、code.textには、（４）施設固有コード設定パターンでdisplayに設定する名称を設定する。<br>

### 「FHIR検査項目情報」の設定パターン適用規則

　すべての検体検査結果（感染症情報を含む）で、常に（１）施設固有コード設定パターンを適用したcode.coding[n]を記述する。<span style="color: red; ">（必須）</span><br>
　その上で、さらに追加として<br>

  1. 　指定検査43項目、または指定感染症5項目リストの検査項目の場合：<br>
  （２）共有項目JLACコード設定パターン　で記述する。<span style="color: red; ">（必須）</span><br>
　　これに加えて、　（３）一般項目JLACコード設定パターン　も記述して差し支えない。<br>

  1. 　1以外の検査項目の場合：<br>
  （３）一般項目JLACコード設定パターン　を適用したcode.coding[n]を記述することを強く推奨する。しかし、これができない場合には、標準コード化できなかったことを明示的に記述するために、（４）未標準化コード設定パターン　を適用したcode.coding[n]を記述することが<span style="color: red; ">必須である。</span>すなわち、（３）か（４）のどちらかの設定パターン　を適用したcode.coding[n]を記述することになる。

#### 記述例

  1. 　指定検査43項目に収載される血清カリウム（FHIR識別名 K）の結果報告の例：<br>
    説明<br>
    　4ー 6行　施設固有コードと名称による記述。　0198394は施設固有検査項目コード、082は材料コード。<br>
    　9ー11行　臨床検査項目基本コード（JLAC10）による記述。<br>
    　14ー16行　MEDIS JLAC10コードによる記述。ここでは、9行目と同一コード。<br>
    　19行　コード化に依存しない検査項目名称。<br>


```
 1:  "code": {
 2:    "coding": [
 3:      {
 4:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS",
 5:        "code": "0198394_082",
 6:        "display": "血清カリウム"
 7:      },
 8:      {
 9:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JLAC10/JP_CLINS_ObsLabResult_CoreLabo_CS",
10:        "code": "3H015000001826101",
11:        "display": "K"
12:      },
13:      {
14:        "code": "3H015000002326101",
15:        "system": "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
16:        "display": "カリウム_血清_電位差測定_定量値"
17:      }
18:    ],
19:    "text": "血清カリウム"
20:  },

```


  2. 　指定検査43項目にはない別の結果報告の例：<br>
    説明<br>
    　4ー6行　施設固有コードと名称による記述(本仕様に従ったsystem値との組み合わせ記述)。　0180500は施設固有検査項目コード、023は材料コード。<br>
    　9ー11行　その施設で取り決めたコード体系system値と対応する施設固有コード、名称による記述（施設固有system値による記述。なくてもよい）。<br>
    　14ー16行　MEDIS JAC10コードに変換できなかった（しなかった）ことを示す記述（必須）。<br>
    　19行　コード化に依存しない検査項目名称。<br><br>


```
 1:  "code": {
 2:    "coding": [
 3:      {
 4:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS",
 5:        "code": "0180500_023",
 6:        "display": "尿ケトン体"
 7:      },
 8:      {
 9:        "system": "http://jpfhir.jp/fhir/local/hospitalABC.or.jp/laboratory/CodeSystem/loboratory-items",
10:        "code": "0180500",
11:        "display": "尿ケトン体"
12:      },
13:      {
14:        "code": "99999999999999999",
15:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS",
16:        "display": ”未標準化コード項目(JLAC)"
17:      }
18:    ],
19:    "text": "尿ケトン体"
20:  },

```


## 感染症情報とそれ以外の検体検査結果情報の区別

５情報のうち、感染症情報とそれ以外の検体検査結果情報とは、同じObservationリソースタイプを使用し、同じProfile「Observationリソース（検体検査結果／感染症検体検査結果）プロファイル」に準拠してデータを作成する。<br>
両者の区別はcode.coding.system要素に設定される値で識別される。
<br>
## プロファイル



{% include markdown-link-references.md %}
{% include external-link-reference.md %}