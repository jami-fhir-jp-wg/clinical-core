


## 検体検査結果情報における検査項目のコーディング方法について

### はじめに

５情報のうち、検体検査結果情報と感染症情報はObservationリソースタイプを使用し、「eCS 診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）プロファイル」に準拠してデータを作成する必要がある。

以降では次の用語を使用する。
 - 臨床検査項目基本コードセット：　別に厚生労働省が定める、５情報の「臨床検査項目基本コードセット」の表。[臨床検査項目基本コードセット一覧(Excel)](laboitemset_20231104.xlsx)
 - 感染症検査項目リスト:  別に厚生労働省が定める「５情報における感染症検査項目リスト」の表。上記エクセルのシート参照。
 - FHIR検査項目情報： Observation.code.coding[n]に設定されるsystem, code, displayの３つの値。([n]は繰り返し可能なcoding要素のいずれかひとつのcoding要素を指す)
 - 共有項目JLACコード： 臨床検査項目基本コードセット、または感染症検査項目リスト　の<span style="color: red; ">どちらかに収載されている</span>検査項目のJLAC10またはJLAC11コード。測定法コード部分3桁（13-15桁）が998（測定法問わず）または999（その他の測定法）であるJLACコードも含む。
 - 一般項目JLACコード： 臨床検査項目基本コードセット、と感染症検査項目リスト　の<span style="color: red; ">いずれにも収載されていない</span>検査項目のJLAC10またはJLAC11コード。測定法コード部分3桁（13-15桁）が998（測定法問わず）または999（その他の測定法）であるJLACコードも含む。
 - 施設固有コード: 検査項目に施設固有のコードを割り当てたコード。
 - 未標準化コード：　すべて9からなる17桁のコード（<span style="color: blue; ">99999999999999999</span>）。
 - FHIR識別名 : 臨床検査項目基本コードセット、または感染症検査項目リスト　に収載されている項目の「FHIR識別名」

 display要素、text要素には、半角カタカナ文字、全角空白、制御文字（タブ、改行など）を含んではいけない。<span style="color: red; ">カタカナは必ず全角文字とすること。</span>英数字記号および空白は半角文字とすること。全角ギリシャ文字、全角ローマ数字は可。機種やOS依存文字は含まないこと。

