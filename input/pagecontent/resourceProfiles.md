## 主要なリソースのプロファイルに関する表

### 　6情報をまとめて送信するためのBundleリソースのプロファイル

<table>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Bundle-CLINS.html" title="StructureDefinition/JP-Bundle-CLINS">JP_Bundle_CLINS</a>
            </td>
            <td>
<p>CLINS Bundleリソース（CLINS電子カルテ情報共有サービス 送信用Bundleリソース）</p>
</td>
         </tr>
</table>


### 診療情報提供書、退院時サマリー固有のリソースのプロファイル

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
         </tr>
          <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Bundle-eDischargeSummary.html" title="StructureDefinition/JP-Bundle-eDischargeSummary">JP_Bundle_eDischargeSummary</a>
            </td>
            <td>
<p>退院時サマリー Bundle</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Composition-eDischargeSummary.html" title="StructureDefinition/JP-Composition-eDischargeSummary">JP_Composition_eDischargeSummary</a>
            </td>
            <td>
<p>退院時サマリー Composition</p>
</td>
         </tr>
</table>
<br>


### 　6情報に該当するリソースと患者リソースのプロファイル


<table>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-AllergyIntolerance-eCS.html" title="StructureDefinition/JP-AllergyIntolerance-eCS">JP_AllergyIntolerance_eCS</a>
            </td>
            <td>
<p>eCS/CLINS AllergyIntoleranceリソース（アレルギー情報／薬剤アレルギー等）</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Condition-eCS.html" title="StructureDefinition/JP-Condition-eCS">JP_Condition_eCS</a>
            </td>
            <td>
<p>eCS/CLINS Conditionリソース（傷病名情報）</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-MedicationRequest-eCS.html" title="StructureDefinition/JP-MedicationRequest-eCS">JP_MedicationRequest_eCS</a>
            </td>
            <td>
<p>eCS/CLINS 診療情報・サマリー汎用 MedicationRequestリソース（処方オーダの１処方薬情報）</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Observation-LabResult-eCS.html" title="StructureDefinition/JP-Observation-LabResult-eCS">JP_Observation_LabResult_eCS</a>
            </td>
            <td>
<p>eCS/CLINS 診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）</p>
</td>
         </tr>
<tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Patient-eCS.html" title="StructureDefinition/JP-Patient-eCS">JP_Patient_eCS</a>
            </td>
            <td>
<p>eCS/CLINS Patientリソース（患者情報）</p>
</td>
         </tr>
   </table>
<br>


### 　6情報の各リソースに埋め込まれるリソースのプロファイル


* ２文書にも含めることができる。

<table>
<tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Encounter-eCS.html" title="StructureDefinition/JP-Encounter-eCS">JP_Encounter_eCS</a>
            </td>
            <td>
<p>eCS/CLINS Encounterリソース（受診時・入院時等のEncounter情報）</p>
</td>
         </tr>
<tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/eCS/ig/StructureDefinition-JP-Practitioner-eCS.html" title="StructureDefinition/JP-Practitioner-eCS">JP_Practitioner_eCS</a>
            </td>
            <td>
<p>eCS/CLINS 診療情報・サマリー汎用 Practitionerリソース（医療者情報）</p>
</td>
         </tr>
                  <tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-ServiceRequest.html" title="StructureDefinition/JP-ServiceRequest">JP_ServiceRequest</a>
            </td>
            <td>
<p>オーダー情報　JP-ServiceRequest</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="https://jpfhir.jp/fhir/core/1.1.2/StructureDefinition-JP-Specimen.html" title="StructureDefinition/JP-Specimen">JP_Specimen</a>
            </td>
            <td>
<p>検査検体情報　JP-Specimen</p>
</td>
         </tr>
</table>
<br>


### ２文書に含めることのできるその他のリソースのプロファイル


  <table>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Coverage-eCS-insurance.html" title="StructureDefinition/JP-Coverage-eCS-insurance">JP_Coverage_eCS_insurance</a>
            </td>
            <td>
<p>保険情報　Coverage</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Coverage-eCS-publicPayment.html" title="StructureDefinition/JP-Coverage-eCS-publicPayment">JP_Coverage_eCS_publicPayment</a>
            </td>
            <td>
<p>公費負担情報　Coverage</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-DocumentReference.html" title="StructureDefinition/JP-DocumentReference">JP_DocumentReference</a>
            </td>
            <td>
<p>参照ドキュメント　DocumentReference</p>
</td>
         </tr>
                  <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Organization-eCS.html" title="StructureDefinition/JP-Organization-eCS">JP_Organization_eCS</a>
            </td>
            <td>
<p>医療機関等の組織・機関情報　Organization</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Organization-eCS-coveragePayer.html" title="StructureDefinition/JP-Organization-eCS-coveragePayer">JP_Organization_eCS_coveragePayer</a>
            </td>
            <td>
<p>保険者または公費の公費受給者　Organization</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Organization-eCS-department.html" title="StructureDefinition/JP-Organization-eCS-department">JP_Organization_eCS_department</a>
            </td>
            <td>
<p>診療科情報　Organization</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-PractitionerRole-eCS-author.html" title="StructureDefinition/JP-PractitionerRole-eCS-author">JP_PractitionerRole_eCS_author</a>
            </td>
            <td>
<p>医療者の資格情報　PractitionerRole</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-JP-Practitioner-eCSauthor.html" title="StructureDefinition/JP-Practitioner-eCSauthor">JP_Practitioner_eCS_author</a>
            </td>
            <td>
<p>医師情報　JP_Practitioner</p>
</td>
         </tr>
</table>
         
<br><br>


{% include markdown-link-references.md %}