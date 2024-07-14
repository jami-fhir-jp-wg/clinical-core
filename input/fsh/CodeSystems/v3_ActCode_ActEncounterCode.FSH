Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $sct = http://snomed.info/sct

CodeSystem: ActCode
Id: v3-ActCode
Title: "ActCode"
Description: "A code specifying the particular kind of Act that the Act-instance represents within its class.*Constraints:* The kind of Act (e.g. physical examination, serum potassium, inpatient encounter, charge financial transaction, etc.) is specified with a code from one of several, typically external, coding systems. The coding system will depend on the class of Act, such as LOINC for observations, etc.Conceptually, the Act.code must be a specialization of the Act.classCode."
* ^language = #en
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.5.4"
* ^version = "9.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2023-05-30"
* ^publisher = "Health Level Seven International"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7.org"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "hq@HL7.org"
* ^copyright = "This material derives from the HL7 Terminology THO. THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: https://terminology.hl7.org/license"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^content = #complete
* ^property[0].extension[0].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-symmetry"
* ^property[=].extension[=].valueCode = #antisymmetric
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-transitivity"
* ^property[=].extension[=].valueCode = #transitive
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-reflexivity"
* ^property[=].extension[=].valueCode = #irreflexive
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-isNavigable"
* ^property[=].extension[=].valueBoolean = true
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-relationshipKind"
* ^property[=].extension[=].valueCode = #Specializes
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-inverseName"
* ^property[=].extension[=].valueString = "Generalizes"
* ^property[=].code = #Specializes
* ^property[=].description = "The child code is a more narrow version of the concept represented by the parent code.  I.e. Every child concept is also a valid parent concept.  Used to allow determination of subsumption.  Must be transitive, irreflexive, antisymmetric."
* ^property[=].type = #Coding
* ^property[+].extension[0].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-symmetry"
* ^property[=].extension[=].valueCode = #antisymmetric
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-transitivity"
* ^property[=].extension[=].valueCode = #transitive
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-reflexivity"
* ^property[=].extension[=].valueCode = #irreflexive
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-isNavigable"
* ^property[=].extension[=].valueBoolean = true
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-relationshipKind"
* ^property[=].extension[=].valueCode = #Generalizes
* ^property[=].extension[+].url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-inverseName"
* ^property[=].extension[=].valueString = "Specializes"
* ^property[=].code = #Generalizes
* ^property[=].description = "Inverse of Specializes.  Only included as a derived relationship."
* ^property[=].type = #Coding
* ^property[+].extension.url = "http://terminology.hl7.org/StructureDefinition/ext-mif-relationship-relationshipKind"
* ^property[=].extension.valueCode = #Specializes
* ^property[=].code = #rim-ClassifiesClassCode
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/utg-concept-properties#rim-ClassifiesClassCode"
* ^property[=].description = "The child code is a classification of the particular class group identified by the 'classCode' in a RIM class as the parent code.  Used only in RIM backbone classes to link the code and classCode values."
* ^property[=].type = #Coding
* ^property[+].code = #internalId
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/utg-concept-properties#v3-internal-id"
* ^property[=].description = "The internal identifier for the concept in the HL7 Access database repository."
* ^property[=].type = #code
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "A property that indicates the status of the concept. One of active, experimental, deprecated, or retired."
* ^property[=].type = #code
* ^property[+].code = #deprecationDate
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#deprecationDate"
* ^property[=].description = "The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but their use is discouraged."
* ^property[=].type = #dateTime
* ^property[+].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "Indicates that the code is abstract - only intended to be used as a selector for other concepts"
* ^property[=].type = #boolean
* ^property[+].code = #HL7usageNotes
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/utg-concept-properties#HL7usageNotes"
* ^property[=].description = "HL7 Concept Usage Notes"
* ^property[=].type = #string
* ^property[+].code = #synonymCode
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#synonym"
* ^property[=].description = "An additional concept code that was also attributed to a concept"
* ^property[=].type = #code
* ^property[+].code = #subsumedBy
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].description = "The concept code of a parent concept"
* ^property[=].type = #code

* #_ActEncounterCode "ActEncounterCode" "Domain provides codes that qualify the ActEncounterClass (ENC)"
* #_ActEncounterCode ^property[0].code = #notSelectable
* #_ActEncounterCode ^property[=].valueBoolean = true
* #_ActEncounterCode ^property[+].code = #status
* #_ActEncounterCode ^property[=].valueCode = #active
* #_ActEncounterCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActEncounterCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActEncounterCode ^property[=].valueCoding = $v3-ActClass#ENC
* #_ActEncounterCode ^property[+].code = #internalId
* #_ActEncounterCode ^property[=].valueCode = #20869
* #_ActEncounterCode ^property[+].code = #subsumedBy
* #_ActEncounterCode ^property[=].valueCode = #_ActCareProvisionCode

* #_ActCareProvisionCode "act care provision" "**Description:**The type and scope of responsibility taken-on by the performer of the Act for a specific subject of care."
* #_ActCareProvisionCode ^property[0].code = #notSelectable
* #_ActCareProvisionCode ^property[=].valueBoolean = true
* #_ActCareProvisionCode ^property[+].code = #status
* #_ActCareProvisionCode ^property[=].valueCode = #active
* #_ActCareProvisionCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCareProvisionCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCareProvisionCode ^property[=].valueCoding = $v3-ActClass#PCPR
* #_ActCareProvisionCode ^property[+].code = #internalId
* #_ActCareProvisionCode ^property[=].valueCode = #21825


