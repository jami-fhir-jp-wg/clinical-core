

### 実装ガイドと仕様書

実装ガイドとは、HL7FHIR（以下、単に「FHIR」という）に準拠して記述するための仕様と、注意点や使用するコードなど、システムを実装するために必要な技術的情報をまとめたもので、FHIRリソースの構造的な情報や、仕様の元となっているFHIR R4.0.1(https://hl7.org/fhir/R4/)、JP-Core（https://jpfhir.jp/fhir/core/）からの異なっている点などを、人が理解するとともに、計算機が記述されたデータの仕様適合性を検証（バリデーション）する目的などで利用される。

このページでは、「別紙様式11」とは、[厚生労働省の診療情報提供書様式](https://www.mhlw.go.jp/bunya/iryouhoken/iryouhoken15/dl/h24_02-07-30.pdf) を指している。

#### 診療情報提供書 仕様書

  - [診療情報提供書 HL7FHIR 記述仕様(PDF版) v1.5.0](https://std.jpfhir.jp/stddoc/eReferralFHIR_v150.pdf)

#### 診療情報提供書固有のリソースのプロファイル

<table border="1"  style="border-collapse: collapse">
<tr><th>プロファイル名</th><th>リソース種別</th></tr>
         <tr>
            <td style="column-width:30%" border="1"  style="border-collapse: collapse">
               <a href="StructureDefinition-JP-Bundle-eReferral.html" title="StructureDefinition/JP-Bundle-eReferral">JP_Bundle_eReferral</a>
            </td>
            <td>
<p>診療情報提供書 Bundle</p>
</td>
         </tr>
         <tr>
            <td border="1"  style="border-collapse: collapse; column-width:30%">
               <a href="StructureDefinition-JP-Composition-eReferral.html" title="StructureDefinition/JP-Composition-eReferral">JP_Composition_eReferral</a>
            </td>
            <td>
<p>診療情報提供書情報　Composition</p>
</td>
</tr>
</table>
<br>

#### 診療情報提供書に使用されるその他の主なリソースのプロファイル

<table border="1" style="border-collapse: collapse">
    <tr>
        <th>Bundleリソースでの使用箇所</th>
        <th>プロファイル名</th>
        <th>リソース種別</th>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">患者情報エントリ</td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <a href="StructureDefinition-JP-Patient-eCS.html"
                title="StructureDefinition/JP-Patient-eCS">JP_Patient_eCS</a>
        </td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <p>Patientリソース（患者情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">文書作成責任者、紹介元医師、紹介先医師を記述するエントリー</td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <a href="StructureDefinition-JP-Practitioner-eCS.html"
                title="StructureDefinition/JP-Practitioner-eCS">JP_Practitioner_eCS</a>
        </td>
        <td>
            <p>Practitionerリソース（医療者情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            文書作成機関、文書管理責任機関、紹介先医療機関、紹介先診療科、紹介元医療機関、紹介元診療科、入院前や退院先の所在施設などを記述するエントリー</td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <a href="StructureDefinition-JP-Organization-eCS.html"
                title="StructureDefinition/JP-Organization-eCS">JP_Organization_eCS</a>
        </td>
        <td>
            <p>Organization（医療機関等の組織・機関情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">傷病名・主訴セクションから参照されるエントリー
            （別紙様式１１の「傷病名」の欄に対応）</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-Condition-eCS.html"
                title="StructureDefinition/JP-Condition-eCS">JP_Condition_eCS</a>
        </td>
        <td>
            <p>Conditionリソース（傷病名情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">紹介目的セクションから参照されるエントリー
            （別紙様式１１の「紹介目的」の欄に対応）</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-Encounter-eCS.html"
                title="StructureDefinition/JP-Encounter-eCS">JP_Encounter_eCS</a>
        </td>
        <td>
            <p>Encounterリソース（受診時・入院時等のEncounter情報）</p>
        </td>
   </tr>
   <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">既往歴セクションから参照されるエントリー
            （別紙様式１１の「既往歴及び家族歴」の既往歴に対応）</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-Encounter-eCS.html"
                title="StructureDefinition/JP-Condition-eCS">JP_Condition_eCS</a>
        </td>
        <td>
            <p>Conditionリソース（傷病名情報）</p>
        </td>
    </tr>
      <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">家族歴セクションから参照されるエントリー
            （別紙様式１１の「既往歴及び家族歴」の家族歴に対応）</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-Encounter-eCS.html"
                title="StructureDefinition/JP_FamilyMemberHistory_eCS">JP_FamilyMemberHistory_eCS</a>
        </td>
        <td>
            <p>FamilyMemberHistoryリソース（家族歴情報）</p>
        </td>
    </tr>
   <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%" >現病歴セクションから参照されるエントリー
            （別紙様式１１の「症状経過及び検査結果」の症状経過に対応）</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-Encounter-eCS.html"
                title="StructureDefinition/JP-Condition-eCS">JP_Condition_eCS</a>
        </td>
        <td>
            <p>Conditionリソース（傷病名情報）</p>
        </td>
    </tr>
 
   <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">アレルギー・不耐性反応情報エントリ</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-AllergyIntolerance-eCS.html"
                title="StructureDefinition/JP-AllergyIntolerance-eCS">JP_AllergyIntolerance_eCS</a>
        </td>
        <td>
            <p>AllergyIntoleranceリソース（アレルギー情報／薬剤アレルギー等）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">身体所見、社会歴・生活習慣、検査結果を記述するエントリー（別紙様式１１の「症状経過及び検査結果」の検査結果に一部対応）</td>
        <td style="column-width:30%">
           <p> <a href="StructureDefinition-JP-Observation-LabResult-eCS.html"
                title="StructureDefinition/JP-Observation-LabResult-eCS">JP_Observation_LabResult_eCS</a></p>
           <p> <a href="StructureDefinition-JP-Observation-LabResult-eCS.html"
                title="StructureDefinition/JP_Observation_Common">JP_Observation_Common</a></p>
        </td>
        <td>
            <p>Observationリソース（検体検査結果／感染症検体検査結果）</p>
            <p>Observationリソース（身体所見、社会歴・生活習慣など）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">投薬指示セクションから参照されるエントリ（別紙様式１１の「現在の処方」に対応）</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-MedicationRequest-eCS.html"
                title="StructureDefinition/JP-MedicationRequest-eCS">JP_MedicationRequest_eCS</a>
        </td>
        <td>
            <p>MedicationRequestリソース（処方オーダの１処方薬情報）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">“臨床経過セクション"（別紙様式１１の「治療経過」に対応）</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html"
                title="StructureDefinition/JP-DocumentReference">JP_DocumentReference</a>
        </td>
        <td>
            <p>DocumentReferenceリソース（臨床経過ドキュメント参照情報）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">“添付文書情報、PDF情報エントリ</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html"
                title="StructureDefinition/JP-DocumentReference">JP_DocumentReference</a>
        </td>
        <td>
            <p>DocumentReferenceリソース（添付文書情報・PDF情報参照情報）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">退院時サマリーの添付</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-Bundle-eDischargeSummary.html"
                title="StructureDefinition/JP-Bundle-eDischargeSummary">JP-Bundle-eDischargeSummary</a>
        </td>
        <td>
            <p>Bundleリソース（退院時サマリードキュメント）</p>
        </td>
    </tr>
</table>
<br>


上の表のリソース以外にも必要であれば、「５情報と関連プロファイル」ページの「５情報の各リソースに埋め込まれるリソースのプロファイル」「２文書に含めることのできるその他のリソースのプロファイル」は適宜使用できる。

#### 診療情報提供書FHIRデータの作成例

1）診療情報提供書のヘッダ部分の情報だけFHIRデータによるリソース記述とし、「傷病名、紹介目的、既往歴及び家族歴、症状経過及び検査結果、治療経過、現在の処方、備考」のテキストデータはFHIRデータによるリソース記述をせず、Compositionリソースの各対応セクションにテキストデータで記述した作成例。ただし、既往歴及び家族歴や症状経過及び検査結果は、既往歴、現病歴に振り分けたテキストとなっている。<br>

   - [Bundle-CLINS-Referral-NoEntry-Example-01][Bundle-CLINS-Referral-NoEntry-Example-01]
     - 構造情報：　Composition.section セクションコード = 300 "構造情報セクション"
       - 傷病名：　Composition.section.section セクションコード = 340 "傷病名・主訴セクション"
       - 紹介目的：　Composition.section.section セクションコード = 950 "紹介目的セクション"
       - 既往歴及び家族歴：Composition.section.section セクションコード = 370 "既往歴セクション"
       - 症状経過及び検査結果：Composition.section.section セクションコード = 360 "現病歴セクション"
       - 治療経過：Composition.section.section セクションコード = 330 "臨床経過セクション"
       - 現在の処方：Composition.section.section セクションコード = 430 "投薬指示セクション"
     - 備考：Composition.section セクションコード = 220 "備考・連絡情報セクション"

2) 上記以外については、メインメニューから[FHIRデータ作例集](artifacts.html#example-example-instances)の診療情報提供書を参照のこと。


{% include markdown-link-references.md %}