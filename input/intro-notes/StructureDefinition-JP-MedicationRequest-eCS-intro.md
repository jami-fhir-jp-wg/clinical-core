
# eCS 診療情報・サマリー汎用：【処方依頼情報】

## 背景および想定シナリオ
このプロファイルは、６情報をはじめ、診療情報提供書や退院時サマリーなどの2文書や、診療６情報・サマリー用に「処方依頼情報」を記述するためのものである。
電子カルテ情報共有サービスに送信する情報に含まれる場合には、派生プロファイルである[CLINS電子カルテ情報共有サービス用: 【処方依頼情報　JP_MedicationRequest_CLINS_eCS][JP_MedicationRequest_CLINS_eCS]　を使用すること。】

## スコープ

### 対象
電子カルテシステムで登録された病名、診断書、診療情報提供書、退院時サマリーなどの診療要約記録などに記述される、ひとつひとつの医薬品に関する処方情報を対象とする。


## プロファイル定義における必須要素と推奨要素
  - 必須要素は、その要素が必ず１個以上出現しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。
  - 推奨要素は、送信側はシステムに値が存在しているなら、値を格納した要素が必ず１個以上出現しなければならず、受信側は必ずその値を格納しなければならない要素。FHIR仕様ではMust Supportフラグを設定している。

### 必須要素　（MedicationRequestの直下の必須要素）
  - resourceType : リソースタイプ "MedicationRequest"
  - meta.lastUpdated : 最終更新日時
  - contained (JP_Patient) : JP_Patientリソースのcontainedは必須。
  - identifier[] : インスタンス識別ID
  - status : 調剤が完了しているかどうかは不明であるが、交付が完了した処方として、completedを設定することとする。
  - intent : 投薬指示の意図。"order" を固定で設定する。
  - medicationCodeableConcept : 医薬品のコードと名称。ひとつの必須の text 子要素と、複数の（可能なかぎり一組以上の） coding[] 子要素で記述する。text子要素はコード化の方法に関わらず、処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ず設定する。coding[]子要素で使用すべきコード表については詳細説明を参照のこと。
  - subject : 対象となる患者のFHIRリソースへの参照。電子カルテ情報共有サービスでは、 contained (JP_Patient)リソースへのリテラル参照を設定する。
  - authoredOn : 処方指示が最初に作成された日時。
  - dosageInstruction[] : 用法や投与量を含む処方指示。<a href="#dosageInstructionTable">表「dosageInstructionTable」</a>を参照。

### 必須要素　（MedicationRequest.DosageInstructionの直下の必須要素）
  - DosageInstruction[].extension[] : 投与開始日を明示するために使用する拡張「PeriodOfUse」
  - DosageInstruction[].text : dosageInstructionが表す処方指示の文字列表現。
  - DosageInstruction[].timing : 服用タイミング。timing.codeにコード化された用法、timing.textに用法のテキストを記述。

### 条件により必須
  - meta.profile : 電子カルテ情報共有サービスでは必須。
  - meta.tag : 電子カルテ情報共有サービスで長期保存フラグの設定する場合に必須。
  - contained (JP_Patient) :  電子カルテ情報共有サービスでは必須。
  - extension (InstitutionNumber) : 電子カルテ情報共有サービスでは必須。医療機関番号１０桁

### 推奨要素
  - extension (Department) : 診療科情報
  - category : 薬剤使用区分。OHP:外来処方、OHI:院内処方（外来）、OHO:院外処方（外来）、IHP:入院処方、DCG:退院時処方、ORD:定期処方（入院）、XTR:臨時処方(入院）
JHSP0007コードから、BDP:持参薬処方　などの区分を設定する。

### MustSupport要素
　- 必須要素、条件により必須要素、推奨要素は、自動的にMustSupport要素である。それ以外に以下の要素がMustSupport要素である。
　- dispenseRequest

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


<h3>表「MedicationRequest」</h3>
<button id="mrc" type="button" onclick="details_open(true,'TableDetails','mrc')">表「MedicationRequest」開く</button>
<details id="TableDetails">
<button type="button" onclick="details_open(false,'TableDetails', 'mrc')">閉じる</button>
<summary></summary>

<div id="Table_19097" class="htmlTable" align=center x:publishsource="Excel">

{% include MedicationRequestTable.md %}

</div>


<button type="button" onclick="details_open(false,'TableDetails','mrc')">閉じる</button>
</details>

<!-- =========================================== -->
<!-- ====                                   ==== -->
<!-- ====      表（DosageInstruction)　　　　 ==== -->
<!-- ====                                   ==== -->
<!-- =========================================== -->
<br>

<h3>表「MedicationRequest.DosageInstruction」</h3>
<button id="dic" type="button" onclick="details_open(true,'DosageInstructionDetails', 'dic')">表「MedicationRequest.DosageInstruction」を開く</button>
<details id="DosageInstructionDetails">
<button type="button" onclick="details_open(false,'DosageInstructionDetails', 'dic')">閉じる</button>
<summary></summary>

<div id="dosageInstructionTable">

<div id="dosageInstructionTable_21704" class="htmlTable" align=center x:publishsource="Excel">


{% include dosageInstructionTable.md %}

</div>



</div>


<button type="button" onclick="details_open(false,'DosageInstructionDetails','dic')">閉じる</button>

</details>

<br>


## プロファイル
{% include markdown-link-references.md %}
{% include external-link-reference.md %}