
CodeSystem: HL7_v3_ActCode_CS
Id: hl7-v3-ActCode-cs
Title: "HL7 V3 ActCode"
Description: "A code specifying the particular kind of Act that the Act-instance represents within its class."

* ^url = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* ^language = #en
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.5.4"
* ^status = #active
* ^experimental = false
* ^date = "2023-05-30"
* ^publisher = "Health Level 7"
* ^contact.name = "Health Level Seven"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^content = #complete

* ^property[+].code = #subsumedBy
* ^property[=].type = #code
* ^property[+].code = #status
* ^property[=].type = #code

* #AMB "外来" "A comprehensive term for health care provided in a healthcare facility (e.g. a practitioneraTMs office, clinic setting, or hospital) on a nonresident basis. The term ambulatory usually implies that the patient has come to the location and is not assigned to a bed. Sometimes referred to as an outpatient encounter."

//* #AMB "ambulatory" "A comprehensive term for health care provided in a healthcare facility (e.g. a practitioneraTMs office, clinic setting, or hospital) on a nonresident basis. The term ambulatory usually implies that the patient has come to the location and is not assigned to a bed. Sometimes referred to as an outpatient encounter."
* #AMB ^designation.language = #ja
* #AMB ^designation.value = "外来"
* #AMB ^property[0].code = #status
* #AMB ^property[=].valueCode = #active
* #AMB ^property[+].code = #internalId
* #AMB ^property[=].valueCode = #16239
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #EMER "emergency" "A patient encounter that takes place at a dedicated healthcare service delivery location where the patient receives immediate evaluation and treatment, provided until the patient can be discharged or responsibility for the patient's care is transferred elsewhere (for example, the patient could be admitted as an inpatient or transferred to another facility.)"
* #EMER ^property[0].code = #status
* #EMER ^property[=].valueCode = #active
* #EMER ^property[+].code = #internalId
* #EMER ^property[=].valueCode = #16240
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #FLD "field" "A patient encounter that takes place both outside a dedicated service delivery location and outside a patient's residence. Example locations might include an accident site and at a supermarket."
* #FLD ^property[0].code = #status
* #FLD ^property[=].valueCode = #active
* #FLD ^property[+].code = #internalId
* #FLD ^property[=].valueCode = #16235
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode
* #HH "home health" "Healthcare encounter that takes place in the residence of the patient or a designee"
* #HH ^property[0].code = #status
* #HH ^property[=].valueCode = #active
* #HH ^property[+].code = #internalId
* #HH ^property[=].valueCode = #16237
* #HH ^property[+].code = #subsumedBy
* #HH ^property[=].valueCode = #_ActEncounterCode

* #IMP "inpatient encounter" "A patient encounter where a patient is admitted by a hospital or equivalent facility, assigned to a location where patients generally stay at least overnight and provided with room, board, and continuous nursing service."
* #IMP ^designation[+].language = #ja
* #IMP ^designation[=].value = "入院"
* #IMP ^designation[+].language = #ja
* #IMP ^designation[=].value = "入院中"
* #IMP ^property[0].code = #status
* #IMP ^property[=].valueCode = #active
* #IMP ^property[+].code = #internalId
* #IMP ^property[=].valueCode = #16847
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #OBSENC "observation encounter" "An encounter where the patient usually will start in different encounter, such as one in the emergency department (EMER) but then transition to this type of encounter because they require a significant period of treatment and monitoring to determine whether or not their condition warrants an inpatient admission or discharge. In the majority of cases the decision about admission or discharge will occur within a time period determined by local, regional or national regulation, often between 24 and 48 hours."
* #OBSENC ^property[0].code = #status
* #OBSENC ^property[=].valueCode = #active
* #OBSENC ^property[+].code = #internalId
* #OBSENC ^property[=].valueCode = #23896
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #VR "virtual" "A patient encounter where the patient and the practitioner(s) are not in the same physical location. Examples include telephone conference, email exchange, robotic surgery, and televideo conference."
* #VR ^property[0].code = #status
* #VR ^property[=].valueCode = #active
* #VR ^property[+].code = #internalId
* #VR ^property[=].valueCode = #16236
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #ACUTE "inpatient acute" "An acute inpatient encounter."
* #ACUTE ^property[0].code = #status
* #ACUTE ^property[=].valueCode = #active
* #ACUTE ^property[+].code = #internalIdl
* #ACUTE ^property[=].valueCode = #13956
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #NONAC "inpatient non-acute" "Any category of inpatient encounter except 'acute'"
* #NONAC ^property[0].code = #status
* #NONAC ^property[=].valueCode = #active
* #NONAC ^property[+].code = #internalId
* #NONAC ^property[=].valueCode = #16238
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #PRENC "pre-admission" "A patient encounter where patient is scheduled or planned to receive service delivery in the future, and the patient is given a pre-admission account number. When the patient comes back for subsequent service, the pre-admission encounter is selected and is encapsulated into the service registration, and a new account number is generated.\r\n\r\n*Usage Note:* This is intended to be used in advance of encounter types such as ambulatory, inpatient encounter, virtual, etc."
* #PRENC ^property[0].code = #status
* #PRENC ^property[=].valueCode = #active
* #PRENC ^property[+].code = #internalId
* #PRENC ^property[=].valueCode = #23573
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #SS "short stay" "An encounter where the patient is admitted to a health care facility for a predetermined length of time, usually less than 24 hours."
* #SS ^property[0].code = #status
* #SS ^property[=].valueCode = #active
* #SS ^property[+].code = #internalId
* #SS ^property[=].valueCode = #21444
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode

* #PUBLICPOL "public healthcare" "Insurance policy funded by a public health system such as a provincial or national health plan. Examples include BC MSP (British Columbia Medical Services Plan) OHIP (Ontario Health Insurance Plan), NHS (National Health Service)."
* #PUBLICPOL ^property[0].code = #status
* #PUBLICPOL ^property[=].valueCode = #active
* #PUBLICPOL ^property[+].code = #internalId
* #PUBLICPOL ^property[=].valueCode = #19718
* #AMB ^property[+].code = #subsumedBy
* #AMB ^property[=].valueCode = #_ActEncounterCode



