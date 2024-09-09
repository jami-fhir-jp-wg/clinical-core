

### 留意事項

<br>
<span style="color: blue; font-size: 100%;">本実装ガイドに関する質問やコメント（要望等を含む）は、以下のGoogleフォームから投稿してください。投稿にあたっては、Googleフォーム冒頭の説明をお読みいただき、了解された場合のみ投稿くださるようお願いします。</span>
<span style="color: blue; font-size: 100%;">[質問・コメント投稿フォームへ](https://forms.gle/7xVxoPWvk1fV7Sdu8)</span>
<span style="color: black; font-size: 120%;">パッケージ（tgzファイル）のダウンロードは上部メニューから可能です。</span><BR><BR>
<span style="color: black; font-size: 120%;">本実装ガイドでは、「電子カルテ情報共有サービス」を略してCLINSと記載する。CLINSへのデータ送信のこともCLINSと記載することがある。</span><BR><BR>

### CLINSのためのFHIR実装ガイド


#### 本実装ガイド(IG)の目的：

厚生労働省が定めるいわゆる「２文書５情報」のうち健診結果報告書を除く、２文書５情報のFHIRデータ記述方法とそのプロファイル（計算機で処理するための定義ファイル）を記載した実装ガイドである。また、５情報をCLINSに送信する際のBundleリソースの仕様や、送信した情報を同定するための識別子に関する仕様もこのIGで定めている。
また、以下の２文書（診療情報提供書、退院時サマリー）のFHIR実装ガイドも含まれる。

  - [FHIR厚生労働省標準規格の2文書](https://std.jpfhir.jp/)
     - HS038　診療情報提供書HL7FHIR記述仕様
     - HS039　退院時サマリーHL7FHIR記述仕様

本実装ガイド（IG）は、[HL7 FHIR R4.0.1](https://hl7.org/fhir/R4/index.html)に従い、[JP-Core V1.1.x](https://jpfhir.jp/fhir/core/)からの派生プロファイルの実装ガイドとして作成されている。従って、本IGに記述されていないことについては、[JP-Core V1.1.x](https://jpfhir.jp/fhir/core/)を参照していただきたい。

####  本実装ガイド(IG)が想定する運用形態
1. **Push形態**：
臨床情報を格納しているサーバが、あらかじめ決められた期間や条件を満たす臨床情報について、あらかじめ決められたタイミンで、定められたデータ種別のデータを、別のシステムに送信する（Push方式）形態。**２文書５情報を医療機関からCLINSに送信するのはこの形態である。**
<br><br>
この形態において、サーバが送信時に作成するリソース・インスタンスが従うべきプロファイルが本IGで説明される。<br>
この形態では、あるひとつのリソースタイプ（たとえばObservationリソースタイプ）のデータ（リソース・インスタンス）を複数まとめて送信するために、これらをひとつのBundleリソースタイプのデータにして送信する。それに関する仕様も本実装ガイドで定める。
なお、送信時のプロトコルや制御情報（一括登録か削除かなど）、暗号化、送信先相手先の指定方法等については、<a href="https://www.mhlw.go.jp/content/10808000/001262060.pdf">「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」</a>（厚生労働省医政局）に従う。

1. **Pull形態**：
FHIRに準拠した臨床情報を必要とするクライアントシステムが、FHIR REST APIに従って、あるひとつのFHIRリソースタイプのリソース・インスタンスを臨床データを保有するサーバに要求し、サーバからのレスポンスとしてFHIR規格に従ったデータを受け取る形態。<br>
この形態において、クライアントが受け取るリソースが従うべきプロファイルが本IGで説明される。<br>
この形態では、FHIR REST APIでの仕様にもとづき、複数のリソース・インスタンスを格納したひとつのBundleリソースタイプのデータとして返される。
<br>なお、**この形態は、CLINSでは当面運用されない。**

<p></p>

####  本実装ガイドの構成

  - [CLINS送信のためのFHIR実装ガイド](index.html#)
    - [本実装ガイド(IG)の目的](index.html#%E6%9C%AC%E5%AE%9F%E8%A3%85%E3%82%AC%E3%82%A4%E3%83%89ig%E3%81%AE%E7%9B%AE%E7%9A%84)
    - [本実装ガイド(IG)が想定する運用形態](index.html#%E6%9C%AC%E5%AE%9F%E8%A3%85%E3%82%AC%E3%82%A4%E3%83%89ig%E3%81%8C%E6%83%B3%E5%AE%9A%E3%81%99%E3%82%8B%E9%81%8B%E7%94%A8%E5%BD%A2%E6%85%8B)
  - [５情報送信仕様](core6spec.html)
  - [５情報と関連リソースの定義プロファイル](resourceProfiles.html)
  - [２文書の実装ガイドと仕様](3docs-ps.html)
  - [患者サマリー（療養計画書）](https://jpfhir.jp/fhir/clins/output/3docs-ps.html#%E6%82%A3%E8%80%85%E3%82%B5%E3%83%9E%E3%83%AA%E3%83%BC%E7%99%82%E9%A4%8A%E8%A8%88%E7%94%BB%E6%9B%B8draft)
  - [その他のリリース等(拡張・コード表等)](artifacts.html)
  - [データの実例集](artifacts.html#example-example-instances)
  - [用語説明](glossary.html)
  - 補足情報
    - [改訂履歴](history.html)
    - [Validationガイド](validationGuide.html)
    - [パッケージDownload]
      - [標準(diff)版](https://jpfhir.jp/fhir/clins/jp-eCSCLINS.r4-1.4.0.tgz)
      - [snapshot版](https://jpfhir.jp/fhir/clins/jp-eCSCLINS.r4-1.4.0-snap.tgz)
    - [JP-Core ターミノロジー(コード表)](https://jpfhir.jp/fhir/core/terminology/ig/)

### 謝辞

 <span style="color: black; font-size: 80%;">本実装ガイドは、以下の研究班の方々の貢献と支援により策定されています。</span>

  - <span style="color: black; font-size: 80%;">令和２年度厚⽣労働科学特別研究事業「診療情報提供書、電⼦処⽅箋等の電⼦化医療⽂書の相互運⽤性確保のための標準規格の開発研究」<a href="https://mhlw-grants.niph.go.jp/project/145722">☞</a></span>
  - <span style="color: black; font-size: 80%;">令和３−４年度同「次世代の医療情報の標準規格への改定等に関する研究」<a href="https://mhlw-grants.niph.go.jp/project/164909">☞</a></span>
  - <span style="color: black; font-size: 80%;">令和4年度〜ムーンショット型研究開発事業　目標7「病院を家庭に、家庭で炎症コントロール」分担課題6<a href="https://biomse.t.u-tokyo.ac.jp/moonshot/">☞</a></span>
  - <span style="color: black; font-size: 80%;">令和５年度〜戦略的イノベーション創造プログラム「統合型ヘルスケアシステムの構築」サブテーマD1<a href="https://d1www.sip3.jp/">☞</a></span>
  - <span style="color: black; font-size: 80%;">日本医療情報学会NeXEHRS研究会「FHIR日本実装検討WG」<a href="https://jpfhir.jp/">☞</a></span>
  - <span style="color: black; font-size: 80%;">日本医療情報学会標準策定・維持管理部会<a href="https://www.jami.jp/jamistd/standards-development/">☞</a></span>
  
 <br>



{% include markdown-link-references.md %}
