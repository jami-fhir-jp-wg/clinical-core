

### 実装ガイドと仕様書

実装ガイドとは、HL7FHIR（以下、単に「FHIR」という）に準拠して記述するための仕様と、注意点や使用するコードなど、システムを実装するために必要な技術的情報をまとめたもので、FHIRリソースの構造的な情報や、仕様の元となっているFHIR R4.0.1(https://hl7.org/fhir/R4/)、JP-Core（https://jpfhir.jp/fhir/core/）からの異なっている点などを、人が理解するとともに、計算機が記述されたデータの仕様適合性を検証（バリデーション）する目的などで利用される。


### 退院時サマリー

  - [退院時サマリー HL7FHIR 記述仕様(PDF版) v1.3.1](https://std.jpfhir.jp/stddoc/eDischargeSummaryFHIR_v131.pdf) 

#### 退院時サマリー固有のリソースのプロファイル


<table border="1"  style="border-collapse: collapse">
<tr><th>プロファイル名</th><th>リソース種別</th></tr>
         <tr>
            <td style="column-width:30%" border="1"  style="border-collapse: collapse">
               <a href="StructureDefinition-JP-Bundle-eDischargeSummary.html" title="StructureDefinition/JP-Bundle-eDischargeSummary">JP_Bundle_eDischargeSummary</a>
            </td>
            <td>
<p>退院時サマリー Bundle</p>
</td>
         </tr>
         <tr>
            <td border="1"  style="border-collapse: collapse; column-width:30%">
               <a href="StructureDefinition-JP-Composition-eDischargeSummary.html" title="StructureDefinition/JP-Composition-eDischargeSummary">JP_Composition_eReferral</a>
            </td>
            <td>
<p>退院時サマリー　Composition</p>
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
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Patient-eCS.html"
                title="StructureDefinition/JP-Patient-eCS">JP_Patient_eCS</a>
        </td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <p>Patientリソース（患者情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">文書作成責任者を記述するエントリー</td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Practitioner-eCS.html"
                title="StructureDefinition/JP-Practitioner-eCS">JP_Practitioner_eCS</a>
        </td>
        <td>
            <p>Practitionerリソース（医療者情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            文書作成機関、文書管理責任機関、院前や退院先の所在施設などを記述するエントリー</td>
        <td border="1" style="border-collapse: collapse;  column-width:30%">
            <a href="StructureDefinition-JP-Organization-eCS.html"
                title="StructureDefinition/JP-Organization-eCS">JP_Organization_eCS</a>
        </td>
        <td>
            <p>Organization（医療機関等の組織・機関情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">入院時診断セクション,主訴セクション,現病歴セクション,既往歴セクション、退院時診断セクションから参照されるエントリー</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Condition-eCS.html"
                title="StructureDefinition/JP-Condition-eCS">JP_Condition_eCS</a>
        </td>
        <td>
            <p>Conditionリソース（傷病名情報）</p>
        </td>
    </tr>
    <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">入院時詳細セクション、入院理由セクション、退院時詳細セクションから参照されるエントリー
            </td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Encounter-eCS.html"
                title="StructureDefinition/JP-Encounter-eCS">JP_Encounter_eCS</a>
        </td>
        <td>
            <p>Encounterリソース（入院時、退院時等のEncounter情報）</p>
        </td>
   </tr>
      <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">家族歴セクションから参照されるエントリー</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Encounter-eCS.html"
                title="StructureDefinition/JP_FamilyMemberHistory_eCS">JP_FamilyMemberHistory_eCS</a>
        </td>
        <td>
            <p>FamilyMemberHistoryリソース（家族歴情報）</p>
        </td>
    </tr>
   <tr>
        <td border="1" style="border-collapse: collapse;  column-width:30%">アレルギー・不耐性反応セクションから参照されるエントリー</td>
        <td style="column-width:30%">
            <a href="StructureDefinition-JP-AllergyIntolerance-eCS.html"
                title="StructureDefinition/JP-AllergyIntolerance-eCS">JP_AllergyIntolerance_eCS</a>
        </td>
        <td>
            <p>AllergyIntoleranceリソース（アレルギー情報／薬剤アレルギー等）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">入院時身体所見セクション、社会歴・生活習慣セクション、退院時の身体所見セクション、入院中検査結果セクションから参照されるエントリー</td>
        <td style="column-width:30%">
           <p> <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Observation-LabResult-eCS.html"
                title="StructureDefinition/JP-Observation-LabResult-eCS">JP_Observation_LabResult_eCS</a></p>
           <p> <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Observation-LabResult-eCS.html"
                title="StructureDefinition/JP_Observation_Common">JP_Observation_Common</a></p>
        </td>
        <td>
            <p>Observationリソース（検体検査結果／感染症検体検査結果）</p>
            <p>Observationリソース（身体所見、社会歴・生活習慣など）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">退院時投薬指示セクションから参照されるエントリ</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-MedicationRequest-eCS.html"
                title="StructureDefinition/JP-MedicationRequest-eCS">JP_MedicationRequest_eCS</a>
        </td>
        <td>
            <p>MedicationRequestリソース（処方オーダの１処方薬情報）</p>
        </td>
    </tr>
    <tr>
        <td style="column-width:30%">入院中経過セクションから参照されるエントリ</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html"
                title="StructureDefinition/JP-DocumentReference">JP_DocumentReference</a>
        </td>
        <td>
            <p>DocumentReferenceリソース（入院中経過ドキュメント参照情報）</p>
        </td>
    </tr>
        <tr>
        <td style="column-width:30%">入院中治療セクションから参照されるエントリ</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-Procedure.html"
                title="StructureDefinition/JP-Procedure">JP-Procedure</a>
        </td>
        <td>
            <p>Procedureリソース（入院中治療情報）</p>
        </td>
    </tr>
        <tr>
        <td style="column-width:30%">退院時方針指示セクションから参照されるエントリ</td>
        <td style="column-width:30%">
            <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP_CarePlan_eCS.html"
                title="StructureDefinition/JP_CarePlan_eCS">JP_CarePlan_eCS</a>
        </td>
        <td>
            <p>CarePlanリソース（ケア計画情報）</p>
        </td>
    </tr>
  
    <tr>
        <td style="column-width:30%">添付情報セクション、PDFセクションから参照されるエントリ/td>
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
            <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-DocumentReference.html"
                title="StructureDefinition/JP-Bundle-eDischargeSummary">JP-Bundle-eDischargeSummary</a>
        </td>
        <td>
            <p>Bundleリソース（退院時サマリードキュメント）</p>
        </td>
    </tr>
</table>
<br>


上の表のリソース以外にも必要であれば、「５情報と関連プロファイル」ページの「５情報の各リソースに埋め込まれるリソースのプロファイル」「２文書に含めることのできるその他のリソースのプロファイル」は適宜使用できる。


{% include markdown-link-references.md %}