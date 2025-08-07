

### 履歴の記載方針
    掲載にあたっては、内容の変更に関わらない修正（リンク切れの修正、表示体裁、表現修正、レイアウト変更、小さな説明追加、
    少数の事例追加など）の履歴は含まない。また、より正確なValidationを可能とするためのProfile記述方法の変更履歴も含まない。
    
    トップページの日付が更新されているのにバージョン番号の変更がない場合には、上記のような内容の変更に関わらない修正があったことを示す。

### ２文書５情報＋患者サマリー（CLINS）  Ver. Ver.1.11.0-yyyymmdd（v1.12公開準備版）
  - JP_Patient_eCS name.family 1.. を 0.. に変更（姓はなくても容認される：主に外国人名対策）



### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.11.0  (2025.7.14)　
  - Ver. 1.10.0-20250522  (2025.5.22)　正誤反映版 2025.7.14　を1.11.0としてリリース
  - Validationの説明で使用するjpfhir-terminology.r4　パッケージのバージョンを特定のバージョンに依存しない記載に更新した。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.10.0-20250522  (2025.5.22)　正誤反映版 2025.6.3追記
  - 施設番号10桁チェックの制約ルールで10桁以上でもエラーにならない場合があるのを修正（2025.6.3）
  - 患者情報プロファイル　JP_Patient_eCSで、生活保護受給者識別子を記述可能とし、その識別子の形式に関するチェックを追加。
  - 診療情報提供書のデータ作例（以下の２件：Composition.sectionにentryが無く、text要素にだけ内容を記述する例）において、仕様書に従い section[compositionSection].emptyReason　および　section[compositionSection].section[xxx].emptyReason にunavailableを記述するよう修正。（ただしValidationではemptyReasonが無くてもエラーにならない）
    - Bundle-CLINS-Referral-NoEntry-Example-01
    - Bundle-CLINS-Referral-NoEntry-Example-01-RefTex
  - 検体検査結果プロファイル（JP_Observation_LabResult_eCS）のcode.coding.versionは、6.1の表で推奨要素となっているため、MustSpportを設定する修正。
  - JP_Composition_eDischargeSummary のsubject要素（患者へのリファレンス）はPatientではなくJP_Patient_eCSへの参照とするよう制約を追加。
  - 実装ガイド(6.1の表)とプロファイルとで異なるため、プロファイルまたは実装ガイドを修正。
  - 実装ガイド(6.1の表)とプロファイルとで多重度、説明または設定値の記載が異なるため、プロファイルまたは実装ガイドを修正。
    - 患者サマリーの「JP_Composition_ePCS：Composition.title」 実装ガイドを修正（固定値として"患者サマリー（療養計画書）"に修正）
    - 患者サマリーの「JP_Composition_ePCS：Composition.meta」　プロファイルを修正
    - 修正のあったプロファイル
      - JP_Bundle_CLINS
      - JP_Bundle_eDisSummary
      - JP_Bundle_ePatientCareSummary
      - JP_Bundle_eReferral
        - meta 1..1 を明記
      - JP_Composition_eDisSummary
        - meta 1..1 を明記
        - author 2.2 を明記
      - JP_Composition_ePatientCareSummary
        - meta 1..1 を明記
        - type.coding.system、type.coding.code、の多重度1..1を明記
        - section の多重度 1..1を明記
        - section.code.coding.displayの多重度0..1を明記
        - section.author 多重度0..0として使用しないことを明記
        - section.focus . 多重度0..0として使用しないことを明記
        - section.text  多重度0..0として使用しないことを明記
        - section.emptyReason　  多重度0..0として使用しないことを明記
      - JP_Composition_eReferral
        - meta 1..1 を明記
        - type.coding.system 多重度1..1を明記
        - type.coding.code 多重度1..1を明記
        - author 多重度2..3を明記
      - JP_CarePlan_eCS
        - meta 1..1 を明記
        - meta.profile 1..* を明記
      - JP_Coverage_eCS_insurance
      - JP_Coverage_eCS_publicPayment
      - JP_FamilyMemberHistory_eCS
      - JP_Organization_eCS_coveragePayer
      - JP_Organization_eCS_department
      - JP_Practitioner_eCS_author
      - JP_PractitionerRole_eCS_author
        - meta 1..1 を明記
        - meta.lastUpdated 1..1を明記
        - meta.profile 1..* を明記
      - JP_AllergyIntolerance_eCS
        - contained[encounter]に許容されるProfileとしてJP_Encounter_eCSを追加
        - extension[eCS_InstitutionNumber]の子要素の多重度を明記(1..1）
        - extension[eCS_InstitutionNumber].valueIdentifier.valueの定義説明を追加
        - encounterに許容されるProfileとしてJP_Encounter_eCSを追加
        - reaction.manifestation.text の多重度を0..1から1..1に修正
      - JP_Condition_eCS
        - contained[encounter]に許容されるProfileとしてJP_Encounter_eCSを追加
        - extension[eCS_InstitutionNumber]の子要素の多重度を明記(1..1）
        - extension[eCS_Department].valueCodeableConceptの子要素の多重度を明記
        - verificationStatus.coding 多重度を0..1から1..1に修正
        - encounterに許容されるProfileとしてJP_Encounter_eCSを追加
      - JP_Encounter_eCS
        - meta 1..1 を明記
        - meta.lastUpdated 1..1を明記
        - meta.profile 1..* を明記
        - classHistory 0..1を0.**に修正
        - period 定義の説明を追加
        - length.value 定義の説明を追加
        - reasonCode 子要素の多重度を明記f
        - reasonCode.coding.display 多重度を0..1から1..1に修正
      - JP_MedicationDosage_eCS
        - extension[usageDuration].valueDuration とその子要素の多重度を明記
        - timing.repeat.boundsDurationの子要素の多重度を明記
        - site、route、methodの子要素の多重度を明記
        - doseAndRate.type.codingの多重度を1..*から1..1に修正
      - JP_MedicationRequest_eCS
        - contained[encounter]に許容されるProfileとしてJP_Encounter_eCSを追加
        - extension[eCS_InstitutionNumber].valueIdentifier.valueの子要素の多重度を明記
        - extension[eCS_Department].valueCodeableConceptの子要素の多重度を明記
        - identifier 多重度を2..*から3..* に修正
        - identifier[requestIdentifier] 多重度1..1を明記
        - category 多重度0..*を明記
        - category.coding　多重度1..*を明記
        - category.coding　子要素の多重度を明記
        - medication[x].coding[codingKYS] から規格別薬剤成分コードを削除
        - encounterに許容されるProfileとしてJP_Encounter_eCSを追加
        - note の多重度を0..1から0..*に修正
        - dispenseRequest.quantity.unit　の多重度を1..1に修正
        - dispenseRequest.quantity.unitの子要素の多重度を明記
        - dispenseRequest.expectedSupplyDuration の多重度を0..1と明記
        - dispenseRequest.expectedSupplyDurationの子要素の多重度を明記
        - substitution の多重度を0..1と明記
        - substitution.allowedCodeableConcept の多重度を1..1と明記
        - substitution.allowedCodeableConcept の子要素の多重度を明記
      - JP_Observation_LabResult_eCS
        - contained[encounter]に許容されるProfileとしてJP_Encounter_eCSを追加
        - extension[eCS_InstitutionNumber]の子要素の多重度を明記(1..1）
        - extension[eCS_InstitutionNumber].valueIdentifier.valueの定義説明を追加
        - encounterに許容されるProfileとしてJP_Encounter_eCSを追加
        - extension[eCS_Department].valueCodeableConceptの子要素の多重度を明記
        - code.codingの子要素の多重度を明記
        - 感染症コードに関する項目名やHIV-1+2抗体・p24抗原に関する定義を削除（JLACコード表修正予定を反映）
        - encounterに許容されるProfileとしてJP_Encounter_eCSを追加
        - valueQuantity.value　多重度1.1を明記
        - valueCodeableConcept 多重度0..1を明記
        - valueCodeableConcept.coding　多重度1.1を明記
        - valueCodeableConcept.codingの子要素の多重度を明記
        - referenceRange 多重度を0..*と明記
        - referenceRange.low  同.highに関する個々の説明を追加
        - component.referenceRange 多重度0..1を明記
      - JP_Organization_eCS
        - meta 多重度　1..1 を明記
        - meta.lastUpdated 多重度　1..1 を明記
        - meta.profile 多重度　1..*　を明記
        - extension[prefectureNo]、extension[organizationCategory]　に説明を追加。
        - type　子要素の多重度を明記
        - telecom 多重度　0..*　と子要素の多重度を明記
      - JP_Practitioner_eCS
        - meta 多重度　1..1 を明記
        - meta.lastUpdated 多重度　1..1 を明記
        - meta.profile 多重度　1..*　を明記
      - CodeSystemとValueSet
        - HIV-1+2抗体・p24抗原関係のコードを削除
        - コントール比と陽性コントロール比とを陽性コントロール比に集約

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.10.0  (2025.1.29)
  - 検体検査結果プロファイル（JP_Observation_LabResult_eCS）の以下を修正した。
    - 説明レイアウトを変更し、プロファイルツリー表示を最後に移動した。
    - 定性検査結果のコード記述方法、結果が得られない場合の記述方法について詳述した。その場合のdataAbsentReasonの使い方とそのtext子要素が必須であることも含めて明示した。
    - status要素の取りうる値に曖昧さがあったので、明記した（ammended、entered-in-error、unknownは使用しない）。
  - 傷病名情報プロファイル（JP_Condition_eCS）の以下を修正した。
    - プロファイル表およびプロファイル説明で、clinicalStatusにrecurrence、relapse、inactiveは使用しないことを補足した。
    - clinicalStatus.coding要素、verificationStatus.coding要素においてsystem,code,displayの各子要素の多重度を仕様の表に合わせて1..1となるよう追記した。
    - verificationStatus.codeの使用方法で、refutedやentered-in-errorを使用した場合の電子カルテ情報共有サービスでの処理について補足した。
    - abatementDateTime要素（傷病のある状態の終了日）に日付を設定する場合には、clinicalStatusはactive、unknown以外（すなわちremissionまたはresolvedのいずれか）でなければならないことに修正。（例外的にactiveでもよいとしていたがそれを削除）。(仕様表での記載も同様に修正)。なお、この制約はもともとFHIR基底仕様である。
  - アレルギー情報プロファイル（JP_AllergyIntolerance_eCS）のclinicalStatus.coding要素、verificationStatus.coding要素においてsystem,code,displayの各子要素の多重度を仕様の表に合わせて1..1となるよう追記した。
  - Encounterリソースのプロファイル（JP-Encounter-eCS）で、diagnosis.use.Codingの多重度が6.1 仕様表では、1..*となっているのに対して、7.1プロファイル詳細のツリーでは1..1 となっていたので、6.1 仕様表に合わせて 1..*に修正。
  - 検体検査結果プロファイル（JP_Observation_LabResult_eCS）のcode.codingの全スライスに適用されるall slicesで表示されていたcode.coding.system、code.coding.code、code.coding.displayの多重度（1..1）を、各スライスのところに表示されるように表示を移動した。これにともない、all slicesでのこれらの表示が0..0になってしまう（実装ガイド生成過程の問題と思われる）ため、これが表示上の問題であって多重度は仕様通り1..1のままであることを記載追加した。
  - 処方情報リソース　MedicationRequestの　6.1の表「MedicationRequest」および　7.1詳細プロファイルにおいて、note要素の多重度を0..1から0..*（規定仕様およびJP-Coreの仕様）に戻した。
  - 患者情報プロファイル　JP_Patient_eCSで、生活保護受給者識別子の制約チェックに関する修正を追加した。
  - アレルギー情報プロファイルのcritilcalityの説明に、電子カルテ情報共有サービスでは「重症度（criticality）」と記載している旨の記載を追加した。
  - JP_Bundle_ePCSの6.1表のhospitalization.dischargeDispositionのsystem固定値はhttp://jpfhir.jp/fhir/eCS/CodeSystem/discharge-dispositionではなくhttp://jpfhir.jp/fhir/Common/CodeSystem/discharge-dispositionに修正（7.1 ツリーに合わせた）。
  
### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.9.0  (2025.1.11) 
  - 退院時サマリーセクション区分ValueSet(JP_valueSet_eDischargeSummary_document_section) の退院時サマリー特有のセクションコードの抽出条件が診療情報提供書のもの同一となっていたのを修正。
  - Observationの6.1 表　基準値範囲要素（referenceRange)のunit、system、code の各子要素の多重度を1..1から0..1について変更（単位がない検査結果値への対応を考慮）、単位情報を記述する場合には検査結果値の単位情報と同一にすることを明記。
  - 検体検査結果プロファイル（JP_Observation_LabResult_eCS）の基準値範囲要素（referenceRange、component.referenceRange）のvalue子要素の多重度を仕様に合わせて1..1として明記、unit、system、code について、これらを記述する場合の説明、制約に関する説明を追加。
  - 検体検査結果プロファイル（JP_Observation_LabResult_eCS）で、基準値の単位情報と検査結果の単位情報が同じであることを制約チェックするようにした。
  - Bundle CLINS に含まれるObservetionでは、検査項目のローカルコードの記述が必須であることを、Bundle CLINSで制約チェックするようにした。また、検体検査結果プロファイル（JP_Observation_LabResult_eCS）で同様の注意喚起を表示するようにした。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.8.0  (2025.1.5) 仕様変更なしのためバージョン番号は変更せず。
  - Composition.identifier の例示をハット区切りとすべきところ、ハイフン区切りになっていたので仕様どおりハット区切りに修正（profile詳細、データ作例）

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.8.0  (2024.12.25)
  - MedicationRequestの4.1 必須要素
    - identifier : リソース一意識別ID　に、剤グループ（Rp）番号、剤グループ内連番　を追加（プロファイルと仕様表には変更なく、本記載の漏れだけ修正）
  - MedicationRequestの6.1 表「MedicationRequest」identidier[+].system 剤グループ内連番のsystem値が旧OID表記のままになっていたのを、url表記に修正。(プロファイルに変更なし)
  - Validationでリンクするjpfhir-terminology.r4　パッケージのバージョンを更新した。これにより、傷病名マスター・修飾語マスター（レセ電算用マスターおよびMEDIS ICD10対応病名マスター）が2025年1月1日リリース版に更新された。また未コード化傷病名に対応する両コードが追加掲載された。YJコードに関連するコード表は未更新。
    - jpfhir-terminology.r4-1.2.4-url.tgz → jpfhir-terminology.r4-1.3.0.tgz (上記更新が不要であればjpfhir-terminology.r4-1.2.4-urlを用いても当面は構わない)。
  - ObservationLabResultの7.1 プロファイル詳細において、下記の検査項目であることを指定するdisplay文字列（FHIR 識別文字列）を、「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」V1.2.0に合わせて修正.
    - HCV核酸増幅検査(定性)
    - HCV抗原検査(定性)
  - ObservationLabResultの7.1 プロファイル詳細で、空腹時中性脂肪 FTGに対応する定義でFHIR識別名設定値DTGをFTGに修正。
  - 7.1 6情報のProfile詳細のツリーのDescription&Constraintsの欄で、電子カルテ情報共有サービスで必須（または使用しない）場合の表示を【】書きで目立つように記載した。
  - 各種サンプル（データ作例）の内容の患者参照やEnounter記述を電子カルテ情報共有サービス送信仕様に合わせるよう一部修正した。
  - プロファイル詳細に表示体裁と見方の説明をわかりやすくするため一部変更した。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.7.1  (2024.12.20) 
  - ObservationLabResultの7.1 プロファイル詳細において、下記の検査項目であることを指定するdisplay文字列（FHIR 識別文字列）を、「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」V1.2.0に合わせて修正.
    - 血液型(ABO)
  - ObservationLabResultの7.1 プロファイル詳細で、空腹時中性脂肪 FTG、随時中性脂肪　CTGに対応する定義が漏れていたので追加。合わせて、JLAC10,JLAC11に対応するValueSetが不足したため以下の4つを追加。
    - http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_CoreLabo_ftg_VS
    - http://jpfhir.jp/fhir/clins/ValueSet/JLAC11/JP_CLINS_ObsLabResult_CoreLabo_ftg_VS
    - http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_CoreLabo_ctg_VS
    - http://jpfhir.jp/fhir/clins/ValueSet/JLAC11/JP_CLINS_ObsLabResult_CoreLabo_ctg_VS

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.7.0  (2024.12.19) バージョン番号変更せず
  - ダウンロードパッケージが格納されているフォルダを移動(ダウンロード用URLの変更)。
  - 過去バージョンのIGとダウンロードパッケージも全バージョン一覧メニューに掲載。
  - validation方法の説明文に上記に対応する内容を追加し、複数のバージョンを同時にValidationしたい場合の方法についても記載。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.7.0  (2024.12.17)
  - ValueSet: JP_CLINS_ValueSet_CoreLaboJLAC11_fbg_VS
    CodeSystemからのコードセット抽出条件が空腹時血糖（FBG）ではなく血糖（定量）(BG)となっていたのを修正。
  - ValueSet:Dダイマー（DD-定性）のJLAC10,JLAC11に対応するValueSetが不足したため追加。
    - http://jpfhir.jp/fhir/clins/ValueSet/JLAC10/JP_CLINS_ObsLabResult_CoreLabo_dd_class_VS
    - http://jpfhir.jp/fhir/clins/ValueSet/JLAC11/JP_CLINS_ObsLabResult_CoreLabo_dd_class_VS
  - CodeSystem: 定性検査結果をコードで記述するためのCodeSystemを追加。
    - JP_CLINS_CodeSystem_ResultClass_PosNegHold_CS
    - JP_CLINS_CodeSystem_ResultClass_UrineCode_CS
    - JP_CLINS_CodeSystem_ResultClass_BldABO_CS
    - JP_CLINS_CodeSystem_ResultClass_BldRh_CS
  - ObservationLabResultの7.1 プロファイル詳細において、下記の検査項目であることを指定するdisplay文字列（FHIR 識別文字列）を、「電子カルテ情報共有サービスの導入に関するシステムベンダ向け技術解説書」V1.2.0に合わせて修正。空腹時血糖、プロトロンビン時間(PT-秒)、プロトロンビン時間(PT比)、プロトロンビン時間(PT-活性)、Dダイマー、尿糖(半定量)、尿中蛋白/クレアチニン比(P/C比)、尿中アルブミン/クレアチニン比(A/C比)、血液型(Rh)、HBs抗原(定性)、HBs抗体(定性)、HCV抗体(定性)、HIV-1+2抗体・p24抗原(定性)、HIV-1+2抗体・p24抗原(定量)、HIV-1抗体(定性)、HIV-2抗体(定性)、HIV-1+2抗体(定性)
  - Ver.1.6.0(2024.12.07)の改訂履歴説明（本ページ）のcontained (JP_Encounter)、contained (JP_Practitioner)の説明を補足するため、対象となるリソースの記載を追加。
  - AllergyIntolerance、Condition、MedicationRequest、ObservationLabResultにおける　6.1の各表で、診療科情報を記述するために使用する拡張を識別するURLが、 7.1 プロファイル詳細の記載や拡張の定義URLと一致していなかったので、6.1の各表での記載を修正。（誤：http://jpfhir.jp/fhir/clins/Extension/StructureDefinition/JP_eCS_Department　→ 正: http://jpfhir.jp/fhir/eCS/Extension/StructureDefinition/JP_eCS_Department）　（clinsの部分をeCSに修正）
  - MedicationRequestの　6.1の表「MedicationRequest」で、	dispenseRequestの拡張として使用するための「頓用回数を表現する拡張」を識別するURLが、7.1 プロファイル詳細の記載や拡張の定義URLと一致していなかったので、6.1の表での記載を修正。（誤：http://jpfhir.jp/fhir/core/StructureDefinition/ExpectedRepeatCount　→ 正: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount）


### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.6.0  (2024.12.07)
  - JP_Observation_LabResult_eCS　の「7.1 プロファイル詳細」
    - hasMember要素のcommentの記述を「6.1　Obsetvation表」での記載に合わせ、その上で、「ただし、実際にこの方式で記述するか、または別々のObservationリソースで記述するかについては、記述方針が別途定められている場合にはそれに従う。」との但し書きを追記。
    - component要素を「4.2 条件により必須」の記載に合わせてMustSupportフラグを追加。definitionの記述を「6.1　Obsetvation表」での記載に合わせ、その上で、「ただし、実際にこの方式で記述するか、または別々のObservationリソースで記述するかについては、記述方針が別途定められている場合にはそれに従う。」との但し書きを追記。
  - JP_Condition_eCS　の「4.1 必須要素」
    - code の説明で「病名管理番号だけが仕様できる」の記載を「6.1　Condition表」の趣旨に合わせ、「病名管理番号を必須とする。」と記載を修正。
  - 以下のリソースのmeta.tagに電子カルテ情報共有サービスで定義されるフラグ（長期保存フラグなど)以外のシステム独自フラグを別のsystem値と組み合わせて設定することを可能にした（スライスをopenに変更）。また電子カルテ情報共有サービスで使うフラグにおいて、仕様で記載されたフラグ以外の値を設定すると制約チェック時でエラーになるようにした。
    - JP_AllergyIntolerance_eCS（LTSのみ可）
    - JP_Condition_eCS（LTS、UNINFORMED、UNDELIVEREDのいずれかのみ可）
    - JP_Observation_LaboResult_eCS（指定感染症の検査結果でのみLTSのみ可、その他の検査結果ではLTSは制約チェック時にエラーとなる）
  - contained (JP_Encounter)が電子カルテ情報サービスでは必須となっている場合（ObservationリソースおよびConditionリソース）の制約チェックで、JP_EncounterだけでなくJP_Encounter_eCSに準拠しているリソースでも許容されるよう修正した。
  - contained (JP_Practitioner)が電子カルテ情報サービスでは必須となっている場合（Observationリソース）の制約チェックで、JP_PractitionerだけでなくJP_Practitioner_eCSに準拠しているリソースでも許容されるよう修正した。
  - JP_Observation_LabResult_eCSのperformer要素が電子カルテ情報サービスでは必須となっている場合の制約チェックで、performer要素がなければerrorとなるように制約をJP_Bundle_CLINSに追加した。またどのObservationリソースにperformer要素が足りないかがわかるようにするため、performer要素がないObservationリソースでは注意喚起がValidation時に出力されるよう制約をJP_Observation_LabResult_eCSに追加した。
  - 診療情報提供書の作例データで、臨床経過セクションでの記述をtext要素ではなく、DocumentReferenceリソースのdescription要素に記述して参照する作例データを追加した（Bundle-CLINS-Referral-NoEntry-Example-01-RefText）
  - 診療情報提供書、退院時サマリーの各セクションにおいて、section.textとsection.entryによる構造情報との両方に意味のある内容があった場合の取扱いについて曖昧さがあったため、説明をcomment記載として追加した。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.5  (2024.11.18)
  - 以下のProfileにidentifier.systemとidentifier.valueの仕様準拠の制約チェックをConstraintsに追加した。
    - JP_Bundle_eReferral
    - JP_Bundle_eDischargeSummary
    - JP_Bundle_ePCS
  - JP_Bundle_CLINS に設定された制約チェックで、AllergyIntolerance、Condition、MedicationRequest、ObservationLabResultに関するプロファイル（meta.profile設定値）にバージョンが記述されている場合には常にエラーになっていたのを修正した。
  - 以下のProfileの4.3 「条件により必須」の記載で、電子カルテ情報共有サービスで必須の場合に、5情報のひとつとして送信される場合と２文書に埋め込まれて送信される場合とで必須かどうかを明確にわかるように記載を修正した。
    - JP_AllergyIntolerance_eCS
    - JP_Condition_eCS
    - JP_Observation_LaboResult_eCS

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.4  (2024.11.10)
  - JP_Composition_eDischargeSummary
    - 7.1 プロファイル詳細
      - 退院時サマリーPDF仕様書ではVer.1.2.0rc2(024.7.6)で修正されていた、退院時サマリーの以下のセクションコードの変更が、実装ガイドのプロファイルでは修正漏れ（未修正）であったため、これを修正した。(これらのセクションの診療情報提供書のセクションコードと一致)
        - 現病歴セクション　362 → 360
        - 既往歴セクション　372 → 370 
        - 家族歴セクション　552 → 550
        - 社会歴・生活習慣セクション　642 → 640 
  - eCS/CLINS:JP_MedicationRequest_eCS
    - 6.1 「MedicationRequest」表
      - category.coding 多重度の欄が空欄であったところに、1..*　を記載（仕様の変更なし、記載のみ追加）     
    - 6.2 「MedicationDosage」表
    　- 以下の要素は text だけの記述が可能で、profile では複数のコード体系でコード化できるよう 0..* としているため、これに合わせて 0..* に表の記載を修正した。
      - site.coding（ 1..1* → 0..* ）
      - route.coding (同上)
      - method.coding (同上)

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.3  (2024.10.27) 
  - 以下をバージョン、日付を変えずに修正。
    - JLAC11コードを修正。（http://jpfhir.jp/fhir/clins/CodeSystem/JLAC11/JP_CLINS_ObsLabResult_CoreLabo_CS）。CodeSystem.date要素に2024-11-01を設定することで識別できるようにした。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.3 (2024.10.27) 

    - パッケージ内のすべてのプロファイル
      - version要素を1から1.5.3に設定。今後、実装ガイド(PDF版）のバージョンに一致させる。
      - meta.profileに記述するprofileに"|x.y.z"を付与することで、準拠するプロファイルのバージョンを明示する仕様とした。ただし、バージョン付与は省略可能であり、省略した場合には、そのデータが受信された時点での最新バージョンに準拠しているとみなされる仕様とした。
    - eCS/CLINS:JP_MedicationRequest_eCS
      - 4.1 必須要素から、dispenseRequestを外す（プロファイルとの整合性をとった）。
      - 4.3 条件により必須の要素から、meta.tag ("LTS") 長期保存フラグを削除。（処方では長期保存フラグを使用しないこととなったため）。
      - 4.3 条件により必須の要素から、以下の2要素を4.4 推奨要素に移動。
        -「contained (JP_Practitioner) : 処方作成者の医療者情報
        - requester : 処方者情報。
      - 6.1 「MedicationRequest」表
        - 必須要素から必須でなくなっら要素については、多重度を1..から0..に修正し、黄色背景色を削除。
        - 上記の4.1から4.3に対応して修正、及び背景色を変更。
      - 7.1 プロファイル詳細
        - medicationCodeableConcept.coding[codingGeneralName].code 多重度を0..1から1..1に修正。
    - eCS/CLINS:JP_Condition_eCS
      - 7.1 プロファイル詳細
        - 病名情報のcode.coding.system、同.code、同.displayの多重度を1..1と明示。これらにMustSupportフラグを追加設定。
        - 修飾語情報のvalueCodeableConcept.coding.system、同.code、同.displayの多重度を1..1と明示。これらにMustSupportフラグを追加設定。
    - eCS/CLINS:JP_MedicationDosage_eCS
      - 6.1 「MedicationDosage」表
        - timing の多重度を0..1から1..1 に修正（コード化できない場合でもダミーコードによるコード化を行うことになったため）　説明文もこれにあわせて修正。
        - timing.code.coding の多重度を0..* から1..* に修正（同上）説明文もこれにあわせて修正。
      - 7.1 プロファイル詳細
        - timing.code.coding.system、同.code、同.displayの多重度を1..1と明示。これらにMustSupportフラグを追加設定。
    - eCS/CLINS:JP_Patient_eCS
      - 4.1 必須要素から、extension (eCS_InstitutionNumber) を外す。
      - 4.1 必須要素から、address.city、address.stateを外す。
      - 7.1 プロファイル詳細
        - 拡張にeCS_InstitutionNumber	を記述してもよいように0..1で記述を追加。
    - eCS/CLINS:JP_AllergyIntolerance_eCS
      - 3.1 対象の記載で「また、本人の状態や条件...例）...」の記載を削除。
      - 6.1 表「AllergyIntolerance」のcategoryの説明で"biologic"の解釈を追加。
    - 電子カルテ情報共有サービス用の検査項目、感染症項目のCodeSystem、ValueSetをJLAC10、JLAC11対応に更新。
    - eCS/CLINS:JP_Observation_LaboResult_eCS
      - 7.1 プロファイル詳細
        - JLAC10,JLAC11のコード表が整備されたことに伴い、code:slice nameを整合性をとるために一部変更。
    - Validationで使用するjp-coreパッケージをjp-core.r4-1.1.2-clinsに変更（整合性をとるためJP_ServiceRequest-dummy版を削除）
    - Validationで使用するJpFhirTerminologyパッケージをjpfhir-terminology.r4-1.2.4-urlに変更（医薬品関係、アレルギー関係のTerminologyを更新）
      - 規格別薬剤成分コード　http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationCodeKYS_VS を新規追加。

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.2 (2024.9.29) 

    - 個別医薬品コード（YJコード）リスト、規格別薬剤成分コード（YJコードの末尾3桁をZZZとしたコード）のコード名称、識別子URLを改訂（決定）。
    - 上記に合わせて、Validationで使用するjp-coreパッケージ、JpFhirTerminologyパッケージをそれぞれ対応バージョンに変更（jp-core.r4-1.1.2-url (2024.9.29)、jpfhir-terminology.r4-1.2.3-url）

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.1 (2024.9.26) 

    - v1.5.0でのURL形式への変更に併せて、Validationで使用するjp-coreパッケージ、JpFhirTerminologyパッケージをそれぞれ対応バージョンに変更（jp-core.r4-1.1.2-url、jpfhir-terminology.r4-1.2.2-url）
    - 医薬品アレルギーを記述する際のコード表の記述を改訂（YJコードベースのコードを使用する場合と、YJコードの末尾3桁をZZZとしたコードを使用する場合とで、異なるCoding.systemとするよう改訂。）

### ２文書５情報＋患者サマリー（CLINS）  Ver. 1.5.0 (2024.9.24) 
  - eCS/CLINS:JP_Patient_eCS
    - name : name.text　が必須。
  
  - 全リソース
    - コード表をsystem値（coding.systemなど）をOID形式（"urn:oid:1.2.392....の形式）からほとんどを"http:"ではじまるURL形式("http://....")に変更することとなったため、それに合わせてプロファイル、表などの記載をすべて改訂。改訂一覧表は本履歴ページの末尾に掲載。この表に記載があるものはすべて本IGでの改訂漏れがあった場合にも、URL表記に変更すること。



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
|----|----|----|----|
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
|＊	|	個別医薬品コード（YJ コード）リスト	|	(urn:oid:1.2.392.100495.20.2.73)	|	http://capstandard.jp/iyaku.info/CodeSystem/YJ-code	|
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
   http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount<br>
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