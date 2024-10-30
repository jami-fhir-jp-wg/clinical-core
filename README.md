# CLINSのためのFHIR実装ガイド

[CLINSのためのFHIR実装ガイドのサイト](https://jpfhir.jp/fhir/clins/igv1/)

## 本実装ガイド(IG)の目的：
厚生労働省が定めるいわゆる「２文書５情報」のうち健診結果報告書を除く、２文書５情報のFHIRデータ記述方法とそのプロファイル（計算機で処理するための定義ファイル）を記載した実装ガイドである。また、５情報をCLINSに送信する際のBundleリソースの仕様や、送信した情報を同定するための識別子に関する仕様もこのIGで定めている。

また、以下の２文書（診療情報提供書、退院時サマリー）のFHIR実装ガイドも含まれる。

  - [FHIR厚生労働省標準規格の2文書](https://std.jpfhir.jp/)
     - HS038　診療情報提供書HL7FHIR記述仕様
     - HS039　退院時サマリーHL7FHIR記述仕様

本実装ガイド（IG）は、[HL7 FHIR R4.0.1](https://hl7.org/fhir/R4/index.html)に従い、[JP-Core V1.1.x](https://jpfhir.jp/fhir/core/)からの派生プロファイルの実装ガイドとして作成されている。従って、本IGに記述されていないことについては、[JP-Core V1.1.x](https://jpfhir.jp/fhir/core/)を参照していただきたい。

## 謝辞
本実装ガイドは、以下の研究班の方々の貢献と支援により策定されています。

  - 令和２年度厚⽣労働科学特別研究事業「診療情報提供書、電⼦処⽅箋等の電⼦化医療⽂書の相互運⽤性確保のための標準規格の開発研究」(代表者：大江和彦　東京大学教授（当時）)
  - 令和３−４年度同「次世代の医療情報の標準規格への改定等に関する研究」(代表者：大江和彦　東京大学教授（当時）)
  - 令和4年度〜ムーンショット型研究開発事業　目標7「病院を家庭に、家庭で炎症コントロール」分担課題6　(分担課題代表者：大江和彦　東京大学教授（当時）)
  - 令和５年度〜戦略的イノベーション創造プログラム「統合型ヘルスケアシステムの構築」サブテーマD1　(分担課題代表者：河添悦昌　東京大学特任准教授（当時）)
  - 日本医療情報学会NeXEHRS研究会「FHIR日本実装検討WG」（代表者：大江和彦　東京大学教授（当時））
  - 日本医療情報学会標準策定・維持管理部会


# FHIR implementation guide for CLINS (JP-CLINS)

JP-CLINS（CLinical Information Sharing ImplementationGuide）
[Web Site](https://jpfhir.jp/fhir/clins/igv1/)

## Purpose of this Implementation Guide (IG):

This is an implementation guide that describes the FHIR data description method and its profile (definition file for computer processing) for 2 documents (Clinical Information Sheet and Discharge Summary) and 5 information, excluding the medical examination result report, out of the so-called "2 documents and 5 information" specified by the Ministry of Health, Labor and Welfare. This IG also defines specifications for Bundle resources when transmitting 5 information to CLINS and specifications for identifiers for identifying transmitted information.
It also includes FHIR implementation guides for the following two documents (Clinical Information Sheet and Discharge Summary).

## Acknowledgement

This Implementation Guide was developed with the contributions and support of the following research groups:
<br>
  - FY2020 Health, Labor and Welfare Science Special Research Project “Research and development of standards to ensure interoperability of electronic medical documents such as medical information sheets and electronic prescriptions” (Project Leader: Kazuhiko Ohe, MD,PhD (Professor of The University of Tokyo,then))
  - FY2020 “Research on revisions to next-generation medical information standards” (Project Leader: Kazuhiko Ohe, MD,PhD (Professor of The University of Tokyo,then))
  - FY2020 ~ Moonshot R&D Project Goal 7 “Turning the hospital into the home, controlling inflammation at home” Shared task 6(Sub-project Leader: Kazuhiko Ohe, MD,PhD (Professor of The University of Tokyo,then))
  - FY2020 ~ Strategic Innovation Creation Program “Building an Integrated Healthcare System” Subtheme D1(Project Leader: Yoshimasa Kawazoe, MD,PhD (Sub-project Associate Professor of The University of Tokyo,then))
  - Japan Medical Informatics Society NeXEHRS Study Group “FHIR Japan Implementation Study Working Group”(Project Leader: Kazuhiko Ohe, MD,PhD (Professor of The University of Tokyo,then))
  - Japanese Society of Medical Informatics Standards Development and Maintenance Subcommittee