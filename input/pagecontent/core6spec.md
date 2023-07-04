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




# 電子カルテ情報共有サービス（仮称）に医療機関から送信するFHIR仕様について

## Push送信時の複数リソースデータのまとめ方
### Bundleリソース（collectionタイプ）の使用
電子カルテ情報共有サービス（仮称）に医療機関から送信する場合、１回に送信するリソースデータは、複数リソースタイプの複数リソースデータから構成されるのが普通である。FHIRではこのような送受信のまめに、異なるリソースタイプの複数リソースデータをひとまりにしたひとつのリソースとしてBundleリソースタイプが用意されている。<br>
電子カルテ情報共有サービス（仮称）に医療機関から送信する場合には、このBundleリソースタイプのひとつのリソースデータにして１回の送信で送信する。なお、1回で送信するひとつのBundleリソースには、ひとつのリソースデータを格納してもよいし、複数のリソースデータを格納してもよい。また、1回で送信するひとつのBundleリソースには、6情報のうち複数の情報種別、複数のリソースタイプのデータを格納してもよい。

ただし、電子カルテ情報共有サービス（仮称）で処理対象となっていないリソースの情報は処理されず破棄される（エラーとはならない）。

Bundleリソースのタイプ（type要素）は"collection"を使用する。<br>
なおひとつのBundlleに格納されるリソースデータ（以下の例では、Observation）同士を参照する（一方のリソースデータから同じBundle内の他のリソースを参照する）ことはできない。<br>
従って、たとえばひとつのBundlleに検査結果Observationリソースと、患者Patientリソースを別々のentryに格納して、Observationリソース側から検査結果の対象患者をそのPatientリソースをReferenceする方式で指し示すことはできない。

BundleリソースのIdentifier要素は、電子カルテ情報共有サービス（仮称）側では保存されないので、このIdentifierを指定して後続の送信において、以前に送信したBundleリソース内の全データについて削除、更新などの処理を期待することはできない。

