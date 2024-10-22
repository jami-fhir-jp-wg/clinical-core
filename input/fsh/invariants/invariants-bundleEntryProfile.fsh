Invariant: validEntryProfile-AllergyIntolerance
* insert validEntryProfile(AllergyIntolerance,JP_AllergyIntolerance_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS)

Invariant: validEntryProfile-Condition
* insert validEntryProfile(Condition,JP_Condition_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS)

Invariant: validEntryProfile-MedicationRequest
* insert validEntryProfile(MedicationRequest,JP_MedicationRequest_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS)

Invariant: validEntryProfile-ObservationLabResult
* insert validEntryProfile(Observation,JP_Observation_LabResult_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS)


RuleSet: validEntryProfile(par1,par2,par3)
* human = "Bundle-entry-{par1}: Bundleのentryとして含まれる{par1}は、プロファイル{par2}のいずれかのバージョンに準拠していなければならない。"
* severity = #error 
* expression = "(entry.resource.ofType({par1}).exists().not()) or ((entry.resource.ofType({par1}).meta.profile.where($this.indexOf('|')>0 and ($this.indexOf('|')>0 implies ($this.substring(0,$this.indexOf('|'))='{par3}'))).exists()).not()) or ((entry.resource.ofType({par1}).meta.profile.where($this!='{par3}').exists()).not())"

Invariant: mustHaveOneMoreResources-with-designatedResourceType
* human = "R02143:Bundle.meta.tagに記述されたresourceTypeで指定されたAllergyIntolerance, Condition, Observationのリソースが１つ以上含まれていなければならない。"
* severity = #error
* expression = "(entry.resource.ofType(Observation).exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Observation') or (entry.resource.ofType(Condition).exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Condition') or (entry.resource.ofType(AllergyIntolerance).exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='AllergyIntolerance')"

RuleSet: requireElementWhenCLINS(resouceType,element)
* human = "{resouceType} has to have an element {element}: Bundleのentryとして含まれる{resouceType}リソースは、電子カルテ情報共有サービスでは{element}要素が必須である。"
* severity = #error 
* expression = "(entry.resource.ofType({resouceType}).exists().not()) or ((entry.resource.ofType({resouceType}).{element}.exists()"

Invariant: requireElementWhenCLINS-Condition-encounter
* insert requireElementWhenCLINS(Condition,encounter)

Invariant: requireElementWhenCLINS-Observation-encounter
* insert requireElementWhenCLINS(Observation,encounter)

Invariant: requireElementWhenCLINS-Observation-performer
* insert requireElementWhenCLINS(Observation,performer)

Invariant: requireElementWhenCLINS-Condition-abatementDateTime
* insert requireElementWhenCLINS(Condition,abatementDateTime)