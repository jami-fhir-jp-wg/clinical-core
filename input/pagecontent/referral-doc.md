

### 実装ガイドと仕様書

実装ガイドとは、HL7FHIR（以下、単に「FHIR」という）に準拠して記述するための仕様と、注意点や使用するコードなど、システムを実装するために必要な技術的情報をまとめたもので、FHIRリソースの構造的な情報や、仕様の元となっているFHIR R4.0.1(https://hl7.org/fhir/R4/)、JP-Core（https://jpfhir.jp/fhir/core/）からの異なっている点などを、人が理解するとともに、計算機が記述されたデータの仕様適合性を検証（バリデーション）する目的などで利用される。


#### 診療情報提供書 仕様書

  - [診療情報提供書 HL7FHIR 記述仕様(PDF版) v1.3.1](https://std.jpfhir.jp/stddoc/eReferralFHIR_v131.pdf)

#### 診療情報提供書固有のリソースのプロファイル

<table>
      <col style="width:20%"/>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Bundle-eReferral.html" title="StructureDefinition/JP-Bundle-eReferral">JP_Bundle_eReferral</a>
            </td>
            <td>
<p>診療情報提供書 Bundle</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Composition-eReferral.html" title="StructureDefinition/JP-Composition-eReferral">JP_Composition_eReferral</a>
            </td>
            <td>
<p>診療情報提供書情報　Composition</p>
</td>
</table>
<br>

#### 診療情報提供書に使用されるその他のリソースのプロファイル

<table>
<tr><th>使用箇所</th><th>プロファイル</th><th><リソース種別/th></tr>

<tr><td style="column-width:30%">患者情報エントリ</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Patient-eCS.html" title="StructureDefinition/JP-Patient-eCS">JP_Patient_eCS</a>
            </td>
            <td>
<p>eCS/CLINS Patientリソース（患者情報）</p>
</td>
</tr>

<tr><td style="column-width:30%">文書作成責任者、文書法的責任者、紹介元医師、紹介先医師を記述するエントリー。</td>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Practitioner-eCS.html" title="StructureDefinition/JP-Practitioner-eCS">JP_Practitioner_eCS</a>
            </td>
            <td>
<p>eCS/CLINS 診療情報・サマリー汎用 Practitionerリソース（医療者情報）</p>
</td>
</tr>
<tr><td style="column-width:30%">文書作成機関、文書管理責任機関、紹介先医療機関、紹介先診療科、紹介元医療機関、紹介元診療科、入院前や退院先の所在施設などを記述するエントリー</td>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Organization-eCS.html" title="StructureDefinition/JP-Organization-eCS">JP_Organization_eCS</a>
            </td>
            <td>
<p>医療機関等の組織・機関情報　Organization</p>
</td>
</tr>


<tr><td style="column-width:30%">紹介目的セクションから参照されるエントリー
（別紙様式１１の「紹介目的」）</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Encounter-eCS.html" title="StructureDefinition/JP-Encounter-eCS">JP_Encounter_eCS</a>
            </td>
            <td>
<p>eCS/CLINS Encounterリソース（受診時・入院時等のEncounter情報）</p>
</td>
</tr>

<tr><td style="column-width:30%">傷病名・主訴セクション,現病歴セクション,既往歴セクションから参照されるエントリー
（別紙様式１１の「傷病名」）</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Condition-eCS.html" title="StructureDefinition/JP-Condition-eCS">JP_Condition_eCS</a>
            </td>
            <td>
<p>eCS/CLINS Conditionリソース（傷病名情報）</p>
</td>
</tr>


<tr><td style="column-width:30%">アレルギー・不耐性反応情報エントリ</td>
<td style="column-width:30%">
               <a href="StructureDefinition-JP-AllergyIntolerance-eCS.html" title="StructureDefinition/JP-AllergyIntolerance-eCS">JP_AllergyIntolerance_eCS</a>
            </td>
            <td>
<p>eCS/CLINS AllergyIntoleranceリソース（アレルギー情報／薬剤アレルギー等）</p>
</td>
</tr>


<tr><td style="column-width:30%">身体所見、社会歴・生活習慣、検査結果を記述するエントリー</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Observation-LabResult-eCS.html" title="StructureDefinition/JP-Observation-LabResult-eCS">JP_Observation_LabResult_eCS</a>
            </td>
            <td>
<p>eCS/CLINS 診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）</p>
</td>
</tr>

<tr><td style="column-width:30%">投薬指示セクションから参照されるエントリ（別紙様式１１の「現在の処方」）</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-MedicationRequest-eCS.html" title="StructureDefinition/JP-MedicationRequest-eCS">JP_MedicationRequest_eCS</a>
            </td>
            <td>
<p>eCS/CLINS 診療情報・サマリー汎用 MedicationRequestリソース（処方オーダの１処方薬情報）</p>
</td>
</tr>


<tr><td style="column-width:30%">“臨床経過セクション"（別紙様式１１の「治療経過」）</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html" title="StructureDefinition/JP-DocumentReference">JP_DocumentReference</a>
            </td>
            <td>
<p>臨床経過ドキュメント　DocumentReferenceリソース</p>
</td>
</tr>

<tr><td style="column-width:30%">“添付文書情報、PDF情報エントリ</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html" title="StructureDefinition/JP-DocumentReference">JP_DocumentReference</a>
            </td>
            <td>
<p>添付文書情報、PDF情報　DocumentReferenceリソース</p>
</td>
</tr>

<tr><td style="column-width:30%">退院時サマリー文書エントリ</td>
</tr><tr><td style="column-width:30%">退院時サマリーの添付</td>
<td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html" title="StructureDefinition/JP-Bundle-eDischargeSummary">JP-Bundle-eDischargeSummary</a>
            </td>
            <td>
<p>退院時サマリードキュメント　Bundleリソース</p>
</td>
</tr>

   </table>
<br>



{% include markdown-link-references.md %}