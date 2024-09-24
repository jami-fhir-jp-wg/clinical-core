

### 履歴の記載方針
    掲載にあたっては、内容の変更に関わらない修正（リンク切れの修正、表示体裁、表現修正、レイアウト変更、小さな説明追加、
    少数の事例追加など）の履歴は含まない。また、より正確なValidationを可能とするためのProfile記述方法の変更履歴も含まない。
    
    トップページの日付が更新されているのにバージョン番号の変更がない場合には、上記のような内容の変更に関わらない修正があったことを示す。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.0 (2024.9.24) 
  - eCS/CLINS:JP_Patient_eCS
    - name : name.text　が必須。
  
  - 全リソース
    - コード表をsystem値（coding.systemなど）をOID形式（"urn:oid:1.2.392....の形式）からほとんどを"http:"ではじまるURL形式("http://....")に変更することとなったため、それに合わせてプロファイル、表などの記載をすべて改訂。改訂一覧表は本履歴ページの末尾に掲載。この表に記載があるものはすべて本IGでの改訂漏れがあった場合にも、URL表記に変更すること。
    - 上記変更に併せ、Validationで使用するjp-coreパッケージ、JpFhirTerminologyパッケージをそれぞれ対応バージョンに変更（）


### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.4.1 (2024.9.16) version番号変更せず
  - eCS/CLINS:JP_Patient_eCS
    - name : name.text　が必須。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.4.1 (2024.9.14)

  - eCS/CLINS:JP_AllergyIntolerance_eCS
    - 4.1 必須要素のmeta.profileにバージョン併記必須であることを追記。
  - eCS/CLINS:JP_Consition_eCS
    - 4.1 必須要素のmeta.profileにバージョン併記必須であることを追記。
  - eCS/CLINS:JP_Encounter_eCS
    - 4.1 必須要素からmeta.profileを外す。
  - eCS/CLINS:JP_Patient_eCS
    - 4.1 lastUpdatedを必須要素に追加。
  - eCS/CLINS:JP_MedicationRequest_eCS
    - 4.1 必須要素のmeta.profileにバージョン併記必須であることを追記。
    - 7.1 プロファイル詳細： 
      - DosageInstruction[].timing.code : 用法をコード化できない場合にはダミーコード(16桁の'0X0XXXXXXXXX0000')を使用することを追記。あわせて、ダミーコードのシステムURLをhttp://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_MedicationUsage_Uncoded_CSとして設定することを記載。
  - 2文書6情報の作成データ（インスタンス）のmeta.profileにバージョンを併記。PatientデータにlastUpdatedを追加。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.4.0 (2024.9.7)


  - eCS/CLINS:JP_AllergyIntolerance_eCS
    - 4.2 条件により必須　の欄からmeta.profileを削除（必須要素として挙げられているため）。
    - 4.4 MustSupport要素　に「extension (eCS_Department) : 診療科情報」を追加（ProfileではMustSupport要素となっているのに合わせた）。
    - 6.1 「AllergyIntolerance」表：
      - categoryの説明:「biologyの設定はしないこととしており、設定されている場合にはエラーとなる」の記述を削除（エラーにはならない）。
      - code.coding.versionの説明: 「設定することを原則とする。設定していない場合には送信時の最新版を使用しているとみなされる」を削除し、単に推奨とする。
      - reaction.manifestation.coding.system: 病名用交換コード以外に、病名管理番号なども使えることを追記。
      - reaction.manifestation.text: reaction.manifestationが出現する場合にはtextを必須とする。
    - 7.1 プロファイル詳細：　code.codingとその子要素の多重度を「AllergyIntolerance」表に合わせて修正。
  - eCS/CLINS:JP_Consition_eCS
    - 6.1 「Condition」表：
      - code とその子要素の説明において、病名管理番号によるコード化が必須であることを記載。
      - code.coding.versionの説明: 「設定することを原則とする。設定していない場合には送信時の最新版を使用しているとみなされる」を削除し、単に推奨とする。
    - 7.1 プロファイル詳細： 
      - asserterのMustSupportを外す。
      - code.codingとその子要素の多重度を「Condition」表に合わせて修正。
      - code とその子要素の説明において、病名管理番号によるコード化が必須であることを記載。
  - eCS/CLINS:JP_Encounter_eCS
    - 4.1 必須要素からmeta.profileを外す。
  - eCS/CLINS:JP_Observation_LabResult_eCS
    - 4.4 MustSupport要素
       - 以下の要素を追加（ProfileではMustSupport要素となっているのに合わせた）。
         - contained (JP_Specimen) : 検体材料情報
         - contained (JP_ServiceRequest) :検査オーダ情報
         - issued: 検査結果報告日時」
    - 6.1 「Observation」表：
      - code.coding.versionの説明: 「設定することを原則とする。設定していない場合には送信時の最新版を使用しているとみなされる」を削除し、単に推奨とする。
    - 「検体検査結果情報における検査項目のコーディング方法について」において、JLAC10コードとJLAC11コードを併記。
  - eCS/CLINS:JP_MedicationRequest_eCS
    - 4.4 MustSupport要素
      - substitution を削除
      - 以下の要素を追加（ProfileではMustSupport要素となっているのに合わせた）。
        - DosageInstruction[].site : 外用薬の部位
        - DosageInstruction[].route : 投与経路
        - DosageInstruction[].method : 投与方法の基本用法区分
        - DosageInstruction[].doseAndRate : 投与量
    - 6.1 「MedicationRequest」表：
      - code.coding.versionの説明: 「設定することを原則とする。設定していない場合には送信時の最新版を使用しているとみなされる」を削除し、単に推奨とする。
    - 7.1 プロファイル詳細： 
      - substitution のMustSupportを外す。
      - DosageInstruction[].timing.code.coding　で複数の用法コードを併用記載を可能となるように多重度を0..1から0..*に変更（施設固有コードの併用などを可能としていたため）。
      - DosageInstruction[].timing.code.coding.system 厚生労働省電子処方箋用法コードのシステムURLの仮設定値を変更：　"http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription"
      - DosageInstruction.timing.code.coding.version  の説明: 「設定することを原則とする。設定していない場合には送信時の最新版を使用しているとみなされる」を削除し、単に推奨とする。多重度を1..1から0..1に変更。
      - DosageInstruction[].timing.code.coding.text : 多重度を0..1から1..1に変更。
      - DosageInstruction[].method.coding の説明：2桁コードで出せる場合には2桁コードとすることを追記。
      - DosageInstruction[].method.text の説明：コード化が1桁の場合には、詳細投与方法を含めた文字列を記載することを追記。
  - terminologyパッケージの対応バージョンを1.2.1にアップデート
  - ２文書の仕様説明を別々の見出しにし、リソースプロファイルとの関係説明を追加した。
  - Validation用のprofile パッケージのファイル名をjp-eCSCLINS.r4　で始まるファイル名に変更した。