Bundleリソース・インスタンスの例（JSON形式）：
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
            "fullUrl": "urn:uuid:6050a046-8f36-5064-c231-3aeacbc0c886",
            "resource": {
                "resourceType": "Observation",
                "id": "JP-Observation-Example001",
                :
                <１個目の検査結果><省略>
                :
            }
        },
        {
            "fullUrl": "urn:uuid:0c83b8af-ba92-5c73-e84e-c719f232cc61",
            "resource": {
                "resourceType": "Observation",
                "id": "JP-Observation-Example001",
                :
                <２個目の検査結果><省略>
                :
            }
        },
        {
            "fullUrl": "0dc2fb4c-baf1-4a30-0df4-58de94f34d2f",
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

<br>

### Bundle内のentryの識別子
Bundle.entry[] に繰り返しで格納される個々のリソース・インスタンスは、必ずBundle.entry[].fullUrl要素に、uuidをその都度毎回生成して設定<span style="color: red; ">しなければならない。</span>同じリソースインスタンスを別のBundleリソースにより再送する場合でも、前回使用したuuidを使用しないものとするが、受信側ではチェックしないためこれに違反してもエラーにはならない。
1回で送信したひとつのBundleインスタンスの中に同一のuuidが存在してはならず、これに違反した場合には受信側からエラーが戻される。

このuuidによるBundle内のentryの識別子を、前回送信時の特定のentryの内容を受信側に指し示すための識別子として利用することはできない。

<br>

## FHIRリソース・インスタンスを指定する識別子について
＜＜特に本項目は関係機関と協議中の仕様を含む＞＞<br>

### 対象となる特定のFHIRリソース・インスタンスを指定する方法
６情報として送信し受理されたFHIRリソースインスタンスを対象にして、次回以降の送信時に削除、更新などの処理を行いたい場合に、対象となる特定のFHIRリソース・インスタンスを指定する方法を説明する。

概要：　リソース・インスタンスのidentifier要素により、送信済みのリソース・インスタンスを処理対象として指定する。
指定方法：対象リソースタイプと、そのidentifier要素のtype値、およびsystem値とvalue値のペア

【参考：FHIRのidentifierの要素構成】
<img src="identifier.png" style="display: block; margin: auto;" width="50%"><br clear="all">

通常、１回のオーダや結果報告で、複数の処方薬、複数の検査結果項目が発生するので、その複数のリソースインスタンスを１回のBundleで送信する。
Bundleに含まれる個々のリソース・インスタンスのidentifier要素が、 そのリソース・インスタンスを一意に識別できるidentiferか、それとも１回のオーダや報告に含まれるすべてのリソースを一括して指定しているかの違いにより、以下の２通りのシステムがありうる。
  - ＜IdentifierタイプA＞：　リソース・インスタンスひとつひとつを個別に異なるインスタンスとして識別できる個別のidentifierを、送信する側が割り当てることができる。最初の送信の後の（２回目以降での）更新や削除の指示において、１回目に送信したときと同じidentifierを指定すれば１回目に送信したときのリソース・インスタンスを間違いなく指し示すことができるシステムである。このタイプのシステムでは、削除や更新は個々のリソース・インスタンスごとに可能である。
  注意が必要なのは、一見、個々のリソース・インスタンスごとに異なるidentifierが割り当てられていても、例えばひとつの処方箋内の医薬品の出現順序や結果報告書の項目順序に依存した順序番号などを割り当てているようなシステムがある。こうしたシステムでは、１回目と２回目で処方医薬品の数が変更されているような場合には同じidentifierが異なる処方医薬品情報を指し示してしまうことがあるので、＜IdentifierタイプA＞とはならない。この場合には、次に記載する＜IdentifierタイプB＞のidentifierを別に生成して設定する必要がある。
  - ＜IdentifierタイプB＞：　リソースインスタンスひとつひとつは区別されず、オーダ番号や結果報告書番号のように１回のオーダ単位での識別しかできないid情報を割り当てるシステムの場合がある。このようなシステムでは、削除や更新は１回のオーダや結果報告に含まれるすべてのリソース・インスタンスに対して一括して実施するのが普通である。たとえばただひとつの医薬品の処方量の変更や、1医薬品の削除だけであっても、そのときの１回の処方オーダで同時に処方したすべての医薬品に対応したすべてのリソース・インスタンスをまとめて削除した上で、それらすべてを新規に登録しなおすことが必要である。この場合、１回のオーダや結果報告に含まれるすべてのリソース・インスタンスは同じidentifierを持っている必要があり、こうしたシステムを＜IdentifierタイプB＞とする。
- Bundleリソースに格納されるすべてのリソース・インスタンスには、Identifier要素に必ず＜IdentifierタイプA＞または＜IdentifierタイプB＞のどちらかに対応する決められたtype値を設定しなければならない（後述）。その上でsystem値と、その下で一意となるそれぞれのvalueを生成して設定<span style="color: red; ">しなければならない。</span>
すなわち、
  - ＜IdentifierタイプA＞では、その医療機関のそのシステム系統では、過去未来に跨がり、すべてのリソース・インスタンスをひとつひとつ、必ず一意に、同じものとして識別できるID値をidentifier.valueに設定<span style="color: red; ">しなければならない。</span>
  - ＜IdentifierタイプB＞では、その医療機関のそのシステム系統では、過去未来に跨がり、リソース・インスタンスが含まれるオーダ単位や結果報告書単位で一意に識別できるID値（たとえばオーダ番号や結果報告書番号）をidentifier.valueに設定<span style="color: red; ">しなければならない。</span>このタイプでは、同じオーダ単位や結果報告書単位に含まれるすべてのリソース・インスタンスには同一のidentifierが少なくともひとつ付与<span style="color: red; ">されなければならない。</span>

＜IdentifierタイプA＞または＜IdentifierタイプB＞における、identifier要素のtype値の設定方法：

```
1) ＜IdentifierタイプA＞の場合のidentifier.typeの例：
"type": {
  "coding": [
    {
      "system": "http://hl7.org/fhir/ValueSet/identifier-type",
      "code": "ACSN"
    }
  ]
}
```
```
2) ＜IdentifierタイプB＞の場合で、identifierとしてオーダ番号を設定する場合のidentifier.typeの例：
"type": {
  "coding": [
    {
      "system": "http://hl7.org/fhir/ValueSet/identifier-type",
      "code": "PLAC"
    }
  ]
}
```
```
3) ＜IdentifierタイプB＞の場合で、identifierとして実施番号や報告書番号を設定する場合のidentifier.typeの例：
"type": {
  "coding": [
    {
      "system": "http://hl7.org/fhir/ValueSet/identifier-type",
      "code": "FILL"
    }
  ]
}
```
なお、2)と3)は厳密に区別する必要はなく、＜IdentifierタイプB＞であれば、2)3)のどちらの方法で設定しても構わない。
以上の仕様の意味を理解するために、受信側のサービスの処理内容を説明する。

