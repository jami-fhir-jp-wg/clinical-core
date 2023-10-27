
# 患者情報

## 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療６情報・サマリー用にその対象患者情報を記述するためのものである。
電子カルテ情報共有サービスに送信する情報に含まれる場合には、CLINS電カル共有サービス用:JP_AllergyIntolerance_CLINS_eCS　を使用すること。

## スコープ
### 対象
　患者、診療情報の記述の対象者。

### 対象としないこと
　家族、近親者などは、RelatedPersonリソースタイプ、医療者はPractitioner リソースタイプのそれぞれ派生プロファイルが使用できる。

## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Patient"
  - meta.profile : 電子カルテ情報共有サービスでは必須
  - extension (eCS_InstitutionNumber) : 電子カルテ情報共有サービスでは必須。医療機関番号１０桁
  - identifier : インスタンス識別ID。電子カルテ情報共有サービスでは、被保険者個人識別子の記述が必須。
  - name : 姓と名、それぞれname.family、name.givenが必須。
  - gender : 性別　必須。
  - birthDate : 生年月日　必須。
  - address : address.text に住所全体の文字列、address.cityに市町村名（例：文京区）、address.stateに都道府県名（例：東京都）が必須。

### 条件により必須
  - 特記なし。

### 推奨要素
  - 特記なし。

### MustSupport要素
　- 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。
  - 該当なし。

## プロファイル

{% include markdown-link-references.md %}