## コード表のsystem値の変更表（OID形式→URL形式）　V1.5.0での改訂

使用欄に＊がある行は、本IGで使用されるコード表

|使用|コード名称|OID形式（旧）|URL形式（新）|
|--|--|--|--|
|	＊	|	JAMI SSMIX2診療科コード表	|	urn:oid:1.2.392.200250.2.2.2	|	http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment	|
|	＊	|	JAMI用法コード表ー１６桁バージョン	|	urn:oid:1.2.392.200250.2.2.20	|	http://jami.jp/CodeSystem/MedicationUsage	|
|	＊	|	JAMI用法コード表ー８桁補足用法コード	|	urn:oid:1.2.392.200250.2.2.20.22	|	http://jami.jp/CodeSystem/MedicationUsageAdditional	|
|	＊	|	JAMI用法コード表ー基本用法コード１桁	|	urn:oid:1.2.392.200250.2.2.20.30	|	http://jami.jp/CodeSystem/MedicationMethodBasicUsage	|
|		|	JAMI用法コード表ーイベント用法コード３桁	|	urn:oid:1.2.392.200250.2.2.20.31	|	http://jami.jp/CodeSystem/MedicationEventTriggered	|
|		|	JAMI用法コード表ー外用部位コード表３桁	|	urn:oid:1.2.392.200250.2.2.20.32	|	http://jami.jp/CodeSystem/MedicationBodySiteExternal	|
|		|	JAMI用法コード表ー投与経路区分コード２桁（基本用法コード１桁と詳細区分コード１桁を連結）	|	urn:oid:1.2.392.200250.2.2.20.40	|	http://jami.jp/CodeSystem/MedicationMethodDetailUsage	|
|		|	JAMI用法コード表ー内服用法詳細区分コード１桁	|	urn:oid:1.2.392.200250.2.2.20.41	|	http://jami.jp/CodeSystem/MedicationMethodDetailOral	|
|		|	JAMI用法コード表ー外用用法詳細区分コード１桁	|	urn:oid:1.2.392.200250.2.2.20.42	|	http://jami.jp/CodeSystem/MedicationMethodDetailExternal	|
|		|	JAMI用法コード表ー注射用法詳細区分コード１桁	|	urn:oid:1.2.392.200250.2.2.20.43	|	http://jami.jp/CodeSystem/MedicationMethodDetailInjection	|
|		|	JAMI用法コード表ー注入用法詳細区分コード１桁	|	urn:oid:1.2.392.200250.2.2.20.44	|	http://jami.jp/CodeSystem/MedicationMethodDetailPouring	|
|		|	JAMI用法コード表ー時間的要素・機器区分コード1桁	|	urn:oid:1.2.392.200250.2.2.20.45	|	http://jami.jp/CodeSystem/MedicationMethodDetailDeviceInjection	|
|		|	JAMI用法コード表ー１２桁バージョン（実証実験用）	|	urn:oid:1.2.392.200250.2.2.21	|	http://jami.jp/CodeSystem/MedicationUsage-12digits	|
|	＊	|	JAMI医薬品調剤指示コード	|	urn:oid:1.2.392.200250.2.2.30.10	|	http://jami.jp/CodeSystem/DrugDispensePreparationMethod	|
|	＊	|	MEDISー病名マスター病名管理番号	|	urn:oid:1.2.392.200119.4.101.2	|	http://medis.or.jp/CodeSystem/master-disease-keyNumber	|
|	＊	|	MEDISー病名マスター病名交換用コード	|	urn:oid:1.2.392.200119.4.101.6	|	http://medis.or.jp/CodeSystem/master-disease-exCode	|
|	＊	|	MEDISー病名マスター修飾語管理番号	|	urn:oid:1.2.392.200119.4.201.2	|	http://medis.or.jp/CodeSystem/master-disease-modKeyNumber	|
|		|	MEDISー病名マスター修飾語交換用コード	|	urn:oid:1.2.392.200119.4.201.5	|	http://medis.or.jp/CodeSystem/master-disease-modExCode	|
|		|	MEDISー医薬品基準番号（ＨＯＴ１３）	|	urn:oid:1.2.392.200119.4.402.1	|	http://medis.or.jp/CodeSystem/master-HOT13	|
|	＊	|	MEDISー医薬品基準番号（ＨＯＴ９）	|	urn:oid:1.2.392.200119.4.403.1	|	http://medis.or.jp/CodeSystem/master-HOT9	|
|		|	MEDISー医薬品処方用番号（ＨＯＴ７）	|	urn:oid:1.2.392.200119.4.403.2	|	http://medis.or.jp/CodeSystem/master-HOT7	|
|	＊	|	MEDISー臨床検査コードまとめ表「17桁コード表」	|	urn:oid:1.2.392.200119.4.504	|	http://medis.or.jp/CodeSystem/master-JLAC10-17digits	|
|		|	MEDISー看護⾏為テーブル（基本看護実践標準用語）	|	urn:oid:1.2.392.200119.4.704	|	http://medis.or.jp/CodeSystem/master-nursingAction-16digits	|
|		|	MEDISー看護観察テーブル（観察名称管理番号（コード））	|	urn:oid:1.2.392.200119.4.804	|	http://medis.or.jp/CodeSystem/master-nursingObservationKeyCode	|
|		|	厚生労働省WHO-ICD10-2013年版3桁コード	|		|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-3digits	|
|		|	厚生労働省WHO-ICD10-2013年版全桁コード	|		|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full	|
|		|	電子処方箋管理サービスー処方用法マスタ	|		|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUsage_ePrescription	|
|		|	医薬品成分コード（電子カルテ共有サービス）	|		|	関係者調整中	|
|		|	以下は厚労省処方箋CDA記述仕様第1版に収載の表	|		|		|
|		|	剤形区分コード	|	urn:oid:1.2.392.100495.20.2.21	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationForm	|
|	＊	|	力価区分コード	|	urn:oid:1.2.392.100495.20.2.22	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType	|
|	＊	|	後発品変更不可コード	|	urn:oid:1.2.392.100495.20.2.41	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationSubstitutionProhibittedCategory	|
|		|	残薬確認指示コード	|	urn:oid:1.2.392.100495.20.2.42	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/RequestCheckRemainingMedicine	|
|	＊	|	診療科コード	|	urn:oid:1.2.392.100495.20.2.51	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationRequestDepartment	|
|	＊	|	保険種別コード	|	urn:oid:1.2.392.100495.20.2.61	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/InsuranceMajorCategory	|
|	＊	|	被保険者区分コード	|	urn:oid:1.2.392.100495.20.2.62	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/InsuredPersonCategory	|
|		|	患者一部負担コード	|	urn:oid:1.2.392.100495.20.2.63	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationInsuredPersonClass	|
|		|	レセプト種別コード	|	urn:oid:1.2.392.100495.20.2.64	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/	|
| |	医薬品コード（医薬品マスター）	|	(urn:oid:1.2.392.100495.20.2.71)	|	関係者調整中	|
|		|	薬価基準収載医薬品コード	|	(urn:oid:1.2.392.100495.20.2.72)	|	関係者調整中	|
|＊	|	個別医薬品コード（YJ コード）	|	(urn:oid:1.2.392.100495.20.2.73)	|	関係者調整中	|
|		|	HOT コード（9 桁）	|	(urn:oid:1.2.392.100495.20.2.74)	|	MEDISー医薬品基準番号（ＨＯＴ９）を参照	|
|		|	一般名処方マスタ	|	urn:oid:1.2.392.100495.20.2.81	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationGeneralOrderCode	|
|	＊	|	医薬品単位略号	|	urn:oid:1.2.392.100495.20.2.101	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code	|
|	＊	|	都道府県番号	|	urn:oid:1.2.392.100495.20.3.21	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/PrefectureNo-2digits	|
|	＊	|	点数表番号	|	urn:oid:1.2.392.100495.20.3.22	|	http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationFeeScoreType	|
|	＊	|	医療機関コード	|	urn:oid:1.2.392.100495.20.3.23	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicalOrganizationID	|
|	＊	|	医籍登録番号	|	urn:oid:1.2.392.100495.20.3.31	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber	|
|	＊	|	保険者番号	|	urn:oid:1.2.392.100495.20.3.61	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsurerNumber	|
|		|	被保険者証記号	|	urn:oid:1.2.392.100495.20.3.62	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsuredPersonSymbol	|
|		|	被保険者証番号	|	urn:oid:1.2.392.100495.20.3.63	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsuredPersonNumber	|
|		|	被保険者証番号-枝番	|		|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsuredPersonSubnumber	|
|		|	公費負担者番号	|	urn:oid:1.2.392.100495.20.3.71	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/PublicPayerNumber	|
|		|	公費受給者番号	|	urn:oid:1.2.392.100495.20.3.72	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/PublicInsuredPersonNumber	|
|	＊	|	RP番号	|	urn:oid:1.2.392.100495.20.3.81	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber	|
|	＊	|	RP内の順序を示す連番	|	urn:oid:1.2.392.100495.20.3.82	|	http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex	|
|		|	処方箋 ID	|	urn:oid:1.2.392.100495.20.3.11.y　枝番仕様あり	|	URL表記は使用しない	|
|		|	調剤結果 ID	|	urn:oid:1.2.392.100495.20.3.12.y　枝番仕様あり	|	URL表記は使用しない	|
|		|	麻薬施用者免許番号	|	urn:oid:1.2.392.100495.20.3.32.y　枝番仕様あり	|	URL表記は使用しない	|
|		|	薬剤師名簿登録番号	|	urn:oid:1.2.392.100495.20.3.33.y　枝番仕様あり	|	URL表記は使用しない	|
|		|	医師を特定する ID	|	urn:oid:1.2.392.100495.20.3.41.x　枝番仕様あり	|	URL表記は使用しない	|
|		|	歯科医師を特定する ID	|	urn:oid:1.2.392.100495.20.3.42.x　枝番仕様あり	|	URL表記は使用しない	|
|		|	薬剤師を特定する ID	|	urn:oid:1.2.392.100495.20.3.43.x　枝番仕様あり	|	URL表記は使用しない	|
|		|	患者を特定する ID	|	urn:oid:1.2.392.100495.20.3.51.x　枝番仕様あり	|	URL表記は使用しない	|