### 電子カルテ情報共有サービス（仮称）での処理内容の説明
  前提として、以下で扱うidentifier.type要素には前項で定められた固定値のいずれかが設定<span style="color: red; ">されていなければならない。</span>

  1. 処理要求時に受信したBundleリソースに含まれる個々のリソース・インスタンスについて、そのリソースのidentifier要素のtype要素が＜IdentifierタイプA＞または＜IdentifierタイプB＞のどちらかであれば、そのリソースを処理要求元のリソースとする。それ以外のリソースは無視する。
  1. 処理要求元のリソースのidentifierとsystem値、value値のペアが一致するリソースをすべて検索して、ヒットした全てのFHIRリソースインスタンスを処理対象のリソースとする。ただし、＜IdentifierタイプA＞の場合には、ヒットしたFHIRリソースインスタンスが複数あればエラーとなり何もしない。
  1. 削除処理
    前項で処理対象となったすべてのリソースについて指定された削除処理を行なう。
    削除処理の途中で失敗した対象があった場合には、この処理すべて（今回の削除処理すべて）を中止し、削除処理の前の状態に戻る（ロールバック）。
    削除処理要求の場合には、処理要求元のリソースにはidentifier要素だけがあれば、他の要素は（必須要素も含め）なくても構わない。すなわちそのリソースのvalidationは行わない。
  1. 更新処理の場合には、削除＋新規登録の処理を、ひとつの「identifierとsystem値、value値のペア」ごとに行うことによって更新処理を実現する。そのため、まず上記削除処理をひとつの「identifierとsystem値、value値のペア」を対象として、該当するすべての対象リソースに対して行なう。次に、処理要求元のリソースのうちその「identifierとsystem値、value値のペア」のものをすべて新規登録する。
  一連の削除ー新規登録が成功した場合には、次の「identifierとsystem値、value値のペア」を対象とした処理に移る。
  <br>この「identifierとsystem値、value値のペア」を対象とした、「削除、登録」の途中で失敗またはエラーとなる対象があった場合には、すべて（削除＋更新のうちの削除を含むすべての処理）を中止し、その「identifierとsystem値、value値のペア」に関する「削除＋更新」の処理前の状態に戻る（ロールバック）。
  <br>なお、指定された対象となる既存のFHIRリソースインスタンスと比べて更新データに過不足があっても構わない。

以上の処理要件を満せるよう、６情報の各リソースインスタンスには、送信側の責任で適切にidentifier要素のsystem値とvalue値とを設定すること。


## 検体検査結果情報における検査項目のコーディング規則
いわゆる6情報のうち、検体検査結果情報は、Observationリソースタイプを使用し、Profile「診療情報コアサマリー用　Observationリソース（検体検査結果／感染症検体検査結果）プロファイル」に準拠してデータを作成するものとする。
検査項目を識別する情報は、code要素に設定される項目コード情報(code.coding要素)に、JLAC10コードまたはJLAC11コードのいずれか、またはそれに準拠した以降で説明するコードのいずれかの情報を必ず設定<span style="color: red; ">しなければならない。</span>いずれも設定されていない場合には、エラーとして扱われる。

以下では「JLACコード」とは、JLAC10コードまたはJLAC11コードを指す。

### 「臨床検査項目基本コードセット」＊に掲載される検査項目の場合：
[臨床検査項目基本コードセット一覧](ccslabo43set.html)
```
 * 「臨床検査項目基本コードセット」 : 別に厚生労働省が定める、6情報の「臨床検査項目基本コードセット」（43項目）を指す。
```
 - 「臨床検査項目基本コードセット」に掲載される当該項目の、同リストに掲載されているJLACコード
 - 掲載される当該項目の、同リストに掲載されているJLACコードから、測定法コード部分3桁を998または999（「998:測定法を問わず」「999:その他の測定法」の意味）に置き換えたコード：これは、測定法3桁のコーディングが正しくできない場合（998:測定法を問わず）や、掲載されているコードと測定法が異なると考えられる場合（999:その他の測定法）に使用することができる。
この場合のsystem値は検体検査情報の説明を参照のこと。

#### 検査項目名称について
コードに対応する（code.coding[n].displayに設定する）項目名称は、「臨床検査項目基本コードセット」掲載される当該項目の、同リストに掲載されている項目名称の文字列をそのまま設定<span style="color: red; ">しなければならない。</span>

#### 施設固有の検査項目コードとその名称の設定について
JLAC10コードの設定の有無に関わらず、施設固有コードとそれに対応する施設固有名称のペアは、上記コードを設定したcode.codingとは別のcode.codingに設定（code.coding.codeとcode.coding.displayに設定）<span style="color: red; ">しなければならない。</span>
この場合のsystem値は"http://jpfhir.jp/fhir/eClinicalSummary/ValueSet/JP_CCS_ObsLabResult_LocalCode_CS"を固定で設定する。

