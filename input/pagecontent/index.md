<span style="color: black; font-size: 120%;">パッケージ（tgzファイル）のダウンロードは上部メニューから可能です。</span><BR><BR>
<span style="color: blue; font-size: 120%;">本実装ガイドに関する質問やコメント（要望等を含む）は、以下のGoogleフォームから投稿してください。投稿にあたっては、Googleフォーム冒頭の説明をお読みいただき、了解された場合のみ投稿くださるようお願いします。</span>
<span style="color: blue; font-size: 150%;">[質問・コメント投稿フォームへ](https://forms.gle/7xVxoPWvk1fV7Sdu8)</span>

### CLINS（３文書６情報作成・送信）のためのFHIR実装ガイド
 <span style="color: red; font-size: 120%;"><<注意：このIGは協議中の暫定的な内容が含まれます。リソースのProfileも暫定版です。内容は間違いや暫定情報を含むことがあります。お気づきの点は上部に記載のGoogleフォームからお知らせをお願いします。>></span><br>


#### 本実装ガイド(IG)の目的：

厚生労働省が定めるいわゆる「３文書6情報」のデータ記述で使用されるFHIRリソースについての記述方法とそのプロファイルを定義する実装ガイドである。また、6情報を「電子カルテ情報共有サービス」（以下、「CLINS」という。）に送信する際のBundleリソースの仕様や、送信した情報を同定するための識別子に関する仕様もこのIGで定めている。
ただし、3文書（健診結果報告書、診療情報提供書、退院時サマリー）の各文書ごとのFHIR実装ガイドは、以下で記載されている。

  -  [FHIR厚生労働省標準規格の資料] (https://std.jpfhir.jp/)
     - HS037　健康診断結果報告書HL7FHIR記述仕様 第１版
     - HS038　診療情報提供書HL7FHIR記述仕様 第１版
     - HS039　退院時サマリーHL7FHIR記述仕様

本実装ガイド（IG）は、FHIR R4.0.1に従い、JP-Core V1.1.xからの派生プロファイルの実装ガイドとして作成されている。従って、本IGに記述されていないことについては、JP-Core V1.1.xを参照していただきたい。

####  本実装ガイド(IG)が想定する運用形態
1. **Push形態**：
臨床情報を格納しているサーバが、あらかじめ決められた期間や条件を満たす臨床情報について、あらかじめ決められたタイミンで、定められたデータ種別のデータを、別のシステムに送信する（Push方式）形態。**３文書６情報を医療機関からCLINSに送信するのはこの形態である。**
<br><br>
この形態において、サーバが送信時に作成するリソース・インスタンスが従うべきプロファイルが本IGで説明される。<br>
この形態では、あるひとつのリソースタイプ（たとえばObservationリソースタイプ）のデータ（リソース・インスタンス）を複数まとめて送信するために、これらをひとつのBundleリソースタイプのデータにして送信する。それに関する仕様も本実装ガイドで定める。
なお、送信時のプロトコルや制御情報（一括登録か削除かなど）、暗号化、送信先相手先の指定方法等については、<a hreh="https://www.mhlw.go.jp/content/10808000/001262060.pdf">「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」</a>（厚生労働省医政局）に従う。

1. **Pull形態**：
FHIRに準拠した臨床情報を必要とするクライアントシステムが、FHIR REST APIに従って、あるひとつのFHIRリソースタイプのリソース・インスタンスを臨床データを保有するサーバに要求し、サーバからのレスポンスとしてFHIR規格に従ったデータを受け取る形態。<br>
この形態において、クライアントが受け取るリソースが従うべきプロファイルが本IGで説明される。<br>
この形態では、FHIR REST APIでの仕様にもとづき、複数のリソース・インスタンスを格納したひとつのBundleリソースタイプのデータとして返される。
<br>なお、**この形態は、CLINSでは当面運用されない。**


#### 主要な情報種別の範囲：
* 2024年度時点で厚生労働省が提示する「６情報」において、使用するFHIRリソースタイプ（４タイプ）
<br>
  * [薬剤アレルギー等、その他アレルギー等　AllergyIntoleranceリソースタイプ][JP_AllergyIntolerance_eCS]
  * [傷病名	Conditionリソースタイプ][JP_Condition_eCS]
  * [検査（注⁂）、感染症　Observationリソースタイプ][JP_Observation_LabResult_eCS] （注⁂　救急時に有用な検査、生活習慣病関連の検査。本仕様では正確を期すため「検査結果情報」という。）
  * [処方（注⁂）　MedicationRequestリソースタイプ][JP_MedicationRequest_eCS]（注⁂　診療情報提供書及び退院時サマリーに記載された処方情報。本仕様では正確を期すため「処方依頼情報」という。）
　<br><br>
 - 薬剤アレルギー等、その他アレルギー等の情報は、別に説明するように、同じプロファイルに従うAllergyIntoleranceリソースタイプで記述され、category要素に設定される値にもとづいて受信側で区別される。
 - 検査結果情報と感染症情報については、同じプロファイルに従うObservationリソースタイプで記述され、コード化された項目情報の記述にもとづいて受信側で区別される。
 - 処方依頼情報には当面、注射点滴手法によるものは含まれない。ただし、処方箋によって処方されるものは含まれる（自己注射剤など）。
<br>

* <span style="color: blue;">運用上の注意：処方依頼情報は、６情報のひとつとして単独で（２文書に含まれない形で）CLINSに送信されることはない。しかし、診療情報提供書、退院時サマリーの２文書に処方の内容を記述するために使用され、２文書の情報に埋め込まれてCLINSに送信されるため、その場合にはCLINSで取り出されて利用される。従って2文書に含まれる処方依頼情報は、本仕様にもとづいて記述される必要がある。
</span> 
<br><br>

* 上記のリソースから参照される関連情報<br>
　上記6情報から、その要素情報として参照されるリソースタイプを以下に示す。<span style="color: blue;"> ここに記載されないリソースタイプの情報も２文書ではそれぞれの仕様に従い使用可能である。</span>

  1. <span style="color: blue;">  [患者情報	Patientリソース][JP_Patient_eCS]　　</span>
  1.  [外来受診・入院歴情報	Encounterリソース][JP_Encounter_eCS]
  1.  [医療者情報　Practitionerリソース][JP_Practitioner_eCS]
  1.  オーダ情報 ServiceRequestリソース  JP_ServiceRequest
  1.  検査検体情報	Sepecimenリソース  JP_Specimen

  <span style="color: blue;">上記のうち、患者情報以外のリソースは、6情報では、埋め込みリソース（containedリソース）の形で記述される。患者情報のリソースはBundleリソースのひとつのentryとして記述され、６情報からは参照の形をとる。</span>
  <br>

- 3文書（診療情報提供書、退院時サマリー、健診結果報告書）に含まれる6情報に該当する情報の記述方法：<br>
　3文書の仕様書に記載されている6情報に該当する情報は、本実装ガイドに従い記述するものとする。<br>
  CLINSでは、3文書データは文書として取り扱われるとともに、これらの文書中に記述されている６情報に該当する情報は取り出され、６情報として送信されたのと同様に管理される。したがって、6情報をCLINSに送信するのと同じ仕様で記述しなければならない。<br>
  **★注意**：3文書の仕様書に記載されている6情報に該当する情報の仕様が、本実装ガイドと異なっている場合があるが、今後、3文書の仕様書は本実装ガイドに合わせて修正される予定である。したがって、現時点で両者に相違がある場合には、本実装ガイドの仕様を優先するものとする。

- 3文書に含まれる6情報以外の情報の記載と取り扱い<br>
  3文書に含まれる、6情報以外の情報種別のリソースではcontainedリソースを除き、CLINSでは取り出されて単独で利用されることはない。これらのリソースを3文書内で記述する場合にはそれぞれのFHIR仕様、JP-Core仕様に従い記述して構わない。<br>
  

#### contained リソース（埋め込みリソースの取り扱い）
 
FHIRでは、リソースの要素（例えば外来受診・入院歴情報を記述するencounter要素）から参照されるリソースをcontained要素に格納することで、参照される情報を包含する（埋め込む）ことができる。この方法で埋め込み記述されるリソースをcontainedリソース（正確にはContainされたリソース）と呼ぶ。containedリソースは、そのリソースタイプを通常のリソースとして記述する場合に比べて、いくつかの制限があり、例えばcontainedリソースをさらに埋め込むことはできない。
[https://hl7.org/fhir/R4/references.html](https://hl7.org/fhir/R4/references.html) （2.3.0.8 Contained Resources節参照）


#### リソースへの参照方法


リソース要素から、他のリソースを参照する場合、その要素はReferenceデータ型である。
<br>
Referenceデータ型とは、次のようなFHIR仕様である。


```
{
  reference   0..1  string  // リテラル参照(絶対URL、相対URL、内部continedリソースID参照)
  type        0..1  uri // 参照するリソースタイプ
  identifier  0..1  Identifier // 論理参照（参照先リソースのidenfier要素のひとつを指定する）
  display     0..1  string  // テキスト代替表現
}
```


本仕様では、次の３通りのいずれかひとつの方法のいずれかを状況に応じて使い分ける。<br>

**（１）containedリソースをインラインリソースIDにより参照する記述方法**

**CLINSでは、親リソースの要素（例えば外来受診・入院歴情報を参照するencounter要素）が特定のcontainedリソースを参照する場合はこの方法を使用する。**

containedリソースへの参照では、このうちreference要素とdisplay要素を使用して、そのリソースが埋め込んでいるcontainedリソースを次の方法で参照するものとする。display要素はこの参照先リソースの主要な情報を簡潔に示す文字列を仕様に従い設定する（省略可能な場合もある）。
<br>
参照先であるcontainedリソースのリソースid（id要素）に記述された値の先頭に#をつけたものを（インラインリソースIDという）、reference要素に設定する（例1）。
<br>
contained要素のリソースのidは、任意の文字列を設定できるが、contained要素を含む（親の）リソース内で一意（重複がない）となるように作成する必要がある。



例1： Reference型要素の値の例
```
  {
        "reference":  "#encounter203987"
        "display": "入院"
  }
```

<br>
例2：Observationリソースの例で、encounter要素、specimen要素がそれぞれcontainedリソースを参照しているケース （関係する要素以外については、記載を省略しているものがある）


```
  {
    "resourceType": "Observation",
    "contained": [
      {
        "resourceType":"Encounter",
        "id": "Encounter20240601001234101",
        "status": "finished",
        "class": {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "IMP",
          "display": "入院"
        }
      },
      {
        "resourceType":"ServiceRequest",
        "id": "ServiceRequest20240601001234101",
        "identifier": [
          {
            "value": "202406010239438473635623"
          }
        ],
        "status": "completed",
        "intent": "order",
        "subject": {
          "identifier": "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
        }
      }
    ],
    "status": "final",
    "subject": {
      "identifier": "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
    },
    "besedOn": {
      "reference": "#ServiceRequest20240601001234101",
      "display": "202406010239438473635623"
    },
    "encounter": {
      "reference": "#Encounter20240601001234101",
      "display": "入院"
    }
  }
```


［説明］Observation.besedOn要素は、reference要素にObservation.contained[1].id (ServiceRequestリソースのリソースID)の値の先頭に#をつけて記述している。同様にObservation.encounter要素にObservation.contained[0].id (EncounterリソースのリソースID)の値の先頭に#をつけて記述している。


<br>

**（2）　Bundleリソースの別のentryのリソースを参照する方法（fullUrlを用いるリテラル参照）**
　<br>

**CLINSでpatientリソースを参照する場合にはこの方法を使用する。**

 - Bundleリソースの別のentryに参照先リソースの記述がある場合、そのfullUrl要素に設定されているUUIDを記述して参照する。
  
 <br>

　　＜例：Reference型要素の値の例＞　（同じBundleリソース内の別のentryに記述されているfullUrlが "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
    であるリソースを参照する例）

```
  {
      "reference": "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
  }
```

<br>

**（3）Reference.identifier要素を用いる論理参照(logical reference)**

**CLINSへの送信ではこの方法は用いない。**


 - type要素にtype要素に参照先のリソースタイプを記述
 - identifier要素に参照先のリソースを一意に識別できる(参照先のリソースの)identifier要素のsystemとvalueを、記述

<br>

**（4）display要素だけを用いてインラインで表示情報だけを記述するdisplay参照**


**CLINSでは、Observationリソースにおける検体情報などの記述で、この参照方式を使用している。**
 - type要素にtype要素に参照先のリソースタイプを記述
 - display要素に参照先のリソースの内容を表す主要なテキスト表現をstring型で記述


　＜例：Reference型要素の値の例＞

```
  {
      "type": "Specimen", 
      "display": "血清"
  }
```


### ６情報送信に関するFHIR仕様

<span style="color: blue; font-size: 150%;">6情報のリソースとBundleリソースの詳細は以下のページを参照<br><A href="core6spec.html">
☞「６情報送信仕様」</a></span>

<p></p>


### 用語説明

```
[用語説明]　FHIRリソース：　FHIRでは医療情報は、リソースというひとまとまりのデータ項目を集めた構造的なデータとして記述される。
プログラミング言語でいう構造体のようなもので、メソッドのないClassのような概念に相当するともいえる。患者基本情報のPatientリソース、
検査結果のObservationリソースなど、100種類以上のリソースが定義されている。それぞれのリソースの構造（どういうデータタイプのどんな
要素から構成されているか）を定義しているのがProfile（プロファイル）である。
Profile自体もひとつのリソースである（StructureDefinitionリソース）。リソースの種類のことをリソースタイプと呼ぶ。
```
```
[用語説明]　リソース・インスタンス：　リソース（のProfile）に従って記述されたひとつひとつの実際のデータ（実体）のこと。
　　＜例：患者、田中太郎さんの患者基本情報をPatientリソースに従って記述したデータは、田中太郎さんのPatientリソース・インスタンスである。＞
```



### 謝辞

 <span style="color: black; font-size: 80%;">本実装ガイドは、以下の研究班の方々の貢献と支援により策定されています。</span>

  - <span style="color: black; font-size: 80%;">令和２年度厚⽣労働科学特別研究事業「診療情報提供書、電⼦処⽅箋等の電⼦化医療⽂書の相互運⽤性確保のための標準規格の開発研究」<a href="https://mhlw-grants.niph.go.jp/project/145722">☞</a></span>
  - <span style="color: black; font-size: 80%;">令和３−４年度同「次世代の医療情報の標準規格への改定等に関する研究」<a href="https://mhlw-grants.niph.go.jp/project/164909">☞</a></span>
  - <span style="color: black; font-size: 80%;">令和4年度〜ムーンショット型研究開発事業「病院を家庭に、家庭で炎症コントロール」分担課題7<a href="https://biomse.t.u-tokyo.ac.jp/moonshot/">☞</a></span>
  - <span style="color: black; font-size: 80%;">令和５年度〜戦略的イノベーション創造プログラム「統合型ヘルスケアシステムの構築」サブテーマD1<a href="https://d1www.sip3.jp/">☞</a></span>
  - <span style="color: black; font-size: 80%;">日本医療情報学会NeXERS課題研究会「FHIR日本実装検討WG」<a href="https://jpfhir.jp/">☞</a></span>
  - <span style="color: black; font-size: 80%;">日本医療情報学会標準策定・維持管理部会<a href="https://www.jami.jp/jamistd/standards-development/">☞</a></span>
  
 <br>



{% include markdown-link-references.md %}