### 「FHIR検査項目情報」の設定パターンについて
 - （１）施設固有コード設定パターン<br>
   検査項目コードと名称を、Observationリソースのcode.coding[n]に以下のように設定する。<br>
    - code.coding[n].system : ”http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS”
      - 本来は施設ごとに異なるsystem値にすべきであるが、本仕様では施設によらずこの固定値を設定すること。
    - code.coding[n].code :　その施設固有の検査項目コード（いわゆるローカルコード）。異なる検体材料に同じ検査項目コードの検査が実施される施設の場合には、原則として検査項目コードに続けて"_"と検体材料の施設固有コードを連結した文字列とすることで、検体材料もわかるようなコードとすること。コード文字列中に英数字、ハイフン、アンダーバー以外の文字を含まないこと。
    - code.coding[n].display :　その施設での検査項目名。空白を含まない、なるべく長い文字列名称を推奨する。短い略称と長い略称がある選べる場合には、長い略称文字列を推奨する。異なる検体材料に同じ検査項目名の検査が実施されるシステムの場合には、原則として検査項目名に続けて"_"（半角アンダーバーこ）と検体材料名称を連結した文字列とすることで、検体材料もわかるようにすること（例："総蛋白_髄液"）。

 - （２）共有項目JLACコード設定パターン<br>
   検査項目コードと名称を、code.coding[n]に以下のように設定する。<br>
    - code.coding[n].system :　<br>
      - 臨床検査項目基本コードセットの検査項目：
      : ”http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_CoreLabo_CS”
      - 感染症検査項目リストの検査項目：
      : ”http://jpfhir.jp/fhir/<span style="color: blue;">clins/</span>CodeSystem/JP_CLINS_ObsLabResult_InfectionLabo_CS”
    - code.coding[n].code :　共有項目JLACコード
    - code.coding[n].display :　FHIR識別名

 - （３）一般項目JLACコード設定パターン<br>
   検査項目コードと名称を、code.coding[n]に以下のように設定する。<br>
    - code.coding[n].system :　”urn:oid:1.2.392.200119.4.504” (MEDIS臨床検査項目コード17桁(JLAC10)”http://medis.or.jp/CodeSystem/master-JLAC10-17digits”に対応するOID)、または17桁JLAC11に割り当てられたURI。
    - code.coding[n].code :　一般項目JLACコード
    - code.coding[n].display :　検査項目名。（JLACコードに対応する標準検査項目名称は定義されていないため、施設固有の検査項目名を用いて構わない。またJLACコードには検体材料コード情報が含まれているので、検体材料名称は検査項目名の一部として含まれれいなくても構わない。）

 - （４）未標準化コード設定パターン<br>
   検査項目コードと名称を、code.coding[n]に以下のように設定する。<br>
    - code.coding[n].system : ”http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS”
    - code.coding[n].code :　未標準化コードを設定する。
    - code.coding[n].display :　"未標準化コード項目(JLAC)"　を検査項目に関わらず固定文字列で設定する。<br>

いずれのパターンの場合にも、code.textには、（４）施設固有コード設定パターンでdisplayに設定する名称を設定する。<br>

### 「FHIR検査項目情報」の設定パターン適用規則

　すべての検体検査結果（感染症情報を含む）で、常に（１）施設固有コード設定パターンを適用したcode.coding[m]を記述する。<span style="color: red; ">（必須）</span><br>
　その上で、さらに追加として<br>

  1. 　臨床検査項目基本コードセット、または感染症検査項目リストの検査項目の場合：<br>
  （２）共有項目JLACコード設定パターン　で記述する。<span style="color: red; ">（必須）</span><br>
　　これに加えて、　（３）一般項目JLACコード設定パターン　も記述して差し支えない。<br>

  1. 　1以外の検査項目の場合：<br>
  （３）一般項目JLACコード設定パターン　を適用したcode.coding[n]を記述することを強く推奨する。しかし、これができない場合には、標準コード化できなかったことを明示的に記述するために、（４）未標準化コード設定パターン　を適用したcode.coding[n]を記述することが<span style="color: red; ">必須である。</span>すなわち、（３）か（４）のどちらかの設定パターン　を適用したcode.coding[n]を記述することになる。

#### 記述例

  1. 臨床検査項目基本コードセットに収載される血清カリウム（FHIR識別名 K）の結果報告の例：<br>
    説明<br>
    　3ー 5行　施設固有コードと名称による記述。　0198394は施設固有検査項目コード、082は材料コード。<br>
    　9ー12行　臨床検査項目基本コード（JLAC10）による記述。<br>
　　　14ー16行　JLAC10コードによる記述。ここでは、9行目と同一コード。<br>
　　　19行　コード化に依存しない検査項目名称。<br>


```
 1:  "code": {
 2:    "coding": [
 3:      {
 4:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS",
 5:        "code": "0198394_082",
 6:        "display": "血清K"
 7:      },
 8:      {
 9:        "code": "3H015000001826101",
10:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_CoreLabo_CS",
11:        "display": "K"
12:      },
13:      {
14:        "code": "3H015000002326101",
15:        "system": "urn:oid:1.2.392.200119.4.504",
16:        "display": "カリウム_血清_電位差測定_定量値"
17:      }
18:    ],
19:    "text": "血清カリウム"
20:  },

```


  1. 臨床検査項目基本コードセットにはない別の結果報告の例：<br>
    説明<br>
    　3ー 5行　施設固有コードと名称による記述(本仕様に従ったsystem値との組み合わせ記述)。　0180500は施設固有検査項目コード、023は材料コード。<br>
    　9ー12行　施設固有コードと名称による記述（元の施設固有system値による記述。なくてもよい）。<br>
　　　14ー16行　JAC10コードに変換できなかった（しなかった）ことを示す記述（必須）。<br>
　　　19行　コード化に依存しない検査項目名称。<br><br>


```
 1:  "code": {
 2:    "coding": [
 3:      {
 4:        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS",
 5:        "code": "0180500_023",
 6:        "display": "ケトン体_尿"
 7:      },
 8:      {
 9:        "system": "http://jpfhir.jp/fhir/local/h.u-tokyo.ac.jp/laboratory/CodeSystem/loboratory-items",
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

## その他、参考文献・リンク等

特記事項なし


{% include markdown-link-references.md %}
{% include external-link-reference.md %}