### 「臨床検査項目基本コードセット」に掲載されない検査項目の場合：
 - 当該項目のJLACコード
 - 当該項目のJLACコードから、測定法コード部分3桁を998または999（「998:測定法を問わず」「999:その他の測定法」の意味）に置き換えたコード。
 - 未標準化コード＝すべて9からなる17桁のコード（<span style="color: blue; ">99999999999999999</span>）：これは、なんらかの理由でJLACコードに対応づけられたデータを作成できない場合や、測定法以外の部分についても不正確である可能性が高い場合に、未標準化コードを表す意味で例外的に許容される。
この場合のsystem値は検体検査情報の説明を参照のこと。

#### 検査項目名称について
コードに対応する（code.coding[n].displayに設定する）項目名称は、JLACコードに対応する標準検査項目名称は定義されていないので、その項目を表す施設固有の名称文字列を適宜設定する。なお、未標準化コードに対応する名称には、<span style="color: blue; ">"未標準化コード項目(JLAC)"</span>という文字列を設定する。

#### 施設固有の検査項目コードとその名称の設定について
JLAC10コード、未標準化コードの設定の有無に関わらず、施設固有コードとそれに対応する施設固有名称のペアは、上記コードを設定したcode.codingとは別のcode.codingに設定（code.coding.codeとcode.coding.displayに設定）<span style="color: red; ">しなければならない。</span>
この場合のsystem値は"http://jpfhir.jp/fhir/eClinicalSummary/ValueSet/JP_CCS_ObsLabResult_LocalCode_CS"を固定で設定する。

## アレルギー情報と薬剤禁忌情報の区別
いわゆる6情報のうち、アレルギー情報と薬剤禁忌情報とは同じAllergyIntoleranceリソースタイプを使用し、同じProfile「診療情報コアサマリー用　AllergyIntoleranceリソース（アレルギー情報／薬剤禁忌）プロファイル」に準拠してデータを作成するものとし、両者の区別はAllergyIntoleranceリソースデータのcategory要素とcriticality要素に設定される値の組み合わせの違いにより以下の表に従い処理される。


薬剤禁忌情報においてはcategory要素にmedication、criticality要素にhighを必ず設定することによる。利用側（電子カルテ情報共有サービス（仮称））はこの両方の条件が満たされた場合にのみ「薬剤禁忌情報」として扱、どちらかまたは両方が満たされない場合には薬剤禁忌情報ではなくアレルギー情報として取り扱う。

|category要素|criticality要素|取り扱われる<br>6情報での種別|
|---|---|---|
|medication|high|薬剤禁忌情報。|
|medication|high以外|薬剤に対するアレルギー情報。<br>薬剤禁忌情報としては扱われない。|
|medication|値なし（要素なし）|薬剤に対するアレルギー情報。<br>薬剤禁忌としては扱われない。|
|medication以外|high|薬剤以外の原因物質に対するアレルギー情報。<br>薬剤禁忌としては扱われない。|
|medication以外|high以外|薬剤以外の原因物質に対するアレルギー情報。<br>薬剤禁忌としては扱われない。|
|medication以外|値なし（要素なし）|薬剤以外の原因物質に対するアレルギー情報。<br>薬剤禁忌としては扱われない。|
|値なし（要素なし）|値なし（要素なし）|なんらかのアレルギー情報。<br>薬剤禁忌としては扱われない。|

<br>

## 感染症情報とそれ以外の検体検査結果情報の区別
いわゆる6情報のうち、感染症情報とそれ以外の検体検査結果情報とは、同じObservationリソースタイプを使用し、同じProfile「診療情報コアサマリー用　Observationリソース（検体検査結果／感染症検体検査結果）プロファイル」に準拠してデータを作成するものとし、両者の区別はcode要素に設定される項目コード情報がJLAC10コードまたはJLAC11コードにより、
別に厚生労働省が定める「6情報における感染症検査項目リスト（仮称）」に含まれるコードである場合には、感染症情報として処理される。従って、感染症情報として検査情報を送信する場合には、必ず「6情報における感染症検査項目リスト（仮称）」に記載のJLAC10コードまたはJLAC11コードによりコーディング<span style="color: red; ">しなければならない。</span>


<br>

## 保険個人識別子の格納
電子カルテ情報共有サービス（仮称）に医療機関から送信する場合には、個人識別子として、保険者情報と被保険者情報を送信することが必須である。このためFHIRリソースの患者情報であるPatientリソースのidentifier要素にこの識別子情報を設定<span style="color: red; ">しなければならない。</span><br>以下にその仕様を示す。<br>
なお、Patientリソースが、別のリソースに包含されるContainedリソースとなっているにもPatientリソースのidentifier要素にこの識別子情報を設定<span style="color: red; ">しなければならない。</span>