## V1.3.0以前の改訂履歴

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.3.0 rc3 (2024.7.12 　リリース候補v3)

  - ２文書（診療情報提供書、退院時サマリー）、患者サマリー（療養計画書）において、category（文書カテゴリー区分）の取り扱い、設定する値を変更した。２文書ではこれまで type （文書区分コード）と同一としており、患者サマリー（療養計画書）では使用しない要素としていた。これを変更し、診療情報提供書では、退院時文書、外来文書の区別をこのcategory（文書カテゴリー区分）により設定することを必須とし、退院時サマリーでは、退院時文書であることをこのcategory（文書カテゴリー区分）により明示することとした。
  - 上記に伴い、新たにcategory（文書カテゴリー区分）のためのCodeSystem（JP_codeSystem_documentSubTypeCode）とValueSet(JP_valueSet_documentSubTypeCode)を追加した。


### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.3.0 rc2 (2024.7.11 　リリース候補v2)

  - 対応するjpfhir-terminology.r4パッケージを1.1.1から1.2.0に変更した。（アレルギーコードJFAGYの最新版を組み込み）
  - Exampleの表題の表記などを、ある程度統一性をもった表記に修正した。


### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.3.0 rc1 (2024.7.7 　リリース候補v1)

  - 患者サマリー（療養計画）　の仕様記載を公開。これに必要なBundleリソースFHIR仕様、同Compositionリソース仕様を追加した。
  - 上記に伴い、メニュー、構成からリンクを追加。
  - 患者サマリー（療養計画）と処方依頼情報、検査結果情報を、医療機関ID、医師ID、で紐づけることができるようにするため、処方依頼情報と検査結果情報に以下の要素の記述を追加した。
    - 処方依頼情報 MedicationRequest
      - conrained(JP_Practitioner) とrequester要素を電子カルテ情報共有サービスでは必須に変更。
    - 検体検査結果 Observation
      - conrained(JP_Practitioner) とperformer要素を電子カルテ情報共有サービスでは必須に変更。
      - 上記に対応するためサンプルInstance　（データ作成例）のMedicationRequest、Observationの各リソースに、requester要素、performer要素(医療者情報)を追加。

