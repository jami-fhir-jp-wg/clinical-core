# eCS 診療情報・サマリー汎用：【傷病名情報】

## 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療情報提供書や退院時サマリーなどの2文書や、診療６情報・サマリー用に「傷病名情報」を記述するためのものである。
電子カルテ情報共有サービスに送信する情報に含まれる場合には、派生プロファイルである[CLINS電子カルテ情報共有サービス用: 【傷病名情報　JP_Condition_CLINS_eCS][JP_Condition_CLINS_eCS]　を使用すること。】


## スコープ

### 対象
電子カルテシステムで登録された病名、診断書、診療情報提供書、退院時サマリーなどの診療要約記録などに記述される診断病名、検査等のための疑い病名として記録される傷病名情報、診療録中に医師により記録されるプロブレムリストのひとつひとつなどを対象とする。

ある治療や処置後の臨床情報や患者の健康状態なども対象になる。


## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素
  - resourceType : リソースタイプ "Condition"
  - meta.lastUpdated : 最終更新日時
  - identifier : インスタンス識別ID
  - verificationStatus : 入力された臨床的状態に対する検証状況。コード化必須。疑い病名の場合には、unconfirmedを設定し、それ以外の場合には通常confirmedを設定する。
  - category : 臨床的状態に割り当てられたカテゴリー。problem-list-item （プロブレムリスト）| encounter-diagnosis （診察時点での診断名）のいずれかを設定する。電子カルテ情報共有サービスでは'encounter-diagnosis'を設定すること(display name は"Encounter Diagnosis")。
  - code : 傷病名のコードと名称。code.texはコード化の有無にかかわらず病名入力文字列を必ずそのまま設定する。コード化は必須(電子カルテ情報共有サービスでは、ICD10対応標準病名マスタの「修飾語管理番号」だけが使用できる)。
  - subject : 患者のFHIRリソースへの参照。

### 条件により必須
  - meta.profile : 電子カルテ情報共有サービスでは必須。
  - meta.tag (”LTS"): 電子カルテ情報共有サービスで長期保存フラグの設定する場合に必須。
  - meta.tag (”UNINFORMED"): 電子カルテ情報共有サービスで未告知フラグを設定する場合に必須。
  - meta.tag (”UNDELIVERED"): 電子カルテ情報共有サービスで未提供フラグを設定する場合に必須。
  - extension (eCS_InstitutionNumber) : 電子カルテ情報共有サービスでは必須。医療機関番号１０桁
  - clinicalStatus : 臨床的状態(傷病の状態)のコード化情報。コード化必須。ただし、verificationStatus要素が'entered-in-error'であれば、本要素は存在してはならない。abatementDateTime要素に日付が設定されている場合にはその時点での状態を設定し、同要素がない場合にはactiveを設定する。
  - code.externsion (JP_Condition_DiseasePrefixModifier_eCS) : 傷病名の前置修飾語
  - code.externsion (JP_Condition_DiseasePostfixModifier_eCS) : 傷病名の前置修飾語
  - onsetDatetime : 電子カルテ情報共有サービスでは、病名開始日をdateTime型で記述することが必須。
  - abatementDateTime : 電子カルテ情報共有サービスでは、病名終了日や転帰日がある場合には、dateTime型で記述することが必須。

### 推奨要素
  - contained (JP_Encounter) : 傷病名登録時の入院外来区分情報
  - contained (JP_Practitioner) : 傷病名登録者の情報
  - extension (eCS_Department) : 診療科情報
  - encounter : この情報を記録したときの受診情報（入外区分など）を記述しているEncounterリソースへの参照。
  - onsetDatetime : この傷病名情報が同定された時期。電子カルテシステムの病名開始日をdateTime型で記述するのが一般的な方法である。電子カルテ情報共有サービス以外の場合でもできる限り記述する。
  - abatementDateTime : この傷病名情報による患者状態が終了したと同定された時期。電子カルテシステムの病名終了日をdateTime型で記述するのが一般的な方法である。電子カルテ情報共有サービス以外の場合でもできる限り記述する。
  - recordedDate : この状態が最初に記録された日時。
  - recorder : この状態を記録した人の情報を記述しているJP_Practitionerリソースへの参照。

### MustSupport要素
　- 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。
　- 該当なし。


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


<script>
function details_open(onoff, idname, idCloseButton){
  var elem = document.getElementById(idname);
  elem.open = onoff;
  if (onoff == true){
    document.getElementById(idCloseButton).style.display = 'none';
  } else {
    document.getElementById(idCloseButton).style.display = 'inline';
  }
}
</script>


<h3>表 「Condition」</h3>
<button id="mrc" type="button" onclick="details_open(true,'TableDetails','mrc')">表「Condition」開く</button>
<details id="TableDetails">
<button type="button" onclick="details_open(false,'TableDetails', 'mrc')">閉じる</button>
<summary></summary>


<div id="Table_18042" class="htmlTable" align=center x:publishsource="Excel">

{% include ConditionTable.md %}

</div>


<button type="button" onclick="details_open(false,'TableDetails','mrc')">閉じる</button>
</details>

<br>

## プロファイル
{% include markdown-link-references.md %}