### 「保険個人識別子」の文字列仕様
個人識別子として、保険者情報と被保険者情報とを以下の仕様で連携した文字列を使用する。<br>
本仕様では、以下、これを「保険個人識別子」と称する。また英数字は１バイト系文字の英数字を指す。<br>
保険個人識別子:　以下の各情報（要素）を半角コロン（文字コード１６進数 5A）で結合する。<br>
要素を省略する、とある場合には、長さ０の文字列とする。<br>

 - 保険者等番号:　英数字８桁　保険者番号。８桁に満たない場合は、先頭に半角ゼロを追加して８桁とする。<br>
　　（保険者等番号とは、保険者番号または公費負担者番号を指す）<br><br>
 - 被保険者証（手帳）等の記号:　英数または全角文字。健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の記号を記録する。全角だけからなる文字列または半角だけからなる文字列のどちらかとする。英数字だけの場合には 1 バイト系（半角）文字だけから構成するか、または全角文字だけから構成する。記号または仮名漢字を含む場合には、英数字を含めすべて全角文字だけから構成する。なお、いずれの場合にも、全角空白を含めないこととする。被保険者証（手帳）等の番号だけしかない場合には、本要素は省略する。<br><br>
 - 被保険者証（手帳）等の番号:　英数または全角文字。健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の番号、または後期高齢者被保険者証の被保険者番号を記録する。全角だけからなる文字列または半角だけからなる文字列のどちらかとする。英数字だけの場合には 1 バイト系（半角）文字だけから構成するか、または全角文字だけから構成する。記号または仮名漢字を含む場合には、英数字を含めすべて全角文字だけから構成する。なお、いずれの場合にも、全角空白を含めないこととする。<br><br>
 - 被保険者証等枝番: 「被保険者証等枝番」に対応する文字列。半角数字2桁固定とする。枝番がない（表記されていない）場合には、00とするのではなく本要素は省略する。<br>
<br>
例）保険者等番号＝12345、被保険者証（手帳）等の記号＝あいう、被保険者証（手帳）等の番号＝１８７、枝番＝05 の場合、<br>
　　保険個人識別子＝ "00012345:あいう:１８７:05" となる。<br>
　被保険者証（手帳）等の記号と枝番がない場合には<br>
　　保険個人識別子＝ "00012345::１８７:" となる。この場合、最後のコロンは必須である。<br><br>

### 保険個人識別子の格納方法
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


## 長期保存の対象であることのフラグ情報の格納
電子カルテ情報共有サービス（仮称）に医療機関から送信する場合、送信するFHIRリソースが長期保存対象の情報である場合には、そのことを明示的に示すため、>それぞれのリソース識別子情報を設定<span style="color: red; ">しなければならない</span>。<br>以下にその仕様を示す。<br>

### 長期保存情報の仕様
リソースのデータを長期保存対象とする場合には、そのリソースのデータにおけるmeta要素のtag要素に以下の形式で記述<span style="color: red; ">しなければならない。</span><br>
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

## 病名情報における【未告知病名】であることのフラグ情報の格納
【未告知病名】とは、電子カルテ病名の登録済みの病名であるが、医療者がその病気の説明をまだ患者本人に対して病名やその病状を十分に説明していない段階であり、この病名情報を患者に提供する際には特別の配慮を必要とするものとして、電子カルテの病名登録画面上で、「未告知病名」として登録してある（または同様の意味あいのフラグを付与してある）病名情報のことである。
電子カルテ情報共有サービス（仮称）に医療機関からこの病名情報を送信する場合、送信する病名FHIRリソースにそのことを明示的に示すため、特別なリソース識別子情報を設定<span style="color: red; ">しなければならない。</span><br>以下にその仕様を示す。<br>

### 【未告知病名】情報の仕様
病名リソース（Conditionリソース）におけるmeta要素のtag要素に以下の形式で記述<span style="color: red; ">しなければならない。</span><br>
　meta.tag.system = "http:/jpfhir.jp/fhir/ccs/CodeSystem/JP_ehrexs_indication"　(この固定値とする)<br>
　meta.tag.code = "UNINFORMED"　(この固定値とする)<br>

```
{
  "resourceType": "Condition",
  "id": "Example-condition",
  "meta": {
    :
    <省略>
    :
    "tag": {[
      {
        "system": "http:/jpfhir.jp/fhir/ccs/CodeSystem/JP_ehrexs_indication",
        "code": "UNINFORMED"
      }
    ]
    }

  },
```

<br>