### ２文書５情報（CLINS）  Ver. 1.2.0 rc1 (2024.7.1 　リリース候補v1)
2文書のIGと５情報のIGを統合し、Ver. 1.2.0 から開始する。

### 診療情報提供書 IG
#### 2024.06.23	Ver. 1.2.0-rc1 (リリース候補v1)
  - 電子カルテ情報共有サービス用と汎用診療情報提供書を同一profileで記述するようにprofileを統一。
  - 添付情報セクション、PDFセクションでbinaryリソースへの参照を禁止し、参照はDocumentReferenceリソースへの参照だけできるように改訂。

#### 2024.02.29	Ver. 1.1.6
  - 電子カルテ情報共有サービスの５情報仕様と共通するリソースについて、プロファイル記述を共通化（仕様の変更はなし）。

#### 2024.02.07	Ver. 1.1.5
  - セクション210 添付情報セクションにBundleリソースも添付可能であることが漏れていたので追記。
  - 表３Bundleリソースに上記に関連してentry要素にBundleリソースが記述可能であることを追記。
  - Organizationの拡張要素による診療科記述を可能とした。
  - Bundle、Compositionのエントリの多重度の記載を修正。
  - 仕様をPDF版（およびそれのHTML版）を参照する記載方式に変更。
  - 電子カルテ情報共有サービスの５情報仕様と共通するリソースについて仕様を５情報仕様を参照する方式に変更。
  - IGpackageのバージョンを仕様のバージョン1.1.5に合わせた。
  

