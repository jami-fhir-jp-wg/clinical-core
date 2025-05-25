
<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }
  th, td {
    border: 2px solid black;
    padding: 4px;
    text-align: center;
  }
  .left {
　  text-align: left;
  }
  .top {
    vertical-align: top;
  }
  
  li {
    margin-bottom: 0.5em;
  }
</style>

### CLINSリリース版に対する開発者向け参考情報

<h3>本ページで提供されるIGおよびパッケージは、「判明している修正されるべき事項」に記載した修正事項を反映済みです。</h3><br>
本ページの情報は、開発者がテスト的に利用可能とするために掲載しています。<br>
ここに記載している情報は、公式リリース版では未修正の調査中情報、仕様ではない情報、不確定な情報を含んでいることがあります。また必ずしも将来の公式リリースに含まれない事項があるかもしれません。<br>
開発者の自己責任で利用するものとし、公式仕様ではないことに注意してください。<br>
本ページに掲載されている情報を利用した結果について、日本医療情報学会NeXEHRS研究会は一切の責任を負いません。問い合わせは clins@hl7fhir.jp あてにお願いします。<br>
<table>
  <tr>
    <th>仕様の<br>バージョン</th>
    <th>開発者向け参考情報<br>提供日付</th>
    <th>IGページへのリンク</th>
    <th>パッケージVersion</th>
  </tr>

  <tr>
    <td rowspan=2 class="top">1.10.0</td>
    <td rowspan=2 class="top">2025-02-08</td>
    <td><a href="https://jpfhir.jp/fhir/clins-dev/latest/output/">ig1.10.0-20250208dev</a></td>
    <td><a href="https://jpfhir.jp/fhir/clins-dev/jp-eCSCLINS.r4-1.10.0-20250208dev.tgz">jp-eCSCLINS.r4-1.10.0-20250208-dev.tgz</a></td>
  </tr>

  <tr>
    <td colspan="2"  style="text-align: left;">
    <ul>
    <li>v1.10.0公式版に反映されている事項</li>
    <ul><li>
  検体検査結果プロファイル（JP_Observation_LabResult_eCS）のcode.codingの全スライスに適用されるall slicesで表示されていたcode.coding.system、code.coding.code、code.coding.displayの多重度（1..1）が、各スライスのところに表示されるようになっている。これにともない、all slicesでのこれらの表示が0..0になっているが、これは実装ガイド生成過程の問題と思われる。これが表示上の問題であって多重度は仕様通り1..1のままであることが追記されている。
    </li>
    <li>
  処方情報リソース　MedicationRequestの　6.1の表「MedicationRequest」および　7.1詳細プロファイルにおいて、note要素の多重度が0..1から0..*（規定仕様およびJP-Coreの仕様）に訂正されている。
    </li>
    </ul>
    <li>判明している修正されるべき事項</li>
    <ul>
  <li>患者情報プロファイル　JP_Patient_eCSで、生活保護受給者識別子を記述可能とし、その識別子の形式に関するチェックを追加。</li>
  <li>
  診療情報提供書のデータ作例（以下の２件：Composition.sectionにentryが無く、text要素にだけ内容を記述する例）において、仕様書に従い section[compositionSection].emptyReason　および　section[compositionSection].section[xxx].emptyReason にunavailableを記述するよう修正。（ただしValidationではemptyReasonが無くてもエラーにならない）</li>
  <ul>
  <li>Bundle-CLINS-Referral-NoEntry-Example-01</li>
  <li>Bundle-CLINS-Referral-NoEntry-Example-01-RefText</li>
  </ul>
  <li>検体検査結果プロファイル（JP_Observation_LabResult_eCS）のcode.coding.versionは、6.1の表で推奨要素となっているため、MustSpportを設定する修正。 </li>

  </ul>
  </ul>
  </td>
  
  </tr>
  
</table>

