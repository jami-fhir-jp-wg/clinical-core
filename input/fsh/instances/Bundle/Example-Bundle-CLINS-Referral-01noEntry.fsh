
Instance: Bundle-CLINS-ReferralNoEmtry-Example-01
InstanceOf: JP_Bundle_eReferral
Usage: #example

Description: "■ 診療情報提供書　Bundleリソース(CLINS送信用)　#02 必須のヘッダ情報以外はentry記述をせず、テキストだけを各セクションに記述した例。"

* meta.lastUpdated = "2021-11-26T10:00:00+09:00"
* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eReferral|1"
* meta.profile[+] = "http://jpfhir.jp/fhir/clins/StructureDefinition/JP_Bundle_eReferral|1"
* language = #ja


* identifier.system = $JP_BundleIdentifier
* identifier.value = "1318814790^2024^0123-Referral-203949583949"    //正しい例

* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[composition].fullUrl = "urn:uuid:830ec2d1-67a7-427e-b6fe-ad0eb29da7fb"
* entry[composition].resource = compositionReferralExample01InlineNoEntry

* entry[patient].fullUrl = "urn:uuid:0a48a4bf-0d87-4efb-aafd-d45e0842a4dd"
* entry[patient].resource = Example-JP-Patient-eCS-MAKINOInline

//* entry[referralEncounter][+].fullUrl = "urn:uuid:7cad1f19-3435-451d-9a71-a81b61f3358e"
//* entry[referralEncounter][=].resource = Example-JP-Encounter-eCS-AMB-01Inline

* entry[practitioners][+].fullUrl = "urn:uuid:3e6a0ba2-d781-4fd7-9de6-e077b690daed"
* entry[practitioners][=].resource = Example-JP-Practitioner-eCS-ReferralFrom02Inline

* entry[practitioners][+].fullUrl = "urn:uuid:f11535c2-043d-43b6-bf99-b8298ea3c946"
* entry[practitioners][=].resource = Example-JP-Practitioner-eCS-ReferralTo02Inline

* entry[organization][+].fullUrl = "urn:uuid:8a888471-9781-4fb7-b5c4-b34afcdea638"
* entry[organization][=].resource = Example-JP-Org-eCS-Inst-Referral01Inline

* entry[organization][+].fullUrl = "urn:uuid:a44951be-cdaa-4c53-9e35-6be013da5441"
* entry[organization][=].resource = Example-JP-Org-eCS-ReferralTo01Inline

//* entry[problem][+].fullUrl = "urn:uuid:6a31db8e-109d-4349-b0cf-095131c3307a"
//* entry[problem][=].resource = Example-JP-Condition-eCS-cc1-Referral01Inline

//* entry[problem][+].fullUrl = "urn:uuid:a9358f3e-c743-4998-aa89-1be54c31b432"
//* entry[problem][=].resource = Example-JP-Condition-eCS-cc2-Referral01Inline

//* entry[problem][+].fullUrl = "urn:uuid:5eab50b2-6741-467c-a2fd-a4adab1f835f"
//* entry[problem][=].resource = Example-JP-Condition-eCS-ABDPAINInline

//* entry[problem][+].fullUrl = "urn:uuid:5c650562-f4e4-40b3-87c6-e9a0376be7a8"
//* entry[problem][=].resource = Example-JP-Condition-eCS-ANGINAInline

//* entry[problem][+].fullUrl = "urn:uuid:a28198b9-6a23-4677-ba2e-5eb3e17d9792"
//* entry[problem][=].resource = Example-JP-Condition-eCS-FxInline

//* entry[allergy][+].fullUrl = "urn:uuid:711b07ae-d20b-40b0-9aa9-c7f1981409e6"
//* entry[allergy][=].resource = Example-JP-AllergyIntolerance-eCS-01Inline

//* entry[allergy][+].fullUrl = "urn:uuid:5a1aae74-f720-415a-ba15-a6c8b5d4c5a1"
//* entry[allergy][=].resource = Example-JP-AllergyIntolerance-eCS-02Inline

//* entry[allergy][+].fullUrl = "urn:uuid:0d51bf2a-4863-b36f-2ad3-cb5ea0df1023"
//* entry[allergy][=].resource = Example-JP-AllergyIntolerance-eCS-03Inline

//* entry[observation][+].fullUrl = "urn:uuid:481835ef-0891-45de-a006-087954ab6b7c"
//* entry[observation][=].resource = psExample-JP-Obs-Common-eCS-textOnly01Inline

//* entry[documentReference][+].fullUrl = "urn:uuid:a6e4fc73-a749-4583-94a7-18e4241b4c75"
//* entry[documentReference][=].resource = Example-JP-DocRef-eCS-clinical-ccourse-Referral01Inline

