Invariant: validEntryProfile-AllergyIntolerance
* insert validEntryProfile(AllergyIntolerance,JP_AllergyIntolerance_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_AllergyIntolerance_eCS)

Invariant: validEntryProfile_Patient
* insert validEntryProfile(Patient,JP_Patient_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Patient_eCS)

Invariant: validEntryProfile-Condition
* insert validEntryProfile(Condition,JP_Condition_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Condition_eCS)

Invariant: validEntryProfile-MedicationRequest
* insert validEntryProfile(MedicationRequest,JP_MedicationRequest_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_MedicationRequest_eCS)

Invariant: validEntryProfile-ObservationLabResult
* insert validEntryProfile(Observation,JP_Observation_LabResult_eCS,http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS)


RuleSet: validEntryProfile(par1,par2,par3)
* human = "Bundle-entry-{par1}: Bundleのentryとして含まれる{par1}は、プロファイル{par2}のいずれかのバージョンに準拠していなければならない。"
* severity = #error
* expression = "(entry.resource.where(resourceType='{par1}').exists().not()) or ((entry.resource.where(resourceType='{par1}').meta.profile.where($this.substring(0,$this.indexOf('|'))!='{par3}').exists()).not() or (entry.resource.where(resourceType='{par1}').meta.profile.where($this!='{par3}').exists()).not())"

RuleSet: mustHaveOneMoreResources-with-designatedResourceType
* human = "R02143:Bundle.meta.tagに記述されたresourceTypeで指定されたAllergyIntolerance, Condition, Observationのリソースが１つ以上含まれていなければならない。"
* severity = #error
* expression = "(entry.resource.where(resourceType='Observation').exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Observation') or (entry.resource.where(resourceType='Condition').exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Condition') or (entry.resource.where(resourceType='AllergyIntolerance').exists() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='AllergyIntolerance')"

RuleSet: mustNotHaveOtherResources-than-designatedResourceType
* human = "R02144:Bundle.meta.tagに記述されたresourceTypeで指定されたAllergyIntolerance, Condition, Observationのリソース以外のリソースがPatientリソース以外に存在してはいけない。"
* severity = #error
* expression = "(entry.resource.where(resourceType!='Observation' and resourceType!='Patient').exists().not() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Observation') or (entry.resource.where(resourceType!='Condition' and resourceType!='Patient').exists().not() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='Condition') or (entry.resource.where(resourceType!='AllergyIntolerance' and resourceType!='Patient').exists().not() and meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='AllergyIntolerance')"