#### 2023.05.17	IGpackage 0.9.7
  - 添付情報セクションにBundleリソース添付が可能となった（2023.04.27	Ver.1.1.4）に対応してentryにBundleを追加格納できるように診療情報提供BundleのProfileを修正。

#### 2023.05.09	IGpackage 0.9.6 (version変更せず)
  - Compositionリソース定義中のセクションのdisplay要素の値からexactlyを削除して、厳密一致でなくてもよいように変更した。

#### 2023.04.27	Ver.1.1.4
  - セクション510 allergiesIIntoleranceSection　→ allergyIntoleranceSection　（スペルミス修正）
  - 表5-1、表5-2も同じ修正。
  - 添付情報セクションのentryにBundleリソースも格納できるように追加。

#### 2023.04.27	IGpackage 0.9.5 -> 0.9.6
  - 添付情報セクションのentryの多重度（max）を修正（1から*へ）
  - 臨床経過セクションのentryの多重度（mix）を修正（1から0へ）
  - サンプルインスタンスにlastUpdated要素がないものが多数あったので、lastUpdated要素を追加
  - 添付情報セクションにBundleを追加。

#### 2023.04.25	Ver.1.1.3	
  - 4.3　Compositionリソースを構成するセクションの表：　紹介目的セクション、傷病名・主訴セクション、現病歴セクションの必須記載に注意書きを追加。既往歴セクションの必須を任意に修正。
  - 表３ Bundleリソース：　Bundle.signature の説明を補足。
  - 表5.2　紹介目的セクション、傷病名・主訴セクション、現病歴セクション の多重度の最小値を1に修正（この欄は、親の構造情報セクションが存在する場合の記載であるため）。
  - 表18 Observationリソース： meta.profile の説明から固定値の記載を削除し、実際には格納する検査カテゴリに合わせた値を設定する記載を追加。

#### 2023.03.21	Ver.1.1.2	  
#### JP-Core V1.1/V1.1.1 対応漏れを修正
　- Patientリソース、RelatedPersonリソース　のname.useは"official"だけではなく、"usual"も使用可能とした。
　- Patientリソース、RelatedPersonリソースのname.text の姓と名は全角空白ではなく半角空白1文字で連結する。
##### Bundleリソース、Compositionリソース以外のリソースで、meta.lastUpdated要素を必須として追加。
##### 同じくmeta.profileを必須から任意に変更し説明を補足。
　- Bundle.entry のEncounter の多重度を1..1から0..* に変更。

#### 2022.12.10	Ver.1.1	主な箇所に限り記載
#### JP-Core V1.1対応
    1.4の各記載を参照
#### 説明の改善、記載漏れ箇所の追記（主な箇所）
    - p6 PDFセクション、CDA参照セクションの取扱い
    - p9 文書管理情報（ヘッダ部）受診情報を追記
    - 診療情報提供書本体（ボディー部）のセクションの必須／任意を修正、Cardinalityを修正
    - 4.3　Compositionリソースを構成するセクションにPDFセクションが漏れていたのを追加し、最大セクション総数を4から7に修正
    - p12の表およびp14記載にも追加。
    - 4.4  要素の任意／必須の記載を明記、セクションコードを本文中にも記載
    - 4.4.6.2 CDAセクションの使い方の記載を補足
    - 4.4.6.3 構造化セクションの子セクション要素に格納すべき情報がない場合のComposition.section.emptyReason要素設定をunavailableからnilknownに修正. 情報を取得していない場合は、notasked を設定することを追記
    - 4.4.6.4 厚生労働省の様式（別紙様式11）に即した診療情報提供書との対応表を新たに追加
    - 4.13  不要な入院時服薬情報セクションの説明が挿入されていたのを削除
    - 4.26  備考・連絡情報セクションの説明が脱落していたのを追加

#### 本文の誤記修正
    - p5表　臨床経過情報エントリーのリソースタイプ
        - ClinicalImpression → DocumentReference

