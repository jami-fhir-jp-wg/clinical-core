

## Ver0.9.3 2023-10-25以降の履歴について掲載している。
    掲載にあたっては、内容の変更に関わらない修正（リンク切れの修正、表示体裁、表現修正、レイアウト変更、小さな説明追加、
    少数の事例追加など）の履歴は含まない。また、より正確なValidationを可能とするためのProfile記述方法の変更履歴も含まない。
    
    トップページの日付が更新されているのにバージョン番号の変更がない場合には、上記のような内容の変更に関わらない修正があったことを示す。


Bundleリソースの　meta.tag.system要素に"http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS"を,　meta.tag.code要素に①から④に対応して、それぞれ以下のいずれかの値を設定する。

## Ver0.9.14-draft  (2024-03-11) 

* 各リソースのidentifier要素の仕様を変更し、リソースの一意識別IDであることを明記し、その仕様の記載を各リソースの表ではなくIG本文に記載し、共通の参照仕様とした<br>

* 電子カルテ情報共有サービスでのみ必須となる要素は、IG記載において、必須要素の欄ではなく、条件付き必須要素の欄に移動した。<br>

* 患者リソースをContainedリソースとして格納することを仕様から外し、BundleリソースのPatientリソースを外部参照（identifierをロジカル参照）することを明記した。

* 別のリソースをReferenceで参照する要素の説明を、リソースの表ではなくIG本文に記載し、共通の参照仕様とした。

* 6情報送信仕様の本文：<br>
誤）Bundleリソースの　meta.tag.system要素に"http://jpfhir.jp/fhir/clins/BundleResourceType"を,　meta.tag.code要素に①から④に対応して、それぞれ以下のいずれかの値を設定する。<br>
正）Bundleリソースの　meta.tag.system要素に"http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS"を,　meta.tag.code要素に①から④に対応して、それぞれ以下のいずれかの値を設定する。

* 6情報送信仕様の本文 2.1.7.2 被保険者個人識別子の格納方法 の例示：<br>
誤）{http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID<br>
          "system": "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_member",<br>
正）{<br>
          "system": "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID",<br>

          

## Ver0.9.13-draft  (2024-02-14) 

* 病名　Conditionリソースのmeta.tagに未提供フラグ UNDELIVEREDを追加<br>

* 病名交換用コード、病名管理番号のsystem値のURLをOID系のURLに変更。<br>


## Ver0.9.12-draft  (2024-01-28) 

JP_MedicationRequest_eCSの表で以下の２箇所のURLを修正（ePrescription→core）：<br>


* dispenseRequest.extension.url	頓用回数を表現する拡張を識別するURL。<br>
   http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount<br>
<br>


* route.coding.system	投与経路コード表のsystem<br>
   http://jpfhir.jp/fhir/core/CodeSystem/route-codes<br>
<br>


## Ver0.9.11-draft  (2024-01-21) 

患者リソースに保険個人識別子を記述する際のidentifier.system値を次のように修正する。（eCS → clins、Idsysmem　→ Idsystem 誤記修正）
http://jpfhir.jp/fhir/eCS/Idsysmem/JP_Insurance_memberID <br>
↓ <br>
http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID <br>

## Ver0.9.10-draft  (2023-11-22) 

* 2.1.1.1 Bundleリソース（collectionタイプ）の使用

   Bundleの概要図による説明を追加。

* 2.1.2.2 電子カルテ情報共有サービスでの削除と更新処理

　　最終行の表現を修正()


## Ver0.9.8-draft  (2023-11-18) / Ver0.9.9-draft  (2023-11-19)

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

### Ver0.9.7-draft  (2023-11-12)

* CodeSystem、 ValueSetの定義URL、および　解説文

  CodeSystem、 ValueSetの定義URLのうち、http://jpfhir.jp/fhir/clins　、　http://jpfhir.jp/fhir/eCS 
  で始まりURL中のすべてのハイフン(-)をアンダーバー文字（_）に変更、統一した。これまで両者が混在しており誤記につ
  ながりやすいため、JP-Coreに従いアンダーバーに統一することとした。なお、この統一はCodeSystem、 ValueSetに限
  られる。

* 感染症検査項目リストを識別するURL

  感染症検査項目リストの検査項目を示すURLを修正(clinsを挿入)。
  ”http://jpfhir.jp/fhir/<span style="color: red;">clins/</span>CodeSystem/JP_CLINS_ObsLabResult_InfectionLabo_CS”


* ６情報仕様の解説文  
  関連リソースの記述に、患者情報の説明リンクを追加。
  処方依頼情報は、６情報として送信することはないことの説明を追加。


### Ver0.9.6-draft  (2023-11-06)

* プロファイル　JP_Observation_LabResult_eCS<br>

  - contained[specimen] 検体材料情報リソースSpecimenの埋め込みを必須でなく、任意に変更。
  - これに伴い、specimen要素の記述方法を埋め込みリソースへの参照以外に、specimen.display要素で検体材料名をそのま
    ま記述することを認めることとした。またこの場合、specimen.type要素でリソースタイプSpecimenを明示する例を表に記載した。
<br>
検体検査結果のObservationリソースインスタンスのサンプル<br>

  -  基本項目としてAlb（アルブミン）、K(カリウム)、一般項目としてeGFR（推算DGR）の記述例をObservationリソースインスタン
     スとして追加。Alb（アルブミン）は検体材料情報をSpecimen埋め込みリソースで記述し、K(カリウム)、eGFR（推算DGR）は、検体材料情報をspecimen.display要素で直接記述する例とした。
<br>
６情報送信仕様の本文 2.1.4.2 「FHIR検査項目情報」の設定パターン<br>

  - （３）一般項目JLACコード設定パターンで、code.coding[n].system から、
    ”http://medis.or.jp/CodeSystem/master-JLAC10-17digits”　を削除し、”urn:oid:1.2.392.200119.4.504”　だけを
    認めることとした。

### Ver0.9.4および5-draft  (2023-11-04)

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


### Ver0.9.4-draft  (2023-11-03)

ページ：「電子カルテ情報共有サービスに医療機関から送信するFHIR仕様について」<br>
内容：「Bundleリソースの送信タイミング」の説明を追加。<br>