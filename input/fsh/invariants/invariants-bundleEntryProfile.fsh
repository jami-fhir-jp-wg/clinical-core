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
* expression = "(meta.tag.where(system='http://jpfhir.jp/fhir/clins/CodeSystem/BundleResourceType_CS').code='{par1}'.exists().not()) or (entry.resource.where(resourceType='{par1}').meta.profile.where($this.substring(0,$this.indexOf('|')) ='{par3}').exists() or  entry.resource.where(resourceType='{par1}').meta.profile.where($this='{par3}').exists())"

RuleSet: mustHasOneMoreResources(par1,par2,par3)
* human = "Bundle.meta.tagに記述されたresourceTypeで指定されたAllergyIntolerance, Condition, Observationのリソースが１つ以上含まれていなければならない。"
* severity = #error
* expression = "entry.resource.where(resourceType='AllergyIntolerance).exists()"