#### リソース表の修正、変更
    - http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier へ変更
        - 表1 AllergyIntolerance
        - 表4 CarePlan
        - 表5-1と5-2 Composition
        - 表6 Condition
        - 表7 Consent
        - 表8 DeviceUseStatement
        - 表9 Device
        - 表10 DiagnosticReport
        - 表12 Encounter
        - 表13 FamilyMemberHistory
        - 表14 ImagingStudy
        - 表15 Immunization
        - 表17 MedicationStatement
        - 表18 Observation
        - 表19 Organization
        - 表25 ResearchStudy
        - 表26 ResearchSubject
    
        の各 identifier （JP-Core V1.1 対応）

    - 表1 AllergyIntolerance.code（JP-Core V1.1 対応）
        - http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS　
        - code要素に使用できるコード表を追記
        - AllergyIntolerance.reaction.substance.code同上
    - 表3 Binaryエントリーの説明にPDFセクションを追加
    - 表4 CarePlan.category
        - http://jpfhir.jp/fhir/core/CodeSystem/care-plan-category
    - 表5-1 
        - Composition.extension.valueString 文書バージョンの例として"1.0" から "1"に修正
        - Composition.type.coding.code退院時サマリーのコードに修正
        - 入院中経過セクションのリソースをClinicalImpressionからDocumentReferenceに修正
        - Composition.authoｒ 診療科も記述できるよう行を追加
        - Composition.event 要素に入院期間を設定することを必須で追加
        - sectionをひとつ追加し、退院時診断セクションを追加
        - 添付情報セクションとPDFセクションの英語セクション名の最初の1文字をを小文字に変更
    - 表5-2
        - Composition.extension.valueString 文書バージョンの例として"1.0" から "1"に修正
        - Composition.type.coding.code 診療情報提供書のコードに修正
        - Composition.authoｒ 診療科も記述できるよう行を追加
        - 臨床経過セクションのリソースをClinicalImpressionからDocumentReferenceに修正
        - アレルギー、家族歴、身体所見、感染症の各セクションのcardinality を1..*から0..*に修正（必須から任意に修正）
        - 備考・連絡情報セクションの記載がもれていたので追加
        - 添付情報セクションとPDFセクションの英語セクション名の最初の1文字をを小文字に変更
    - 表10 DiagnosticReport.meta.profile
        - http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Commonに変更（JP-Core v1.1対応）
    - 表11 DocumentReference.meta.profile  
        - http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_eCS に修正
        - classHistory.period  cardinlityを1..1から0..1に変更
    - 表14 ImagingStudy.meta.profile
        - http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology に変更（JP-Core v1.1対応）
    - 表16 MedicationRequest.meta.profile
        - http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_ePrescriptionData　に修正
    - 表16 MedicationRequest.dispenseRequest.quantity.system  urn:oid:1.2.392.100495.20.2.101 に修正
        - MedicationRequest.dosageInstruction.extension.url 
        http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse　に変更（JP-Core v1.1対応）
    - 表16-1 MedicationRequest.dosageInstruction.timing.code.coding.system
        urn:oid:1.2.392.200250.2.2.20 に修正
    - 表17-1 MedicationStatement.dosage.timing.code.coding.system  urn:oid:1.2.392.200250.2.2.20に修正
    - 表18 Observation.meta.profile http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_Common_eCS （JP-Core v1.1対応し、適切な値を使うことを記載）
    - 表19　Organization 医療機関情報
        - Organization.meta.profile  http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS
          に変更（発行元と先でprofileを同じにした）
        - Organization.extension.valueCoding  および同.code修正
        - Organization.type  cardinality を0..1 に修正
        - Organization.telecom.system    cardinality を0..1 に修正
        - Organization.country    cardinality を0..1 に修正
    - 表20  Organization 診療科情報
        - Organization.meta.profile
            - http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS_department に変更（発行元と先でprofileを同じにした）
        - Organization.partOf　cardinalityを0..1に変更
    - 表21　Patient　患者情報
        - Patient.telecom.system    cardinality を0..1 に修正　
        - Patient.telecom.use    cardinality を0..1 に修正
        - Patient.address.postalCode    cardinality を0..1 に修正
    - 表22 Practitioner 文書作成責任者情報／文書法的責任者情報
        - meta.profile http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Practitioner_eCS に変更（発行元と先でprofileを同じにした）
    - 表23 Procedure 入院中治療処置情報
        - Procedure.category カテゴリーのsystem値http://jpfhir.jp/fhir/core/CodeSystem/JP_ProcedureCategory_CS に変更し、説明を変更（JP-Core v1.1対応）
        - Procedure.code system=http://jpfhir.jp/fhir/core/CodeSystem/JP_ProcedureCodesMedical_CSに変更し、説明を変更
        - Procedure.bodySite STEM７のsystem値を変    （JP-Core v1.1に対応）
        - Procedure.outcome カテゴリーのsystem値　http://jpfhir.jp/fhir/core/CodeSystem/JP_ProcedureOutcome_CS　に変更し、説明を変更（JP-Core v1.1対応）

#### 2024.02.29	Ver. 1.1.6
  - BundleのプロファイルをValidation時のエラーに対応するよう記述修正（仕様の変更はなし）。
  - 電子カルテ情報共有サービスの５情報仕様と共通するリソースについて、プロファイル記述を共通化（仕様の変更はなし）。

#### 2024.02.12	Ver. 1.1.5
  - 仕様をPDF版（およびそれのHTML版）を参照する記載方式に変更。
  - 電子カルテ情報共有サービスの５情報仕様と共通するリソースについて仕様を５情報仕様を参照する方式に変更。