* #AMB "ambulatory" "A comprehensive term for health care provided in a healthcare facility (e.g. a practitioneraTMs office, clinic setting, or hospital) on a nonresident basis. The term ambulatory usually implies that the patient has come to the location and is not assigned to a bed. Sometimes referred to as an outpatient encounter."
* #AMB ^designation.language = #ja
* #AMB ^designation.value = "外来"
* #AMB ^property[0].code = #status
* #AMB ^property[=].valueCode = #active
* #AMB ^property[+].code = #internalId
* #AMB ^property[=].valueCode = #16239
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #EMER "emergency" "A patient encounter that takes place at a dedicated healthcare service delivery location where the patient receives immediate evaluation and treatment, provided until the patient can be discharged or responsibility for the patient's care is transferred elsewhere (for example, the patient could be admitted as an inpatient or transferred to another facility.)"
* #EMER ^designation.language = #ja
* #EMER ^designation.value = "救急"
* #EMER ^property[0].code = #status
* #EMER ^property[=].valueCode = #active
* #EMER ^property[+].code = #internalId
* #EMER ^property[=].valueCode = #16240
* #EMER ^property[+].code = #subsumedBy
* #EMER ^property[=].valueCode = #_ActEncounterCode

* #FLD "field" "A patient encounter that takes place both outside a dedicated service delivery location and outside a patient's residence. Example locations might include an accident site and at a supermarket."
* #FLD ^designation.language = #ja
* #FLD ^designation.value = "現地"
* #FLD ^property[0].code = #status
* #FLD ^property[=].valueCode = #active
* #FLD ^property[+].code = #internalId
* #FLD ^property[=].valueCode = #16235
* #FLD ^property[+].code = #subsumedBy
* #FLD ^property[=].valueCode = #_ActEncounterCode

* #HH "home health" "Healthcare encounter that takes place in the residence of the patient or a designee"
* #HH ^designation.language = #ja
* #HH ^designation.value = "在宅"
* #HH ^property[0].code = #status
* #HH ^property[=].valueCode = #active
* #HH ^property[+].code = #internalId
* #HH ^property[=].valueCode = #16237
* #HH ^property[+].code = #subsumedBy
* #HH ^property[=].valueCode = #_ActEncounterCode

* #IMP "inpatient encounter" "A patient encounter where a patient is admitted by a hospital or equivalent facility, assigned to a location where patients generally stay at least overnight and provided with room, board, and continuous nursing service."
* #IMP ^designation.language = #ja
* #IMP ^designation.value = "入院"
* #IMP ^property[0].code = #status
* #IMP ^property[=].valueCode = #active
* #IMP ^property[+].code = #internalId
* #IMP ^property[=].valueCode = #16847
* #IMP ^property[+].code = #subsumedBy
* #IMP ^property[=].valueCode = #_ActEncounterCode

* #OBSENC "observation encounter" "An encounter where the patient usually will start in different encounter, such as one in the emergency department (EMER) but then transition to this type of encounter because they require a significant period of treatment and monitoring to determine whether or not their condition warrants an inpatient admission or discharge. In the majority of cases the decision about admission or discharge will occur within a time period determined by local, regional or national regulation, often between 24 and 48 hours."
* #OBSENC ^designation.language = #ja
* #OBSENC ^designation.value = "検査受診"
* #OBSENC ^property[0].code = #status
* #OBSENC ^property[=].valueCode = #active
* #OBSENC ^property[+].code = #internalId
* #OBSENC ^property[=].valueCode = #23896
* #OBSENC ^property[+].code = #subsumedBy
* #OBSENC ^property[=].valueCode = #_ActEncounterCode

* #PRENC "pre-admission" "A patient encounter where patient is scheduled or planned to receive service delivery in the future, and the patient is given a pre-admission account number. When the patient comes back for subsequent service, the pre-admission encounter is selected and is encapsulated into the service registration, and a new account number is generated.\r\n\r\n*Usage Note:* This is intended to be used in advance of encounter types such as ambulatory, inpatient encounter, virtual, etc."
* #PRENC ^designation.language = #ja
* #PRENC ^designation.value = "入院前受診"
* #PRENC ^property[0].code = #status
* #PRENC ^property[=].valueCode = #active
* #PRENC ^property[+].code = #internalId
* #PRENC ^property[=].valueCode = #23573
* #PRENC ^property[+].code = #subsumedBy
* #PRENC ^property[=].valueCode = #_ActEncounterCode

* #SS "short stay" "An encounter where the patient is admitted to a health care facility for a predetermined length of time, usually less than 24 hours."
* #SS ^designation.language = #ja
* #SS ^designation.value = "ショートステイ"
* #SS ^property[0].code = #status
* #SS ^property[=].valueCode = #active
* #SS ^property[+].code = #internalId
* #SS ^property[=].valueCode = #21444
* #SS ^property[+].code = #subsumedBy
* #SS ^property[=].valueCode = #_ActEncounterCode

* #VR "virtual" "A patient encounter where the patient and the practitioner(s) are not in the same physical location. Examples include telephone conference, email exchange, robotic surgery, and televideo conference."
* #SS ^designation.language = #ja
* #SS ^designation.value = "遠隔受診"
* #VR ^property[0].code = #status
* #VR ^property[=].valueCode = #active
* #VR ^property[+].code = #internalId
* #VR ^property[=].valueCode = #16236
* #VR ^property[+].code = #subsumedBy
* #VR ^property[=].valueCode = #_ActEncounterCode