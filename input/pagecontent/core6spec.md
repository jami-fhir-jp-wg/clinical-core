

### 電子カルテ情報共有サービスに医療機関から送信するFHIR仕様について
本ページは、国が進めている医療DXのなかでのサービスが検討されている「電子カルテ情報共有サービス」（以下、「CLINS」という。）において扱われる、いわゆる「３文書６情報」のうち、以下の「６情報」を医療機関から送信する際のFHIR仕様に関係する部分を記述したものである。3文書のBundle仕様はそれぞれの文書の仕様で規定されており、ここで取り扱わない。

<br>

#### 6情報

  * [(1)薬剤アレルギー等、(2)その他アレルギー等　AllergyIntoleranceリソースタイプ][JP_AllergyIntolerance_eCS]
  * [(3)傷病名	Conditionリソースタイプ][JP_Condition_eCS]
  * [(4)検査、(5)感染症　Observationリソースタイプ][JP_Observation_LabResult_eCS]
  * [(6)処方　MedicationRequestリソースタイプ][JP_MedicationRequest_eCS]
　<br><br>

#### 3文書仕様(参考)
  * [診療情報提供書](https://jpfhir.jp/fhir/eReferral/)
  * [退院時サマリー](https://jpfhir.jp/fhir/eDischargeSummary/)
  * [健康診断結果報告書](https://jpfhir.jp/fhir/eCheckup/)

#### まとめ情報(参考)
  * 患者サマリー
  
#### 送信時の複数リソースデータのまとめ方


##### Bundleリソース（collectionタイプ）の使用

CLINSに医療機関から送信する場合、１回に送信するリソースデータは、複数のリソースデータから構成されるのが普通である。FHIRではこのような送受信のまとめに、複数リソースデータをひとまりにしたひとつのリソースとしてBundleリソースタイプが用意されている。<br>

CLINSに医療機関から送信する場合には、ひとつのBundleリソースタイプのリソースデータを作成し、同一リソースタイプの複数のリソース・インスタンスをまとめて１回の送信で送信する。CLINSで処理対象となっていないリソースタイプのデータが含まれている場合には、受信側では処理されず破棄される（エラーとはならない）。なお、ひとつのBundleリソースタイプのファイルのサイズ上限は「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」に記述があり、上限を超えるサイズになる場合には、分割した複数のBundleリソースファイルで送信する必要があることがある。
<br>
Bundleリソースのタイプ（type要素）は"collection"を使用する。
<br>
なお、CLINSに６情報を送信する場合には、ひとつのBundlleに格納されるリソースデータ同士を相互に参照する（一方のリソースデータから同じBundle内の他のリソースを参照する）ことについては、**Patientリソースだけが許容されている。** その他のリソースデータの場合には、参照元のリソース・インスタンスのcontained要素に埋め込んでインラインリソースIDにより参照する()ことが必要である。
<br>
一方、３文書を送信する場合には、文書はそれぞれひとつの”document”タイプのBundleとして作成され、ひとつのBundlleに格納されるリソースデータ同士が特に制限なく相互参照できる。
<br>
Bundleリソースのプロファイルは以下を参照すること。
[CLINS電子カルテ情報共有６情報用　Bundleリソース][JP_Bundle_CLINS]


Bundleリソースの概要図は下図のようになる。

| Bundle概要図 |
| ---- |
| ![Bundle概要図](Bundle-fig.png) |


##### ひとつのBundleリソースに格納できるデータ

1回で送信するひとつのBundleリソースには、<br>
① 「その他アレルギー等」および「薬剤アレルギー等」　AllergyIntoleranceリソース<br>
② 傷病名情報 Conditionリソース<br>
③ 検査結果情報および感染症情報　Observationリソース<br>
のいずれかひとつのリソースタイプのデータと、患者を識別するためのPatientリソース1個だけを格納する。
<br>
<br>
リソースの格納順序として、患者を識別するためのPatientリソース1個をまずBundleの最初のentryに格納し、以後は上記①から③ のいずれかひとつのリソースタイプのデータを*原則として*１個以上格納する。<br>
「*原則として*」と記述している理由は、例外的に、過去に送信済みのBundleリソースの内容をすべて削除したい場合にBundleリソースを送信するケースにおいては、患者を識別するためのPatientリソース1個をだけを格納する形をとる。
<br>

** 複数のリソースタイプのデータをひとつのBundleリソースに混在させて送信することはできない（エラーとなる）**。

<br>


##### Bundleリソースに格納するリソース対応の指定

①から③のどのリソースタイプをBundleリソースに格納しているかの情報を明示的に設定するため、Bundleリソースの　meta.tagの次の値ペアを設定する。<br>

 - meta.tag.system : "http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS"
 - meta.tag.code : ①から④に対応して、以下のいずれかの値を設定する。
   - "AllergyIntolerance"
   - "Condition"
   - "Observation"
 

##### Bundleリソースに格納するリソースのまとめ単位(1報告単位)

　1回で送信するBundleリソースには、ひとりの患者の、同時に１回で報告される一連のデータ（１報告単位のデータ）だけを、すべて漏れなく格納する。異なる報告単位のデータや、異なる患者のデータをひとつのBundleリソースに含めてはならない。
<br>
受信側（CLINS側）でデータ検証がなされる場合、１報告単位のデータはそのデータ全体がOKとなるか、全体が拒絶されるかどちらかとなる。１報告単位のデータのうち一部だけが検証にパスすることはない。
<br>
１報告単位のデータを別々のBundleリソースに分けて作成、送信したり、一部分だけ送信することはできない。もし、同じidentifier識別情報を持つBundleリソースが複数回送信された場合、最後に送信されたものだけが有効となり、それより過去に送信されたデータは削除されて上書きされるか、またはエラーとなる。
<br>
１報告単位のデータとは、情報種別により次のとおりとする。
なお、以下の説明では、終了日等とは、削除日、転帰日、完了日など、その患者に登録されていた当該情報が有効でなくなったとされた日を指す。ひとつの当該情報に終了日等が複数種類登録されている場合には、そのうち最も新しい（直近の）日付の情報とする。

 ①その他および「薬剤アレルギー等」（その他アレルギー等という）
 <br>
１患者にその時点で登録されているか過去に登録されていたその他アレルギー等等のうち、以下のいずれかのものすべて。
  - 終了日等が５年以内のもの
  - 終了日等が存在しないもの
なお、その他アレルギー等のと「薬剤アレルギー等」とは区別しない。

②傷病名情報<br>
１患者にその時点で登録されているか過去に登録されていた傷病名情報のうち、以下のいずれかのものすべて。
  - 終了日等が５年以内のもの
  - 終了日等が存在しないもの

③ 検査結果情報および感染症情報<br>
１患者の１回の検査結果報告で報告された一連の検査の結果が1報告単位となる。１回の検査結果報告で感染症情報とそれ以外の検査結果情報とが混在している場合にも、それらを区別せずに１報告単位のデータとみなしてよいが、別々の検査結果報告として異なる報告単位のデータとしてもよい。ただし、異なる報告単位のデータとするときは、異なるBundle.identifier識別情報とする必要がある。


##### Bundleリソースを識別するIdentifier要素

Bundleリソースのidentifier要素は、CLINS側で保存される。送信側は、後続の送信において同じidentifierを使用することで、過去に送信したBundleリソース・インスタンスを削除、更新などの処理対象を指定できる。
<br>
Bundleリソースのidentifier要素は以下の通りとする。<br>
この仕様を満たすidentifierに加えて、これとは異なるsystem値をもつidentifierは複数存在しても構わない。<br>

Bundle.identifier.system	: "http://jpfhir.jp/fhir/clins/bundle-identifier" を設定する。<br>
Bundle.identifier.value	:  以下に記載する\[Bundle-ID\]　(旧報告単位ID)を設定する。

\[Bundle-ID\]：
次の３つの文字列を半角ハット記号（^）で連結した文字列。
  - 保険医療機関番号10桁：<br>
  　（内訳：都道府県番号２桁、点数表コード（医療機関区分）１桁、医療機関番号７桁）
  - 発行年：<br>
  　　Bundleリソースを作成した発行年（西暦）4桁
  - 施設内ID：<br>
  　　施設内において発行年内にCLINSに新規に送信したBundleリソースを通して一意となる（重複がない）番号<br>
  　半角英数字および半角ハイフン（U+002D）だけからなる36文字以内の可変長文字列。

##### Bundleリソース・インスタンスの例（JSON形式）：


```
{
    "resourceType": "Bundle",
    "id": "Bundle-for-Example01",
    "meta": 
      {
        :
        <省略>
        :
      },
    "identifier": [
      {
        "system": "http://jpfhir.jp/fhir/clins/bundle-identifier"
        "value": "1311234567^2024^ORDLAB-20230301O102930492039"
      },
        :
        <省略>
        :
    ],
    "type": "collection",
    "timestamp": "2020-08-21T12:12:21+09:00",
    "entry": [
        {
            "fullUrl": "f5f8bd72-4759-4fee-9cfe-4daf587abe68",
            "resource": {
                "resourceType": "Patient",
                "id": "JP-Patient-10293894",
                :
                <患者基本情報を格納するPatientリソース内容>
                :
            }
        },
        {
            "fullUrl": "f01d4ed2-a79f-bf5e-0232-5ae62dd34d63",
            "resource": {
                "resourceType": "Observation",
                "id": "JP-Observation-Example001",
                :
                "subject": {
                  "reference": "f5f8bd72-4759-4fee-9cfe-4daf587abe68"
                  <上のUUIDは、上記PatientリソースのfullUrlの値を設定することで上記患者リソースを参照している。>
                }
                :
                <１個目の検査結果><省略>
                :
            }
        },
　　　　　＜2個目、3個目、...の検査結果Observationリソース＞
    ]
}
```

<br>

##### Bundle内のentryの識別子（fullUrl）
Bundle.entry[] に繰り返しで格納される個々のリソース・インスタンスは、必ずBundle.entry[].fullUrl要素に、uuidをその都度毎回生成して異なる値を設定しなければならない。
<br>
1回で送信するひとつのBundleインスタンスの中に同一のuuidが存在してはならない（エラーとなる）。
<br>
同じリソースインスタンスを別のBundleリソースにより再送する場合は、前回送信時に使用したuuidをしてもよいが、新たに生成してもよい。

このuuidによるBundle内のentryの識別子(fullUrl)を、前回送信時の特定のentryの内容を受信側に指し示すための識別子として利用することはできない（受信側で保存していない）。

<br>

#### 送信済みBundleリソース・インスタンスを指定する識別子について

##### 対象となるBundleリソース・インスタンスの指定

CLINSに送信した１報告単位のデータ(ひとつのBundleリソースにまとめて送信したデータ)は、この単位で全体を削除するか、更新（削除＋新規登録）するかいずれかのみ行うことができる。１報告単位のデータのなかの<span style="color: red; ">特定のリソースだけを指定した削除や更新はできない。</span>
対象となる送信済みのBundleリソース・インスタンスの指定は、前述した\[Bundle-ID\]により行う。

##### 電子カルテ情報共有サービスでの削除と更新処理

 - 削除処理、更新処理：
    削除要求コマンドまたは更新処理要求コマンドが、①被保険者個人識別子、②Bundle.identifier.system値、③Bundle.identifier.value値、の3つのパラメータとともに送信される。
    
    - 削除要求の場合: 対象となるBundleリソースそのものは送信しない。共有サービスでは、①②③がすべて一致するBundleリソース・インスタンスのデータを削除する。

    - 更新処理： 共有サービスでは、①②③がすべて一致するBundleリソース・インスタンスのデータを削除する。次に、送信されたBundleリソース・インスタンスのデータを登録する。

なお、CLINSでは、削除処理、更新処理のどの過程でも途中で失敗、エラーとなった場合には、全ての処理をロールバックし、処理前の状態に戻す。

以上のCLINSの処理要件を満たせるよう、Bundleリソースインスタンス、Patientリソースインスタンスには、本仕様に従って①②③を設定しなければならない。


#### Bundleリソースの送信タイミング

Bundleリソースの電子カルテ情報サービスへの送信タイミングについては、CLINSの運用ルールに従うため、本IGの範囲外であるが、以下の方針を前提として本IGは作成されている。

① 「薬剤アレルギー等」「その他アレルギー等」の情報　AllergyIntoleranceリソース、および　② 傷病名情報 Conditionリソース<br>

　　送信タイミングは、外来受診（複数診療科同日受診は１回とみなす）、入院、退院のイベントのあった日、およびこれらの情報が「新規登録または一部が更新、削除」（以下、「更新等」という）された時点ごととする。原則として、当該イベントや時点の当日中（翌朝までの夜間を含む）とする。

③ 検査結果情報および感染症情報　Observationリソース<br>

　　送信タイミングは、これらの情報が更新等された時点ごととする。原則として、当該時点の当日中（翌朝までの夜間を含む）のなるべく早い時点が望ましいが、遅くとも次回診療日中（翌朝までの夜間を含む）とする。

詳細は、<a hreh="https://www.mhlw.go.jp/content/10808000/001262060.pdf">「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」</a>（厚生労働省医政局）の「原則->速やかな登録・取得」を参照。

#### 被保険者個人識別子の格納について

CLINSに医療機関から送信する場合には、個人識別子として、保険者情報と被保険者情報を、一定のルールで記述したPatientリソースを送信することが必須である。この仕様については、Patientリソースの仕様（[患者情報　JP_Patient_eCS][JP_Patient_eCS]）を参照すること。

#### 長期保存の対象であることのフラグ情報の格納
CLINSに医療機関から送信する場合、送信するFHIRリソースが長期保存対象の情報である場合には、そのことを明示的に示すため、>それぞれのリソース識別子情報を設定<span style="color: red; ">しなければならない</span>。<br>以下にその仕様を示す。<br>

##### 長期保存情報の仕様
リソースのデータを長期保存対象とする場合には、そのリソースのデータにおけるmeta要素のtag要素に以下の形式で記述<span style="color: red; ">しなければならない。</span><br>
　meta.tag.system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"　(この固定値とする)<br>
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
        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication",
        "code": "LTS"
      }
    ]
    }

  },