## ５情報CLINS IG
#### Ver1.0.0 rc1/rc2 (2024.6.24/2024.7.1 　リリース候補v1)
  - 全般
    - これまでは、診療情報・サマリー汎用のプロファイル(..._eCS)と、それから派生した、電子カルテ情報共有サービスに送信するために特化したプロファイル(..._CLINS_eCS)とに使い分ける構成となっていた。本バージョンから、両者を区別せず、すべて診療情報・サマリー汎用のプロファイル(..._eCS) 

  - 実装ガイド本文
    - リソースへの参照の記述を整理
      - Patientリソースへの参照方法を変更：identifierを記述する方法からfullUrlを記述する方法に変更。
      
  - 全リソースタイプ
    - meta.profile: 1つは必須とし、多重度を1..* に変更。設定するプロファイルURLをCLINS専用URLから共用URL（eCS）に変更。バージョン番号を末尾に｜1として追加。
  
  - Bundleを除く全リソースタイプ  
    - patient要素でのリソース参照方法を変更
    - encounter要素でのリソース参照方法を変更

  - Condition,MedicationRequest,Observationの各リソースタイプ
    - 電子カルテ情報共有サービスに送信する場合には
      - 診療科情報を記述する拡張を必須とし、診療科名称を必須とする。
      - 入院外来区分を記述するcontainedリソース（JP_Encounter_eCS）を必須とし、Encounter.class要素に入院か外来かをコードで記述することを必須とする。

  - AllergyIntorelanceリソースタイプ 
    - meta.profile: 電子カルテ情報共有サービスへの送信時も同じプロファイルを使用することとし、設定を変更しない。
    - category：　薬剤アレルギー等情報の取り扱いの変更に伴い、仕様を変更。
    - criticality:  薬剤アレルギー等情報の取り扱いの変更に伴い、仕様を変更。「条件により必須」要素から外す。
    - code: コードを変更。これに伴いcode.coding.system値を変更。
    - code: コーディング仕様の詳細を記載。
    - coding.code.version を推奨要素とする。
    - recorderとasserterを「推奨要素」から外す。これにともない、contained (JP_Practitioner) を「推奨要素」から外す。
    - criticalityとreactionを「MustSupport要素」とする。

  - Observationリソースタイプ 
    - category: JP-Coreに合わせて必須に変更。
    - coding.code.version を推奨要素とする。

  - Bundleリソースタイプ 
    - identifierの仕様を変更。

  - MedicationRequestリソースタイプ
    - categoryを「推奨要素」とする。
    - medicationCodeableConcept.code.version を推奨要素とする。
    - dosageInstructionで使用する用法コードを電子カルテ情報共有サービスでは、厚生労働省電子処方箋用法コードによりコード化することを必須とする。

  - Conditionリソースタイプ
    - 主病名フラグを設定するための拡張　JP_eCS_DiagnosisType　を新設。
    - coding.code.version を推奨要素とする。
    - 病名コードに、前置修飾語、後置修飾語を記述する拡張を追加。

#### Ver0.9.14-draft  (2024-03-12) 

* 各リソースのidentifier要素の仕様を変更し、リソースの一意識別IDであることを明記し、その仕様の記載を各リソースの表ではなくIG本文に記載し、共通の参照仕様とした<br>

* 電子カルテ情報共有サービスでのみ必須となる要素は、IG記載において、必須要素の欄ではなく、条件付き必須要素の欄に移動した。<br>

* 患者リソースをContainedリソースとして格納することを仕様から外し、BundleリソースのPatientリソースを外部参照（identifierをロジカル参照）することを明記した。

* 別のリソースをReferenceで参照する要素の説明を、リソースの表ではなくIG本文に記載し、共通の参照仕様とした。

* ５情報送信仕様の本文：<br>
誤）Bundleリソースの　meta.tag.system要素に"http://jpfhir.jp/fhir/clins/BundleResourceType"を,　meta.tag.code要素に①から④に対応して、それぞれ以下のいずれかの値を設定する。<br>
正）Bundleリソースの　meta.tag.system要素に"http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS"を,　meta.tag.code要素に①から④に対応して、それぞれ以下のいずれかの値を設定する。