```

#### 病名情報における【未告知病名】であることのフラグ情報の格納
【未告知病名】とは、電子カルテ病名の登録済みの病名であるが、医療者がその病気の説明をまだ患者本人に対して病名やその病状を十分に説明していない段階であり、この病名情報を患者に提供する際には特別の配慮を必要とするものとして、電子カルテの病名登録画面上で、「未告知病名」として登録してある（または同様の意味あいのフラグを付与してある）病名情報のことである。
CLINSに医療機関からこの病名情報を送信する場合、送信する病名FHIRリソースにそのことを明示的に示すため、特別なリソース識別子情報を設定<span style="color: red; ">しなければならない。</span><br>以下にその仕様を示す。<br>

##### 【未告知病名】情報の仕様
病名リソース（Conditionリソース）におけるmeta要素のtag要素に以下の形式で記述<span style="color: red; ">しなければならない。</span><br>
　meta.tag.system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"　(この固定値とする)<br>
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
        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication",
        "code": "UNINFORMED"
      }
    ]
    }

  },
```

##### 【未提供病名】情報の仕様
病名を未提供（他の医療機関にも患者さんにも提供しない病名）とする場合には、病名リソース（Conditionリソース）におけるmeta要素のtag要素に以下の形式で未提供フラグを記述<span style="color: red; ">しなければならない。</span><br>
　meta.tag.system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication"　(この固定値とする)<br>
　meta.tag.code = "UNDELIVERED"　(この固定値とする)<br>
<br>
 以下の例のように他のフラグと併用できる。
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
        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication",
        "code": "UNINFORMED"
      },
      {
        "system": "http://jpfhir.jp/fhir/clins/CodeSystem/JP_ehrshrs_indication",
        "code": "UNDELIVERED"
      }
    ]
    }
  },
```

{% include markdown-link-references.md %}