* ５情報送信仕様の本文 2.1.7.2 被保険者個人識別子の格納方法 の例示：<br>
誤）{http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID<br>
          "system": "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_member",<br>
正）{<br>
          "system": "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID",<br>

* JP_AllergyIntolerance_eCS<br>
  電子カルテ情報共有サービスでは、薬剤アレルギー等の場合にcodeとして医薬品一般名コードまたはYJコードを使うこととしているので、それが可能なようにProfileを変更した。<br>

* JP_AllergyIntolerance_CLINS_eCS<br>
  電子カルテ情報共有サービスでは、薬剤アレルギー等の場合にcodeとして医薬品一般名コードまたはYJコードを使うことが必須であるため、それをValidatoreがチェックできるようにProfileを変更（Invariantsを記載）した。<br>



#### Ver0.9.13-draft  (2024-02-14) 

* 病名　Conditionリソースのmeta.tagに未提供フラグ UNDELIVEREDを追加<br>

* 病名交換用コード、病名管理番号のsystem値のURLをOID系のURLに変更。<br>


#### Ver0.9.12-draft  (2024-01-28) 

JP_MedicationRequest_eCSの表で以下の２箇所のURLを修正（ePrescription→core）：<br>


* dispenseRequest.extension.url	頓用回数を表現する拡張を識別するURL。<br>
   http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount<br>
<br>


* route.coding.system	投与経路コード表のsystem<br>
   http://jpfhir.jp/fhir/core/CodeSystem/route-codes<br>
<br>


#### Ver0.9.11-draft  (2024-01-21) 

患者リソースに保険個人識別子を記述する際のidentifier.system値を次のように修正する。（eCS → clins、Idsysmem　→ Idsystem 誤記修正）
http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID <br>
↓ <br>
http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID <br>

#### Ver0.9.10-draft  (2023-11-22) 

* 2.1.1.1 Bundleリソース（collectionタイプ）の使用

   Bundleの概要図による説明を追加。

* 2.1.2.2 電子カルテ情報共有サービスでの削除と更新処理

　　最終行の表現を修正()


#### Ver0.9.8-draft  (2023-11-18) / Ver0.9.9-draft  (2023-11-19)

* 2.1.1.2 ひとつのBundleリソースに格納できるデータ
<span style="color: red;">【仕様変更】</span><br>
  どのリソースタイプを格納しているかの情報を明示的に設定するために、link要素を使用していたのを、meta.tag要素を使用する方針に変更。これは、Bundleリソースを、格納しているリソースタイプで検索することが必要になるための変更。
<br>
* JP_MedicationRequest_eCS
<span style="color: red;">【仕様追加】</span><br>
  MedicationRequest.medicationCodeableConcept.coding で、いずれの標準コードも割り当てられいない医薬品を処方する場合に、"標準コードなし"コード体系("http://jpfhir.jp/fhir/eCS/CodeSystem/MedicationCodeNocoded_CS"),コード値 "NOCODED",表示文字列 "標準コードなし"　を設定することができる（設定しなければならない）こととした。
<br>
* JP_MedicationRequest_eCS
<span style="color: red;">【仕様変更】</span><br>
  MedicationRequest.medicationCodeableConcept.coding で、施設固有コードを記述する場合のsystem値のuriを、"http://jpfhir.jp/fhir/clins/CodeSystem/DrugCode/医療機関10桁コード"　から、"http://jpfhir.jp/fhir/<span style="color: blue;">eCS</span>/CodeSystem/DrugCode/医療機関10桁コード" に修正（変更）。

* BundleリソースのProfileとその詳細説明、表を説明のため追加。

* Bundleリソースのサンプルを新規追加。

* Validationガイドのページを新規に追加し、Validation方法について説明。

* 誤記修正：JP_AllergyIntolerance_eCSのcategoryの多重度max=1は、もともとFHIR基底仕様においてmax=\*のためmax=\*に修正。

#### Ver0.9.7-draft  (2023-11-12)

* CodeSystem、 ValueSetの定義URL、および　解説文

  CodeSystem、 ValueSetの定義URLのうち、http://jpfhir.jp/fhir/clins　、　http://jpfhir.jp/fhir/eCS 
  で始まりURL中のすべてのハイフン(-)をアンダーバー文字（_）に変更、統一した。これまで両者が混在しており誤記につ
  ながりやすいため、JP-Coreに従いアンダーバーに統一することとした。なお、この統一はCodeSystem、 ValueSetに限
  られる。

* 感染症検査項目リストを識別するURL

  感染症検査項目リストの検査項目を示すURLを修正(clinsを挿入)。
  ”http://jpfhir.jp/fhir/<span style="color: red;">clins/</span>CodeSystem/JP_CLINS_ObsLabResult_InfectionLabo_CS”


* ５情報仕様の解説文  
  関連リソースの記述に、患者情報の説明リンクを追加。
  処方依頼情報は、５情報として送信することはないことの説明を追加。


#### Ver0.9.6-draft  (2023-11-06)

* プロファイル　JP_Observation_LabResult_eCS<br>

  - contained[specimen] 検体材料情報リソースSpecimenの埋め込みを必須でなく、任意に変更。
  - これに伴い、specimen要素の記述方法を埋め込みリソースへの参照以外に、specimen.display要素で検体材料名をそのま
    ま記述することを認めることとした。またこの場合、specimen.type要素でリソースタイプSpecimenを明示する例を表に記載した。
<br>
検体検査結果のObservationリソースインスタンスのサンプル<br>

  -  基本項目としてAlb（アルブミン）、K(カリウム)、一般項目としてeGFR（推算DGR）の記述例をObservationリソースインスタン
     スとして追加。Alb（アルブミン）は検体材料情報をSpecimen埋め込みリソースで記述し、K(カリウム)、eGFR（推算DGR）は、検体材料情報をspecimen.display要素で直接記述する例とした。
<br>
５情報送信仕様の本文 2.1.4.2 「FHIR検査項目情報」の設定パターン<br>

  - （３）一般項目JLACコード設定パターンで、code.coding[n].system から、
    ”http://medis.or.jp/CodeSystem/master-JLAC10-17digits”　を削除し、”urn:oid:1.2.392.200119.4.504”　だけを
    認めることとした。

#### Ver0.9.4および5-draft  (2023-11-04)

プロファイル　JP_Observation_LabResult_eCS<br>

  - 検査項目のスライス名を一部変更(hba1c-ngsp,尿定性、尿定性半定量、尿半定量など)
  - 臨床検査項目基本コードセットの表を差し替え、それに合わせてprofileを修正 

  - 感染症検査項目リストの表に対応してprofileにスライス定義を追加
<br>

ValueSet
  - 臨床検査項目基本コードセットの表の更新に合わせてValueSetを修正
  - 感染症検査項目リストの表を追加、これに合わせてValueSetを新規追加
<br>

臨床検査項目エクセル
  - 臨床検査項目基本コード、 感染症検査項目の表シートを差し替え。


#### Ver0.9.4-draft  (2023-11-03)

ページ：「電子カルテ情報共有サービスに医療機関から送信するFHIR仕様について」<br>
内容：「Bundleリソースの送信タイミング」の説明を追加。<br>


{% include markdown-link-references.md %}