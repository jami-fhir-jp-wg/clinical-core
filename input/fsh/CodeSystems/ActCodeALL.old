Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $sct = http://snomed.info/sct

CodeSystem: ActCode
Id: v3-ActCode
Title: "ActCode"
Description: """A code specifying the particular kind of Act that the Act-instance represents within its class.

*Constraints:* The kind of Act (e.g. physical examination, serum potassium, inpatient encounter, charge financial transaction, etc.) is specified with a code from one of several, typically external, coding systems. The coding system will depend on the class of Act, such as LOINC for observations, etc.

Conceptually, the Act.code must be a specialization of the Act.classCode. This is why the structure of ActClass domain should be reflected in the superstructure of the ActCode domain and then individual codes or externally referenced vocabularies subordinated under these domains that reflect the ActClass structure.

Act.classCode and Act.code are not modifiers of each other but the Act.code concept should really imply the Act.classCode concept. For a negative example, it is not appropriate to use an Act.code "potassium" together with and Act.classCode for "laboratory observation" to somehow mean "potassium laboratory observation" and then use the same Act.code for "potassium" together with Act.classCode for "medication" to mean "substitution of potassium". This mutually modifying use of Act.code and Act.classCode is not permitted."""
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
* #_ActAccountCode "ActAccountCode" "An account represents a grouping of financial transactions that are tracked and reported together with a single balance. Examples of account codes (types) are Patient billing accounts (collection of charges), Cost centers; Cash."
* #_ActAccountCode ^property[0].code = #notSelectable
* #_ActAccountCode ^property[=].valueBoolean = true
* #_ActAccountCode ^property[+].code = #status
* #_ActAccountCode ^property[=].valueCode = #active
* #_ActAccountCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActAccountCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActAccountCode ^property[=].valueCoding = $v3-ActClass#ACCT
* #_ActAccountCode ^property[+].code = #internalId
* #_ActAccountCode ^property[=].valueCode = #20849
* #_ActAdjudicationCode "ActAdjudicationCode" "Includes coded responses that will occur as a result of the adjudication of an electronic invoice at a summary level and provides guidance on interpretation of the referenced adjudication results."
* #_ActAdjudicationCode ^property[0].code = #notSelectable
* #_ActAdjudicationCode ^property[=].valueBoolean = true
* #_ActAdjudicationCode ^property[+].code = #status
* #_ActAdjudicationCode ^property[=].valueCode = #active
* #_ActAdjudicationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActAdjudicationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActAdjudicationCode ^property[=].valueCoding = $v3-ActClass#ADJUD
* #_ActAdjudicationCode ^property[+].code = #internalId
* #_ActAdjudicationCode ^property[=].valueCode = #20850
* #_ActAdjudicationResultActionCode "ActAdjudicationResultActionCode" "Actions to be carried out by the recipient of the Adjudication Result information."
* #_ActAdjudicationResultActionCode ^property[0].code = #notSelectable
* #_ActAdjudicationResultActionCode ^property[=].valueBoolean = true
* #_ActAdjudicationResultActionCode ^property[+].code = #status
* #_ActAdjudicationResultActionCode ^property[=].valueCode = #active
* #_ActAdjudicationResultActionCode ^property[+].code = #internalId
* #_ActAdjudicationResultActionCode ^property[=].valueCode = #20853
* #_ActBillableModifierCode "ActBillableModifierCode" "**Definition:**An identifying modifier code for healthcare interventions or procedures."
* #_ActBillableModifierCode ^property[0].code = #notSelectable
* #_ActBillableModifierCode ^property[=].valueBoolean = true
* #_ActBillableModifierCode ^property[+].code = #status
* #_ActBillableModifierCode ^property[=].valueCode = #active
* #_ActBillableModifierCode ^property[+].code = #internalId
* #_ActBillableModifierCode ^property[=].valueCode = #21993
* #_ActBillingArrangementCode "ActBillingArrangementCode" "The type of provision(s) made for reimbursing for the deliver of healthcare services and/or goods provided by a Provider, over a specified period."
* #_ActBillingArrangementCode ^property[0].code = #notSelectable
* #_ActBillingArrangementCode ^property[=].valueBoolean = true
* #_ActBillingArrangementCode ^property[+].code = #status
* #_ActBillingArrangementCode ^property[=].valueCode = #active
* #_ActBillingArrangementCode ^property[+].code = #internalId
* #_ActBillingArrangementCode ^property[=].valueCode = #20857
* #_ActBoundedROICode "ActBoundedROICode" "Type of bounded ROI."
* #_ActBoundedROICode ^property[0].code = #notSelectable
* #_ActBoundedROICode ^property[=].valueBoolean = true
* #_ActBoundedROICode ^property[+].code = #status
* #_ActBoundedROICode ^property[=].valueCode = #active
* #_ActBoundedROICode ^property[+].code = #rim-ClassifiesClassCode
* #_ActBoundedROICode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActBoundedROICode ^property[=].valueCoding = $v3-ActClass#ROIBND
* #_ActBoundedROICode ^property[+].code = #internalId
* #_ActBoundedROICode ^property[=].valueCode = #20858
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
* #_ActClaimAttachmentCategoryCode "ActClaimAttachmentCategoryCode" "**Description:** Coded types of attachments included to support a healthcare claim."
* #_ActClaimAttachmentCategoryCode ^property[0].code = #notSelectable
* #_ActClaimAttachmentCategoryCode ^property[=].valueBoolean = true
* #_ActClaimAttachmentCategoryCode ^property[+].code = #status
* #_ActClaimAttachmentCategoryCode ^property[=].valueCode = #active
* #_ActClaimAttachmentCategoryCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActClaimAttachmentCategoryCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActClaimAttachmentCategoryCode ^property[=].valueCoding = $v3-ActClass#CATEGORY
* #_ActClaimAttachmentCategoryCode ^property[+].code = #internalId
* #_ActClaimAttachmentCategoryCode ^property[=].valueCode = #23004
* #_ActConsentType "ActConsentType" "**Definition:** The type of consent directive, e.g., to consent or dissent to collect, access, or use in specific ways within an EHRS or for health information exchange; or to disclose health information for purposes such as research."
* #_ActConsentType ^property[0].code = #notSelectable
* #_ActConsentType ^property[=].valueBoolean = true
* #_ActConsentType ^property[+].code = #status
* #_ActConsentType ^property[=].valueCode = #active
* #_ActConsentType ^property[+].code = #rim-ClassifiesClassCode
* #_ActConsentType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActConsentType ^property[=].valueCoding = $v3-ActClass#CONS
* #_ActConsentType ^property[+].code = #internalId
* #_ActConsentType ^property[=].valueCode = #22199
* #_ActContainerRegistrationCode "ActContainerRegistrationCode" "Constrains the ActCode to the domain of Container Registration"
* #_ActContainerRegistrationCode ^property[0].code = #notSelectable
* #_ActContainerRegistrationCode ^property[=].valueBoolean = true
* #_ActContainerRegistrationCode ^property[+].code = #status
* #_ActContainerRegistrationCode ^property[=].valueCode = #active
* #_ActContainerRegistrationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActContainerRegistrationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActContainerRegistrationCode ^property[=].valueCoding = $v3-ActClass#CONTREG
* #_ActContainerRegistrationCode ^property[+].code = #internalId
* #_ActContainerRegistrationCode ^property[=].valueCode = #20860
* #_ActControlVariable "ActControlVariable" "An observation form that determines parameters or attributes of an Act. Examples are the settings of a ventilator machine as parameters of a ventilator treatment act; the controls on dillution factors of a chemical analyzer as a parameter of a laboratory observation act; the settings of a physiologic measurement assembly (e.g., time skew) or the position of the body while measuring blood pressure.\r\n\r\nControl variables are forms of observations because just as with clinical observations, the Observation.code determines the parameter and the Observation.value assigns the value. While control variables sometimes can be observed (by noting the control settings or an actually measured feedback loop) they are not primary observations, in the sense that a control variable without a primary act is of no use (e.g., it makes no sense to record a blood pressure position without recording a blood pressure, whereas it does make sense to record a systolic blood pressure without a diastolic blood pressure)."
* #_ActControlVariable ^property[0].code = #notSelectable
* #_ActControlVariable ^property[=].valueBoolean = true
* #_ActControlVariable ^property[+].code = #status
* #_ActControlVariable ^property[=].valueCode = #active
* #_ActControlVariable ^property[+].code = #rim-ClassifiesClassCode
* #_ActControlVariable ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActControlVariable ^property[=].valueCoding = $v3-ActClass#OBS
* #_ActControlVariable ^property[+].code = #internalId
* #_ActControlVariable ^property[=].valueCode = #20861
* #_ActCoverageConfirmationCode "ActCoverageConfirmationCode" "Response to an insurance coverage eligibility query or authorization request."
* #_ActCoverageConfirmationCode ^property[0].code = #notSelectable
* #_ActCoverageConfirmationCode ^property[=].valueBoolean = true
* #_ActCoverageConfirmationCode ^property[+].code = #status
* #_ActCoverageConfirmationCode ^property[=].valueCode = #active
* #_ActCoverageConfirmationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCoverageConfirmationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCoverageConfirmationCode ^property[=].valueCoding = $v3-ActClass#COV
* #_ActCoverageConfirmationCode ^property[+].code = #internalId
* #_ActCoverageConfirmationCode ^property[=].valueCode = #20863
* #_ActCoverageLimitCode "ActCoverageLimitCode" "Criteria that are applicable to the authorized coverage."
* #_ActCoverageLimitCode ^property[0].code = #notSelectable
* #_ActCoverageLimitCode ^property[=].valueBoolean = true
* #_ActCoverageLimitCode ^property[+].code = #status
* #_ActCoverageLimitCode ^property[=].valueCode = #active
* #_ActCoverageLimitCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCoverageLimitCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCoverageLimitCode ^property[=].valueCoding = $v3-ActClass#COV
* #_ActCoverageLimitCode ^property[+].code = #internalId
* #_ActCoverageLimitCode ^property[=].valueCode = #20865
* #_ActCoverageTypeCode "ActCoverageTypeCode" "**Definition:** Set of codes indicating the type of insurance policy or program that pays for the cost of benefits provided to covered parties."
* #_ActCoverageTypeCode ^property[0].code = #notSelectable
* #_ActCoverageTypeCode ^property[=].valueBoolean = true
* #_ActCoverageTypeCode ^property[+].code = #status
* #_ActCoverageTypeCode ^property[=].valueCode = #active
* #_ActCoverageTypeCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCoverageTypeCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCoverageTypeCode ^property[=].valueCoding = $v3-ActClass#COV
* #_ActCoverageTypeCode ^property[+].code = #internalId
* #_ActCoverageTypeCode ^property[=].valueCode = #22096
* #_ActDetectedIssueManagementCode "ActDetectedIssueManagementCode" "Codes dealing with the management of Detected Issue observations"
* #_ActDetectedIssueManagementCode ^property[0].code = #notSelectable
* #_ActDetectedIssueManagementCode ^property[=].valueBoolean = true
* #_ActDetectedIssueManagementCode ^property[+].code = #status
* #_ActDetectedIssueManagementCode ^property[=].valueCode = #active
* #_ActDetectedIssueManagementCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActDetectedIssueManagementCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActDetectedIssueManagementCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_ActDetectedIssueManagementCode ^property[+].code = #internalId
* #_ActDetectedIssueManagementCode ^property[=].valueCode = #20867
* #_ActExposureCode "ActExposureCode" "Concepts that identify the type or nature of exposure interaction. Examples include \"household\", \"care giver\", \"intimate partner\", \"common space\", \"common substance\", etc. to further describe the nature of interaction."
* #_ActExposureCode ^property[0].code = #notSelectable
* #_ActExposureCode ^property[=].valueBoolean = true
* #_ActExposureCode ^property[+].code = #status
* #_ActExposureCode ^property[=].valueCode = #active
* #_ActExposureCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActExposureCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActExposureCode ^property[=].valueCoding = $v3-ActClass#EXPOS
* #_ActExposureCode ^property[+].code = #internalId
* #_ActExposureCode ^property[=].valueCode = #22353
* #_ActFinancialTransactionCode "ActFinancialTransactionCode"
* #_ActFinancialTransactionCode ^property[0].code = #notSelectable
* #_ActFinancialTransactionCode ^property[=].valueBoolean = true
* #_ActFinancialTransactionCode ^property[+].code = #status
* #_ActFinancialTransactionCode ^property[=].valueCode = #active
* #_ActFinancialTransactionCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActFinancialTransactionCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActFinancialTransactionCode ^property[=].valueCoding = $v3-ActClass#XACT
* #_ActFinancialTransactionCode ^property[+].code = #internalId
* #_ActFinancialTransactionCode ^property[=].valueCode = #20872
* #_ActIncidentCode "ActIncidentCode" "Set of codes indicating the type of incident or accident."
* #_ActIncidentCode ^property[0].code = #notSelectable
* #_ActIncidentCode ^property[=].valueBoolean = true
* #_ActIncidentCode ^property[+].code = #status
* #_ActIncidentCode ^property[=].valueCode = #active
* #_ActIncidentCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActIncidentCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActIncidentCode ^property[=].valueCoding = $v3-ActClass#INC
* #_ActIncidentCode ^property[+].code = #internalId
* #_ActIncidentCode ^property[=].valueCode = #20873
* #_ActInformationAccessCode "ActInformationAccessCode" "**Description:** The type of health information to which the subject of the information or the subject's delegate consents or dissents."
* #_ActInformationAccessCode ^property[0].code = #notSelectable
* #_ActInformationAccessCode ^property[=].valueBoolean = true
* #_ActInformationAccessCode ^property[+].code = #status
* #_ActInformationAccessCode ^property[=].valueCode = #active
* #_ActInformationAccessCode ^property[+].code = #internalId
* #_ActInformationAccessCode ^property[=].valueCode = #22244
* #_ActInformationAccessContextCode "ActInformationAccessContextCode" "Concepts conveying the context in which authorization given under jurisdictional law, by organizational policy, or by a patient consent directive permits the collection, access, use or disclosure of specified patient health information."
* #_ActInformationAccessContextCode ^property[0].code = #notSelectable
* #_ActInformationAccessContextCode ^property[=].valueBoolean = true
* #_ActInformationAccessContextCode ^property[+].code = #status
* #_ActInformationAccessContextCode ^property[=].valueCode = #active
* #_ActInformationAccessContextCode ^property[+].code = #internalId
* #_ActInformationAccessContextCode ^property[=].valueCode = #22332
* #_ActInformationCategoryCode "ActInformationCategoryCode" "**Definition:**Indicates the set of information types which may be manipulated or referenced, such as for recommending access restrictions."
* #_ActInformationCategoryCode ^property[0].code = #notSelectable
* #_ActInformationCategoryCode ^property[=].valueBoolean = true
* #_ActInformationCategoryCode ^property[+].code = #status
* #_ActInformationCategoryCode ^property[=].valueCode = #active
* #_ActInformationCategoryCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInformationCategoryCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInformationCategoryCode ^property[=].valueCoding = $v3-ActClass#DOC
* #_ActInformationCategoryCode ^property[+].code = #internalId
* #_ActInformationCategoryCode ^property[=].valueCode = #22386
* #_ActInvoiceElementCode "ActInvoiceElementCode" "Type of invoice element that is used to assist in describing an Invoice that is either submitted for adjudication or for which is returned on adjudication results."
* #_ActInvoiceElementCode ^property[0].code = #notSelectable
* #_ActInvoiceElementCode ^property[=].valueBoolean = true
* #_ActInvoiceElementCode ^property[+].code = #status
* #_ActInvoiceElementCode ^property[=].valueCode = #active
* #_ActInvoiceElementCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInvoiceElementCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInvoiceElementCode ^property[=].valueCoding = $v3-ActClass#INVE
* #_ActInvoiceElementCode ^property[+].code = #internalId
* #_ActInvoiceElementCode ^property[=].valueCode = #20888
* #_ActInvoiceElementSummaryCode "ActInvoiceElementSummaryCode" "Identifies the different types of summary information that can be reported by queries dealing with Statement of Financial Activity (SOFA). The summary information is generally used to help resolve balance discrepancies between providers and payors."
* #_ActInvoiceElementSummaryCode ^property[0].code = #notSelectable
* #_ActInvoiceElementSummaryCode ^property[=].valueBoolean = true
* #_ActInvoiceElementSummaryCode ^property[+].code = #status
* #_ActInvoiceElementSummaryCode ^property[=].valueCode = #active
* #_ActInvoiceElementSummaryCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInvoiceElementSummaryCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInvoiceElementSummaryCode ^property[=].valueCoding = $v3-ActClass#INVE
* #_ActInvoiceElementSummaryCode ^property[+].code = #internalId
* #_ActInvoiceElementSummaryCode ^property[=].valueCode = #20889
* #_ActInvoiceOverrideCode "ActInvoiceOverrideCode" "Includes coded responses that will occur as a result of the adjudication of an electronic invoice at a summary level and provides guidance on interpretation of the referenced adjudication results."
* #_ActInvoiceOverrideCode ^property[0].code = #notSelectable
* #_ActInvoiceOverrideCode ^property[=].valueBoolean = true
* #_ActInvoiceOverrideCode ^property[+].code = #status
* #_ActInvoiceOverrideCode ^property[=].valueCode = #active
* #_ActInvoiceOverrideCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInvoiceOverrideCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInvoiceOverrideCode ^property[=].valueCoding = $v3-ActClass#INVE
* #_ActInvoiceOverrideCode ^property[+].code = #internalId
* #_ActInvoiceOverrideCode ^property[=].valueCode = #20892
* #_ActListCode "ActListCode" "Provides codes associated with ActClass value of LIST (working list)"
* #_ActListCode ^property[0].code = #notSelectable
* #_ActListCode ^property[=].valueBoolean = true
* #_ActListCode ^property[+].code = #status
* #_ActListCode ^property[=].valueCode = #active
* #_ActListCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActListCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActListCode ^property[=].valueCoding = $v3-ActClass#LIST
* #_ActListCode ^property[+].code = #internalId
* #_ActListCode ^property[=].valueCode = #20895
* #_ActMonitoringProtocolCode "ActMonitoringProtocolCode" "Identifies types of monitoring programs"
* #_ActMonitoringProtocolCode ^property[0].code = #notSelectable
* #_ActMonitoringProtocolCode ^property[=].valueBoolean = true
* #_ActMonitoringProtocolCode ^property[+].code = #status
* #_ActMonitoringProtocolCode ^property[=].valueCode = #active
* #_ActMonitoringProtocolCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActMonitoringProtocolCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActMonitoringProtocolCode ^property[=].valueCoding = $v3-ActClass#MPROT
* #_ActMonitoringProtocolCode ^property[+].code = #internalId
* #_ActMonitoringProtocolCode ^property[=].valueCode = #20897
* #_ActNonObservationIndicationCode "ActNonObservationIndicationCode" "**Description:**Concepts representing indications (reasons for clinical action) other than diagnosis and symptoms."
* #_ActNonObservationIndicationCode ^property[0].code = #notSelectable
* #_ActNonObservationIndicationCode ^property[=].valueBoolean = true
* #_ActNonObservationIndicationCode ^property[+].code = #status
* #_ActNonObservationIndicationCode ^property[=].valueCode = #active
* #_ActNonObservationIndicationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActNonObservationIndicationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActNonObservationIndicationCode ^property[=].valueCoding = $v3-ActClass#ACT
* #_ActNonObservationIndicationCode ^property[+].code = #internalId
* #_ActNonObservationIndicationCode ^property[=].valueCode = #22387
* #_ActObservationVerificationType "act observation verification" "Identifies the type of verification investigation being undertaken with respect to the subject of the verification activity.\r\n\r\n**Examples:**\r\n\r\n1.  Verification of eligibility for coverage under a policy or program - aka enrolled/covered by a policy or program\r\n2.  Verification of record - e.g., person has record in an immunization registry\r\n3.  Verification of enumeration - e.g. NPI\r\n4.  Verification of Board Certification - provider specific\r\n5.  Verification of Certification - e.g. JAHCO, NCQA, URAC\r\n6.  Verification of Conformance - e.g. entity use with HIPAA, conformant to the CCHIT EHR system criteria\r\n7.  Verification of Provider Credentials\r\n8.  Verification of no adverse findings - e.g. on National Provider Data Bank, Health Integrity Protection Data Base (HIPDB)"
* #_ActObservationVerificationType ^property[0].code = #notSelectable
* #_ActObservationVerificationType ^property[=].valueBoolean = true
* #_ActObservationVerificationType ^property[+].code = #status
* #_ActObservationVerificationType ^property[=].valueCode = #active
* #_ActObservationVerificationType ^property[+].code = #rim-ClassifiesClassCode
* #_ActObservationVerificationType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActObservationVerificationType ^property[=].valueCoding = $v3-ActClass#VERIF
* #_ActObservationVerificationType ^property[+].code = #internalId
* #_ActObservationVerificationType ^property[=].valueCode = #21907
* #_ActPaymentCode "ActPaymentCode" "Code identifying the method or the movement of payment instructions.\r\n\r\nCodes are drawn from X12 data element 591 (PaymentMethodCode)"
* #_ActPaymentCode ^property[0].code = #notSelectable
* #_ActPaymentCode ^property[=].valueBoolean = true
* #_ActPaymentCode ^property[+].code = #status
* #_ActPaymentCode ^property[=].valueCode = #active
* #_ActPaymentCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActPaymentCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActPaymentCode ^property[=].valueCoding = $v3-ActClass#XACT
* #_ActPaymentCode ^property[+].code = #internalId
* #_ActPaymentCode ^property[=].valueCode = #20900
* #_ActPharmacySupplyType "ActPharmacySupplyType" "Identifies types of dispensing events"
* #_ActPharmacySupplyType ^property[0].code = #notSelectable
* #_ActPharmacySupplyType ^property[=].valueBoolean = true
* #_ActPharmacySupplyType ^property[+].code = #status
* #_ActPharmacySupplyType ^property[=].valueCode = #active
* #_ActPharmacySupplyType ^property[+].code = #rim-ClassifiesClassCode
* #_ActPharmacySupplyType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActPharmacySupplyType ^property[=].valueCoding = $v3-ActClass#SPLY
* #_ActPharmacySupplyType ^property[+].code = #internalId
* #_ActPharmacySupplyType ^property[=].valueCode = #20901
* #_ActPolicyType "ActPolicyType" "A mandate, regulation, obligation, principle, requirement, rule, or expectation of how an entity is to conduct itself or execute an activity, which may be dictated and enforced by an authority of competent jurisdiction."
* #_ActPolicyType ^property[0].code = #notSelectable
* #_ActPolicyType ^property[=].valueBoolean = true
* #_ActPolicyType ^property[+].code = #status
* #_ActPolicyType ^property[=].valueCode = #active
* #_ActPolicyType ^property[+].code = #rim-ClassifiesClassCode
* #_ActPolicyType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActPolicyType ^property[=].valueCoding = $v3-ActClass#POLICY
* #_ActPolicyType ^property[+].code = #internalId
* #_ActPolicyType ^property[=].valueCode = #22182
* #_ActProductAcquisitionCode "ActProductAcquisitionCode" "The method that a product is obtained for use by the subject of the supply act (e.g. patient). Product examples are consumable or durable goods."
* #_ActProductAcquisitionCode ^property[0].code = #notSelectable
* #_ActProductAcquisitionCode ^property[=].valueBoolean = true
* #_ActProductAcquisitionCode ^property[+].code = #status
* #_ActProductAcquisitionCode ^property[=].valueCode = #active
* #_ActProductAcquisitionCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActProductAcquisitionCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActProductAcquisitionCode ^property[=].valueCoding = $v3-ActClass#SPLY
* #_ActProductAcquisitionCode ^property[+].code = #internalId
* #_ActProductAcquisitionCode ^property[=].valueCode = #20903
* #_ActSpecimenTransportCode "ActSpecimenTransportCode" "Transportation of a specimen."
* #_ActSpecimenTransportCode ^property[0].code = #notSelectable
* #_ActSpecimenTransportCode ^property[=].valueBoolean = true
* #_ActSpecimenTransportCode ^property[+].code = #status
* #_ActSpecimenTransportCode ^property[=].valueCode = #active
* #_ActSpecimenTransportCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActSpecimenTransportCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActSpecimenTransportCode ^property[=].valueCoding = $v3-ActClass#TRNS
* #_ActSpecimenTransportCode ^property[+].code = #internalId
* #_ActSpecimenTransportCode ^property[=].valueCode = #22388
* #_ActSpecimenTreatmentCode "ActSpecimenTreatmentCode" "Set of codes related to specimen treatments"
* #_ActSpecimenTreatmentCode ^property[0].code = #notSelectable
* #_ActSpecimenTreatmentCode ^property[=].valueBoolean = true
* #_ActSpecimenTreatmentCode ^property[+].code = #status
* #_ActSpecimenTreatmentCode ^property[=].valueCode = #active
* #_ActSpecimenTreatmentCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActSpecimenTreatmentCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActSpecimenTreatmentCode ^property[=].valueCoding = $v3-ActClass#SPCTRT
* #_ActSpecimenTreatmentCode ^property[+].code = #internalId
* #_ActSpecimenTreatmentCode ^property[=].valueCode = #20905
* #_ActSubstanceAdministrationCode "ActSubstanceAdministrationCode" "**Description:** Describes the type of substance administration being performed. This should not be used to carry codes for identification of products. Use an associated role or entity to carry such information."
* #_ActSubstanceAdministrationCode ^property[0].code = #notSelectable
* #_ActSubstanceAdministrationCode ^property[=].valueBoolean = true
* #_ActSubstanceAdministrationCode ^property[+].code = #status
* #_ActSubstanceAdministrationCode ^property[=].valueCode = #active
* #_ActSubstanceAdministrationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActSubstanceAdministrationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActSubstanceAdministrationCode ^property[=].valueCoding = $v3-ActClass#SBADM
* #_ActSubstanceAdministrationCode ^property[+].code = #internalId
* #_ActSubstanceAdministrationCode ^property[=].valueCode = #21517
* #_ActTaskCode "ActTaskCode" "**Description:** A task or action that a user may perform in a clinical information system (e.g., medication order entry, laboratory test results review, problem list entry)."
* #_ActTaskCode ^property[0].code = #notSelectable
* #_ActTaskCode ^property[=].valueBoolean = true
* #_ActTaskCode ^property[+].code = #status
* #_ActTaskCode ^property[=].valueCode = #active
* #_ActTaskCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActTaskCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActTaskCode ^property[=].valueCoding = $v3-ActClass#ACT
* #_ActTaskCode ^property[+].code = #internalId
* #_ActTaskCode ^property[=].valueCode = #22047
* #_ActTransportationModeCode "ActTransportationModeCode" "Characterizes how a transportation act was or will be carried out.\r\n\r\n*Examples:* Via private transport, via public transit, via courier."
* #_ActTransportationModeCode ^property[0].code = #notSelectable
* #_ActTransportationModeCode ^property[=].valueBoolean = true
* #_ActTransportationModeCode ^property[+].code = #status
* #_ActTransportationModeCode ^property[=].valueCode = #active
* #_ActTransportationModeCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActTransportationModeCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActTransportationModeCode ^property[=].valueCoding = $v3-ActClass#TRNS
* #_ActTransportationModeCode ^property[+].code = #internalId
* #_ActTransportationModeCode ^property[=].valueCode = #21545
* #_ObservationType "ObservationType" "Identifies the kinds of observations that can be performed"
* #_ObservationType ^property[0].code = #notSelectable
* #_ObservationType ^property[=].valueBoolean = true
* #_ObservationType ^property[+].code = #status
* #_ObservationType ^property[=].valueCode = #active
* #_ObservationType ^property[+].code = #rim-ClassifiesClassCode
* #_ObservationType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ObservationType ^property[=].valueCoding = $v3-ActClass#OBS
* #_ObservationType ^property[+].code = #internalId
* #_ObservationType ^property[=].valueCode = #20930
* #_ROIOverlayShape "ROIOverlayShape" "Shape of the region on the object being referenced"
* #_ROIOverlayShape ^property[0].code = #notSelectable
* #_ROIOverlayShape ^property[=].valueBoolean = true
* #_ROIOverlayShape ^property[+].code = #status
* #_ROIOverlayShape ^property[=].valueCode = #active
* #_ROIOverlayShape ^property[+].code = #internalId
* #_ROIOverlayShape ^property[=].valueCode = #20931
* #C "corrected" "**Description:**Indicates that result data has been corrected."
* #C ^property[0].code = #status
* #C ^property[=].valueCode = #active
* #C ^property[+].code = #internalId
* #C ^property[=].valueCode = #22831
* #DIET "Diet" "Code set to define specialized/allowed diets"
* #DIET ^property[0].code = #status
* #DIET ^property[=].valueCode = #active
* #DIET ^property[+].code = #internalId
* #DIET ^property[=].valueCode = #10376
* #DRUGPRG "drug program" "**Definition:** A public or government health program that administers and funds coverage for prescription drugs to assist program eligible who meet financial and health status criteria."
* #DRUGPRG ^property[0].code = #status
* #DRUGPRG ^property[=].valueCode = #active
* #DRUGPRG ^property[+].code = #internalId
* #DRUGPRG ^property[=].valueCode = #22132
* #F "final" "**Description:**Indicates that a result is complete. No further results are to come. This maps to the 'complete' state in the observation result status code."
* #F ^property[0].code = #status
* #F ^property[=].valueCode = #active
* #F ^property[+].code = #internalId
* #F ^property[=].valueCode = #22830
* #PRLMN "preliminary" "**Description:**Indicates that a result is incomplete. There are further results to come. This maps to the 'active' state in the observation result status code."
* #PRLMN ^property[0].code = #status
* #PRLMN ^property[=].valueCode = #active
* #PRLMN ^property[+].code = #internalId
* #PRLMN ^property[=].valueCode = #22829
* #SECOBS "SecurityObservationType" "An observation identifying security metadata about an IT resource (data, information object, service, or system capability), which may be used to make access control decisions. Security metadata are used to name security labels.\r\n\r\n*Rationale:* According to ISO/TS 22600-3:2009(E) A.9.1.7 SECURITY LABEL MATCHING, Security label matching compares the initiator's clearance to the target's security label. All of the following must be true for authorization to be granted:\r\n\r\n *  The security policy identifiers shall be identical\r\n *  The classification level of the initiator shall be greater than or equal to that of the target (that is, there shall be at least one value in the classification list of the clearance greater than or equal to the classification of the target), and\r\n *  For each security category in the target label, there shall be a security category of the same type in the initiator's clearance and the initiator's classification level shall dominate that of the target.\r\n\r\n**Examples:** SecurityObservationType security label fields include:\r\n\r\n *  Confidentiality classification\r\n *  Compartment category\r\n *  Sensitivity category\r\n *  Security mechanisms used to ensure data integrity or to perform authorized data transformation\r\n *  Indicators of an IT resource completeness, veracity, reliability, trustworthiness, or provenance.\r\n\r\n*Usage Note:* SecurityObservationType codes designate security label field types, which are valued with an applicable SecurityObservationValue code as the \"security label tag\"."
* #SECOBS ^property[0].code = #notSelectable
* #SECOBS ^property[=].valueBoolean = true
* #SECOBS ^property[+].code = #status
* #SECOBS ^property[=].valueCode = #active
* #SECOBS ^property[+].code = #internalId
* #SECOBS ^property[=].valueCode = #23471
* #SUBSIDFFS "subsidized fee for service program" "**Definition:** A government health program that provides coverage on a fee for service basis for health services to persons meeting eligibility criteria such as income, location of residence, access to other coverages, health condition, and age, the cost of which is to some extent subsidized by public funds.\r\n\r\n*Discussion:* The structure and business processes for underwriting and administering a subsidized fee for service program is further specified by the Underwriter and Payer Role.class and Role.code."
* #SUBSIDFFS ^property[0].code = #status
* #SUBSIDFFS ^property[=].valueCode = #active
* #SUBSIDFFS ^property[+].code = #internalId
* #SUBSIDFFS ^property[=].valueCode = #22138
* #WRKCOMP "(workers compensation program" "**Definition:** Government mandated program providing coverage, disability income, and vocational rehabilitation for injuries sustained in the work place or in the course of employment. Employers may either self-fund the program, purchase commercial coverage, or pay a premium to a government entity that administers the program. Employees may be required to pay premiums toward the cost of coverage as well."
* #WRKCOMP ^property[0].code = #status
* #WRKCOMP ^property[=].valueCode = #active
* #WRKCOMP ^property[+].code = #internalId
* #WRKCOMP ^property[=].valueCode = #22146
* #_ActAdjudicationInformationCode "ActAdjudicationInformationCode" "Explanatory codes that provide information derived by an Adjudicator during the course of adjudicating an invoice.\r\n\r\nCodes from this domain are purely informational and do not materially affect the adjudicated invoice. That is, these codes do not impact or explain financial adjustments to an invoice. A companion domain (ActAdjudicationReasonCode) includes reasons which have a financial impact on an Invoice (claim).\r\n\r\nExample adjudication information code is 54540 - Patient has reached Plan Maximum for current year."
* #_ActAdjudicationInformationCode ^property[0].code = #notSelectable
* #_ActAdjudicationInformationCode ^property[=].valueBoolean = true
* #_ActAdjudicationInformationCode ^property[+].code = #status
* #_ActAdjudicationInformationCode ^property[=].valueCode = #retired
* #_ActAdjudicationInformationCode ^property[+].code = #internalId
* #_ActAdjudicationInformationCode ^property[=].valueCode = #20852
* #_ActBillableTreatmentPlanCode "ActBillableTreatmentPlanCode"
* #_ActBillableTreatmentPlanCode ^property[0].code = #notSelectable
* #_ActBillableTreatmentPlanCode ^property[=].valueBoolean = true
* #_ActBillableTreatmentPlanCode ^property[+].code = #status
* #_ActBillableTreatmentPlanCode ^property[=].valueCode = #retired
* #_ActBillableTreatmentPlanCode ^property[+].code = #internalId
* #_ActBillableTreatmentPlanCode ^property[=].valueCode = #20856
* #_ActCognitiveProfessionalServiceCode "ActCognitiveProfessionalServiceCode" "Denotes the specific service that has been performed. This is obtained from the professional service catalog pertaining to the discipline of the health service provider. Professional services are generally cognitive in nature and exclude surgical procedures. E.g. Provided training, Provided drug therapy review, Gave smoking-cessation counseling, etc."
* #_ActCognitiveProfessionalServiceCode ^property[0].code = #notSelectable
* #_ActCognitiveProfessionalServiceCode ^property[=].valueBoolean = true
* #_ActCognitiveProfessionalServiceCode ^property[+].code = #status
* #_ActCognitiveProfessionalServiceCode ^property[=].valueCode = #retired
* #_ActCognitiveProfessionalServiceCode ^property[+].code = #internalId
* #_ActCognitiveProfessionalServiceCode ^property[=].valueCode = #21511
* #_ActIdentityDocumentCode "ActIdentityDocumentCode" "Code identifying the type of identification document (e.g. passport, drivers license)\r\n\r\n**Implementation Note:**The proposal called for a domain, but a code was also provided. When codes are available for the value set the code IDENTDOC (identity document) will be used as the headcode for the specializable value set."
* #_ActIdentityDocumentCode ^property[0].code = #notSelectable
* #_ActIdentityDocumentCode ^property[=].valueBoolean = true
* #_ActIdentityDocumentCode ^property[+].code = #status
* #_ActIdentityDocumentCode ^property[=].valueCode = #retired
* #_ActIdentityDocumentCode ^property[+].code = #internalId
* #_ActIdentityDocumentCode ^property[=].valueCode = #22267
* #_ActOrderCode "ActOrderCode" "The type of order that was fulfilled by the clinical service"
* #_ActOrderCode ^property[0].code = #notSelectable
* #_ActOrderCode ^property[=].valueBoolean = true
* #_ActOrderCode ^property[+].code = #status
* #_ActOrderCode ^property[=].valueCode = #retired
* #_ActOrderCode ^property[+].code = #internalId
* #_ActOrderCode ^property[=].valueCode = #20899
* #_ActPrivilegeCategorization "ActPrivilegeCategorization" "An Act which characterizes a Privilege can have additional observations to provide a finer definition of the requested or conferred privilege. This domain describes the categories under which this additional information is classified."
* #_ActPrivilegeCategorization ^property[0].code = #notSelectable
* #_ActPrivilegeCategorization ^property[=].valueBoolean = true
* #_ActPrivilegeCategorization ^property[+].code = #status
* #_ActPrivilegeCategorization ^property[=].valueCode = #retired
* #_ActPrivilegeCategorization ^property[+].code = #internalId
* #_ActPrivilegeCategorization ^property[=].valueCode = #21535
* #_ActProcedureCode "ActProcedureCode" "An identifying code for healthcare interventions/procedures."
* #_ActProcedureCode ^property[0].code = #notSelectable
* #_ActProcedureCode ^property[=].valueBoolean = true
* #_ActProcedureCode ^property[+].code = #status
* #_ActProcedureCode ^property[=].valueCode = #retired
* #_ActProcedureCode ^property[+].code = #internalId
* #_ActProcedureCode ^property[=].valueCode = #20902
* #_ActRegistryCode "ActRegistryCode" "This is the domain of registry types. Examples include Master Patient Registry, Staff Registry, Employee Registry, Tumor Registry."
* #_ActRegistryCode ^property[0].code = #notSelectable
* #_ActRegistryCode ^property[=].valueBoolean = true
* #_ActRegistryCode ^property[+].code = #status
* #_ActRegistryCode ^property[=].valueCode = #retired
* #_ActRegistryCode ^property[+].code = #internalId
* #_ActRegistryCode ^property[=].valueCode = #20904
* #_ActSecurityObjectCode "ActSecurityObjectCode" "**Description:**An access control object used to manage permissions and capabilities of users within information systems. (See HL7 RBAC specification fo examples of thes objects.)"
* #_ActSecurityObjectCode ^property[0].code = #notSelectable
* #_ActSecurityObjectCode ^property[=].valueBoolean = true
* #_ActSecurityObjectCode ^property[+].code = #status
* #_ActSecurityObjectCode ^property[=].valueCode = #retired
* #_ActSecurityObjectCode ^property[+].code = #internalId
* #_ActSecurityObjectCode ^property[=].valueCode = #22641
* #_AdvanceBeneficiaryNoticeType "AdvanceBeneficiaryNoticeType" "**Description:**\r\n\r\nRepresents types of consent that patient must sign prior to receipt of service, which is required for billing purposes.\r\n\r\n**Examples:**\r\n\r\n *  Advanced beneficiary medically necessity notice.\r\n *  Advanced beneficiary agreement to pay notice.\r\n *  Advanced beneficiary requests payer billed."
* #_AdvanceBeneficiaryNoticeType ^property[0].code = #notSelectable
* #_AdvanceBeneficiaryNoticeType ^property[=].valueBoolean = true
* #_AdvanceBeneficiaryNoticeType ^property[+].code = #status
* #_AdvanceBeneficiaryNoticeType ^property[=].valueCode = #retired
* #_AdvanceBeneficiaryNoticeType ^property[+].code = #internalId
* #_AdvanceBeneficiaryNoticeType ^property[=].valueCode = #22095
* #_CPT4 "CPT4" "**Description:**Physicians Current Procedural Terminology (CPT) Manual is a listing of descriptive terms and identifying codes for reporting medical services and procedures performed by physicians. Available for the AMA at the address listed for CPT above. These codes are found in Appendix A of CPT 2000 Standard Edition. (CPT 2000 Standard Edition, American Medical Association, Chicago, IL)."
* #_CPT4 ^property[0].code = #notSelectable
* #_CPT4 ^property[=].valueBoolean = true
* #_CPT4 ^property[+].code = #status
* #_CPT4 ^property[=].valueCode = #retired
* #_CPT4 ^property[+].code = #internalId
* #_CPT4 ^property[=].valueCode = #22176
* #_ExternallyDefinedActCodes "ExternallyDefinedActCodes"
* #_ExternallyDefinedActCodes ^property[0].code = #notSelectable
* #_ExternallyDefinedActCodes ^property[=].valueBoolean = true
* #_ExternallyDefinedActCodes ^property[+].code = #status
* #_ExternallyDefinedActCodes ^property[=].valueCode = #retired
* #_ExternallyDefinedActCodes ^property[+].code = #internalId
* #_ExternallyDefinedActCodes ^property[=].valueCode = #20919
* #_HL7DefinedActCodes "HL7DefinedActCodes" "Domain provides the root for HL7-defined detailed or rich codes for the Act classes."
* #_HL7DefinedActCodes ^property[0].code = #notSelectable
* #_HL7DefinedActCodes ^property[=].valueBoolean = true
* #_HL7DefinedActCodes ^property[+].code = #status
* #_HL7DefinedActCodes ^property[=].valueCode = #retired
* #_HL7DefinedActCodes ^property[+].code = #internalId
* #_HL7DefinedActCodes ^property[=].valueCode = #20921
* #_IndividualCaseSafetyReportCriteria "IndividualCaseSafetyReportCriteria" "**Description:** Includes those concepts that are provided to justify the fact that an adverse event or product problem is required to be reported in an expedited fashion."
* #_IndividualCaseSafetyReportCriteria ^property[0].code = #notSelectable
* #_IndividualCaseSafetyReportCriteria ^property[=].valueBoolean = true
* #_IndividualCaseSafetyReportCriteria ^property[+].code = #status
* #_IndividualCaseSafetyReportCriteria ^property[=].valueCode = #retired
* #_IndividualCaseSafetyReportCriteria ^property[+].code = #internalId
* #_IndividualCaseSafetyReportCriteria ^property[=].valueCode = #22078
* #_IndividualCaseSafetyReportProductCharacteristic "IndividualCaseSafetyReportProductCharacteristic" "**Description:** Includes relevant pieces of information about a product or its process of creation. The vocabulary domain is used to characterize products when they are cited in adverse event or product problem reports.\r\n\r\n**Examples:**Weight, color, dimensions."
* #_IndividualCaseSafetyReportProductCharacteristic ^property[0].code = #notSelectable
* #_IndividualCaseSafetyReportProductCharacteristic ^property[=].valueBoolean = true
* #_IndividualCaseSafetyReportProductCharacteristic ^property[+].code = #status
* #_IndividualCaseSafetyReportProductCharacteristic ^property[=].valueCode = #retired
* #_IndividualCaseSafetyReportProductCharacteristic ^property[+].code = #internalId
* #_IndividualCaseSafetyReportProductCharacteristic ^property[=].valueCode = #22079
* #_ObservationActAgeGroupType "ObservationActAgeGroupType" "**Description:**To allow queries to specify useful information about the age of the patient without disclosing possible protected health information."
* #_ObservationActAgeGroupType ^property[0].code = #notSelectable
* #_ObservationActAgeGroupType ^property[=].valueBoolean = true
* #_ObservationActAgeGroupType ^property[+].code = #status
* #_ObservationActAgeGroupType ^property[=].valueCode = #retired
* #_ObservationActAgeGroupType ^property[+].code = #internalId
* #_ObservationActAgeGroupType ^property[=].valueCode = #22046
* #COPAY
* #COPAY ^property[0].code = #status
* #COPAY ^property[=].valueCode = #retired
* #COPAY ^property[+].code = #internalId
* #COPAY ^property[=].valueCode = #17501
* #DEDUCT
* #DEDUCT ^property[0].code = #status
* #DEDUCT ^property[=].valueCode = #retired
* #DEDUCT ^property[+].code = #internalId
* #DEDUCT ^property[=].valueCode = #17500
* #DOSEIND
* #DOSEIND ^property[0].code = #status
* #DOSEIND ^property[=].valueCode = #retired
* #DOSEIND ^property[+].code = #internalId
* #DOSEIND ^property[=].valueCode = #17793
* #PRA
* #PRA ^property[0].code = #status
* #PRA ^property[=].valueCode = #retired
* #PRA ^property[+].code = #internalId
* #PRA ^property[=].valueCode = #16675
* #STORE "Storage" "The act of putting something away for safe keeping. The \"something\" may be physical object such as a specimen, or information, such as observations regarding a specimen."
* #STORE ^property[0].code = #status
* #STORE ^property[=].valueCode = #retired
* #STORE ^property[+].code = #internalId
* #STORE ^property[=].valueCode = #21456
* #ACCTRECEIVABLE "account receivable" "An account for collecting charges, reversals, adjustments and payments, including deductibles, copayments, coinsurance (financial transactions) credited or debited to the account receivable account for a patient's encounter."
* #ACCTRECEIVABLE ^property[0].code = #status
* #ACCTRECEIVABLE ^property[=].valueCode = #active
* #ACCTRECEIVABLE ^property[+].code = #internalId
* #ACCTRECEIVABLE ^property[=].valueCode = #21361
* #ACCTRECEIVABLE ^property[+].code = #subsumedBy
* #ACCTRECEIVABLE ^property[=].valueCode = #_ActAccountCode
* #CASH "Cash"
* #CASH ^property[0].code = #status
* #CASH ^property[=].valueCode = #active
* #CASH ^property[+].code = #internalId
* #CASH ^property[=].valueCode = #14810
* #CASH ^property[+].code = #subsumedBy
* #CASH ^property[=].valueCode = #_ActAccountCode
* #CC "credit card" "**Description:** Types of advance payment to be made on a plastic card usually issued by a financial institution used of purchasing services and/or products."
* #CC ^property[0].code = #status
* #CC ^property[=].valueCode = #active
* #CC ^property[+].code = #internalId
* #CC ^property[=].valueCode = #23013
* #CC ^property[+].code = #subsumedBy
* #CC ^property[=].valueCode = #_ActAccountCode
* #PBILLACCT "patient billing account" "An account representing charges and credits (financial transactions) for a patient's encounter."
* #PBILLACCT ^property[0].code = #status
* #PBILLACCT ^property[=].valueCode = #active
* #PBILLACCT ^property[+].code = #internalId
* #PBILLACCT ^property[=].valueCode = #21301
* #PBILLACCT ^property[+].code = #subsumedBy
* #PBILLACCT ^property[=].valueCode = #_ActAccountCode
* #_CreditCard "CreditCard"
* #_CreditCard ^property[0].code = #notSelectable
* #_CreditCard ^property[=].valueBoolean = true
* #_CreditCard ^property[+].code = #status
* #_CreditCard ^property[=].valueCode = #retired
* #_CreditCard ^property[+].code = #internalId
* #_CreditCard ^property[=].valueCode = #20912
* #_CreditCard ^property[+].code = #subsumedBy
* #_CreditCard ^property[=].valueCode = #_ActAccountCode
* #_ActAdjudicationGroupCode "ActAdjudicationGroupCode" "Catagorization of grouping criteria for the associated transactions and/or summary (totals, subtotals)."
* #_ActAdjudicationGroupCode ^property[0].code = #notSelectable
* #_ActAdjudicationGroupCode ^property[=].valueBoolean = true
* #_ActAdjudicationGroupCode ^property[+].code = #status
* #_ActAdjudicationGroupCode ^property[=].valueCode = #active
* #_ActAdjudicationGroupCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActAdjudicationGroupCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActAdjudicationGroupCode ^property[=].valueCoding = $v3-ActClass#ADJUD
* #_ActAdjudicationGroupCode ^property[+].code = #internalId
* #_ActAdjudicationGroupCode ^property[=].valueCode = #20851
* #_ActAdjudicationGroupCode ^property[+].code = #subsumedBy
* #_ActAdjudicationGroupCode ^property[=].valueCode = #_ActAdjudicationCode
* #AA "adjudicated with adjustments" "The invoice element has been accepted for payment but one or more adjustment(s) have been made to one or more invoice element line items (component charges).\r\n\r\nAlso includes the concept 'Adjudicate as zero' and items not covered under a particular Policy.\r\n\r\nInvoice element can be reversed (nullified).\r\n\r\nRecommend that the invoice element is saved for DUR (Drug Utilization Reporting)."
* #AA ^property[0].code = #status
* #AA ^property[=].valueCode = #active
* #AA ^property[+].code = #internalId
* #AA ^property[=].valueCode = #19347
* #AA ^property[+].code = #subsumedBy
* #AA ^property[=].valueCode = #_ActAdjudicationCode
* #AR "adjudicated as refused" "The invoice element has passed through the adjudication process but payment is refused due to one or more reasons.\r\n\r\nIncludes items such as patient not covered, or invoice element is not constructed according to payer rules (e.g. 'invoice submitted too late').\r\n\r\nIf one invoice element line item in the invoice element structure is rejected, the remaining line items may not be adjudicated and the complete group is treated as rejected.\r\n\r\nA refused invoice element can be forwarded to the next payer (for Coordination of Benefits) or modified and resubmitted to refusing payer.\r\n\r\nInvoice element cannot be reversed (nullified) as there is nothing to reverse.\r\n\r\nRecommend that the invoice element is not saved for DUR (Drug Utilization Reporting)."
* #AR ^property[0].code = #status
* #AR ^property[=].valueCode = #active
* #AR ^property[+].code = #internalId
* #AR ^property[=].valueCode = #17619
* #AR ^property[+].code = #subsumedBy
* #AR ^property[=].valueCode = #_ActAdjudicationCode
* #AS "adjudicated as submitted" "The invoice element was/will be paid exactly as submitted, without financial adjustment(s).\r\n\r\nIf the dollar amount stays the same, but the billing codes have been amended or financial adjustments have been applied through the adjudication process, the invoice element is treated as \"Adjudicated with Adjustment\".\r\n\r\nIf information items are included in the adjudication results that do not affect the monetary amounts paid, then this is still Adjudicated as Submitted (e.g. 'reached Plan Maximum on this Claim').\r\n\r\nInvoice element can be reversed (nullified).\r\n\r\nRecommend that the invoice element is saved for DUR (Drug Utilization Reporting)."
* #AS ^property[0].code = #status
* #AS ^property[=].valueCode = #active
* #AS ^property[+].code = #internalId
* #AS ^property[=].valueCode = #17617
* #AS ^property[+].code = #subsumedBy
* #AS ^property[=].valueCode = #_ActAdjudicationCode
* #CONT "contract" "Transaction counts and value totals by Contract Identifier."
* #CONT ^property[0].code = #status
* #CONT ^property[=].valueCode = #active
* #CONT ^property[+].code = #internalId
* #CONT ^property[=].valueCode = #17974
* #CONT ^property[+].code = #subsumedBy
* #CONT ^property[=].valueCode = #_ActAdjudicationGroupCode
* #CONT ^property[+].code = #subsumedBy
* #CONT ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #DAY "day" "Transaction counts and value totals for each calendar day within the date range specified."
* #DAY ^property[0].code = #status
* #DAY ^property[=].valueCode = #active
* #DAY ^property[+].code = #internalId
* #DAY ^property[=].valueCode = #17969
* #DAY ^property[+].code = #subsumedBy
* #DAY ^property[=].valueCode = #_ActAdjudicationGroupCode
* #DAY ^property[+].code = #subsumedBy
* #DAY ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #LOC "location" "Transaction counts and value totals by service location (e.g clinic)."
* #LOC ^property[0].code = #status
* #LOC ^property[=].valueCode = #active
* #LOC ^property[+].code = #internalId
* #LOC ^property[=].valueCode = #17976
* #LOC ^property[+].code = #subsumedBy
* #LOC ^property[=].valueCode = #_ActAdjudicationGroupCode
* #LOC ^property[+].code = #subsumedBy
* #LOC ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #MONTH "month" "Transaction counts and value totals for each calendar month within the date range specified."
* #MONTH ^property[0].code = #status
* #MONTH ^property[=].valueCode = #active
* #MONTH ^property[+].code = #internalId
* #MONTH ^property[=].valueCode = #17970
* #MONTH ^property[+].code = #subsumedBy
* #MONTH ^property[=].valueCode = #_ActAdjudicationGroupCode
* #MONTH ^property[+].code = #subsumedBy
* #MONTH ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #PERIOD "period" "Transaction counts and value totals for the date range specified."
* #PERIOD ^property[0].code = #status
* #PERIOD ^property[=].valueCode = #active
* #PERIOD ^property[+].code = #internalId
* #PERIOD ^property[=].valueCode = #17971
* #PERIOD ^property[+].code = #subsumedBy
* #PERIOD ^property[=].valueCode = #_ActAdjudicationGroupCode
* #PERIOD ^property[+].code = #subsumedBy
* #PERIOD ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #PROV "provider" "Transaction counts and value totals by Provider Identifier."
* #PROV ^property[0].code = #status
* #PROV ^property[=].valueCode = #active
* #PROV ^property[+].code = #internalId
* #PROV ^property[=].valueCode = #17975
* #PROV ^property[+].code = #subsumedBy
* #PROV ^property[=].valueCode = #_ActAdjudicationGroupCode
* #PROV ^property[+].code = #subsumedBy
* #PROV ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #WEEK "week" "Transaction counts and value totals for each calendar week within the date range specified."
* #WEEK ^property[0].code = #status
* #WEEK ^property[=].valueCode = #active
* #WEEK ^property[+].code = #internalId
* #WEEK ^property[=].valueCode = #17972
* #WEEK ^property[+].code = #subsumedBy
* #WEEK ^property[=].valueCode = #_ActAdjudicationGroupCode
* #WEEK ^property[+].code = #subsumedBy
* #WEEK ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #YEAR "year" "Transaction counts and value totals for each calendar year within the date range specified."
* #YEAR ^property[0].code = #status
* #YEAR ^property[=].valueCode = #active
* #YEAR ^property[+].code = #internalId
* #YEAR ^property[=].valueCode = #17973
* #YEAR ^property[+].code = #subsumedBy
* #YEAR ^property[=].valueCode = #_ActAdjudicationGroupCode
* #YEAR ^property[+].code = #subsumedBy
* #YEAR ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #DISPLAY "Display" "The adjudication result associated is to be displayed to the receiver of the adjudication result."
* #DISPLAY ^property[0].code = #status
* #DISPLAY ^property[=].valueCode = #active
* #DISPLAY ^property[+].code = #internalId
* #DISPLAY ^property[=].valueCode = #17475
* #DISPLAY ^property[+].code = #subsumedBy
* #DISPLAY ^property[=].valueCode = #_ActAdjudicationResultActionCode
* #FORM "Print on Form" "The adjudication result associated is to be printed on the specified form, which is then provided to the covered party."
* #FORM ^property[0].code = #status
* #FORM ^property[=].valueCode = #active
* #FORM ^property[+].code = #internalId
* #FORM ^property[=].valueCode = #17473
* #FORM ^property[+].code = #subsumedBy
* #FORM ^property[=].valueCode = #_ActAdjudicationResultActionCode
* #NAT "Insufficient authorization" "The requesting party has insufficient authorization to invoke the interaction."
* #NAT ^property[0].code = #status
* #NAT ^property[=].valueCode = #active
* #NAT ^property[+].code = #internalId
* #NAT ^property[=].valueCode = #21390
* #NAT ^property[+].code = #subsumedBy
* #NAT ^property[=].valueCode = #_ActAdministrativeAuthorizationDetectedIssueCode
* #SUPPRESSED "record suppressed" "**Description:** One or more records in the query response have been suppressed due to consent or privacy restrictions."
* #SUPPRESSED ^property[0].code = #status
* #SUPPRESSED ^property[=].valueCode = #active
* #SUPPRESSED ^property[+].code = #internalId
* #SUPPRESSED ^property[=].valueCode = #23274
* #SUPPRESSED ^property[+].code = #subsumedBy
* #SUPPRESSED ^property[=].valueCode = #_ActAdministrativeAuthorizationDetectedIssueCode
* #VALIDAT "validation issue" "**Description:**The specified element did not pass business-rule validation."
* #VALIDAT ^property[0].code = #status
* #VALIDAT ^property[=].valueCode = #active
* #VALIDAT ^property[+].code = #internalId
* #VALIDAT ^property[=].valueCode = #21651
* #VALIDAT ^property[+].code = #subsumedBy
* #VALIDAT ^property[=].valueCode = #_ActAdministrativeAuthorizationDetectedIssueCode
* #_ActAdministrativeAuthorizationDetectedIssueCode "ActAdministrativeAuthorizationDetectedIssueCode"
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[0].code = #notSelectable
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[=].valueBoolean = true
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[+].code = #status
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[=].valueCode = #active
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[+].code = #internalId
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[=].valueCode = #21389
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[+].code = #subsumedBy
* #_ActAdministrativeAuthorizationDetectedIssueCode ^property[=].valueCode = #_ActAdministrativeDetectedIssueCode
* #_ActAdministrativeRuleDetectedIssueCode "ActAdministrativeRuleDetectedIssueCode"
* #_ActAdministrativeRuleDetectedIssueCode ^property[0].code = #notSelectable
* #_ActAdministrativeRuleDetectedIssueCode ^property[=].valueBoolean = true
* #_ActAdministrativeRuleDetectedIssueCode ^property[+].code = #status
* #_ActAdministrativeRuleDetectedIssueCode ^property[=].valueCode = #active
* #_ActAdministrativeRuleDetectedIssueCode ^property[+].code = #internalId
* #_ActAdministrativeRuleDetectedIssueCode ^property[=].valueCode = #21391
* #_ActAdministrativeRuleDetectedIssueCode ^property[+].code = #subsumedBy
* #_ActAdministrativeRuleDetectedIssueCode ^property[=].valueCode = #_ActAdministrativeDetectedIssueCode
* #_AuthorizationIssueManagementCode "Authorization Issue Management Code"
* #_AuthorizationIssueManagementCode ^property[0].code = #notSelectable
* #_AuthorizationIssueManagementCode ^property[=].valueBoolean = true
* #_AuthorizationIssueManagementCode ^property[+].code = #status
* #_AuthorizationIssueManagementCode ^property[=].valueCode = #active
* #_AuthorizationIssueManagementCode ^property[+].code = #rim-ClassifiesClassCode
* #_AuthorizationIssueManagementCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_AuthorizationIssueManagementCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_AuthorizationIssueManagementCode ^property[+].code = #internalId
* #_AuthorizationIssueManagementCode ^property[=].valueCode = #21387
* #_AuthorizationIssueManagementCode ^property[+].code = #subsumedBy
* #_AuthorizationIssueManagementCode ^property[=].valueCode = #_ActAdministrativeDetectedIssueManagementCode
* #KEY204 "Unknown key identifier" "The ID of the patient, order, etc., was not found. Used for transactions other than additions, e.g. transfer of a non-existent patient."
* #KEY204 ^property[0].code = #status
* #KEY204 ^property[=].valueCode = #active
* #KEY204 ^property[+].code = #internalId
* #KEY204 ^property[=].valueCode = #21392
* #KEY204 ^property[+].code = #subsumedBy
* #KEY204 ^property[=].valueCode = #_ActAdministrativeRuleDetectedIssueCode
* #KEY204 ^property[+].code = #subsumedBy
* #KEY204 ^property[=].valueCode = #VALIDAT
* #KEY205 "Duplicate key identifier" "The ID of the patient, order, etc., already exists. Used in response to addition transactions (Admit, New Order, etc.)."
* #KEY205 ^property[0].code = #status
* #KEY205 ^property[=].valueCode = #active
* #KEY205 ^property[+].code = #internalId
* #KEY205 ^property[=].valueCode = #21393
* #KEY205 ^property[+].code = #subsumedBy
* #KEY205 ^property[=].valueCode = #_ActAdministrativeRuleDetectedIssueCode
* #KEY205 ^property[+].code = #subsumedBy
* #KEY205 ^property[=].valueCode = #VALIDAT
* #KEY206 "non-matching identification" "**Description:** Metadata associated with the identification (e.g. name or gender) does not match the identification being verified."
* #KEY206 ^property[0].code = #status
* #KEY206 ^property[=].valueCode = #active
* #KEY206 ^property[+].code = #internalId
* #KEY206 ^property[=].valueCode = #23272
* #KEY206 ^property[+].code = #subsumedBy
* #KEY206 ^property[=].valueCode = #_ActAdministrativeRuleDetectedIssueCode
* #OBSOLETE "obsolete record returned" "**Description:** One or more records in the query response have a status of 'obsolete'."
* #OBSOLETE ^property[0].code = #status
* #OBSOLETE ^property[=].valueCode = #active
* #OBSOLETE ^property[+].code = #internalId
* #OBSOLETE ^property[=].valueCode = #23275
* #OBSOLETE ^property[+].code = #subsumedBy
* #OBSOLETE ^property[=].valueCode = #_ActAdministrativeRuleDetectedIssueCode
* #CPTM "CPT modifier codes" "**Description:**CPT modifier codes are found in Appendix A of CPT 2000 Standard Edition."
* #CPTM ^property[0].code = #status
* #CPTM ^property[=].valueCode = #active
* #CPTM ^property[+].code = #internalId
* #CPTM ^property[=].valueCode = #22151
* #CPTM ^property[+].code = #subsumedBy
* #CPTM ^property[=].valueCode = #_ActBillableModifierCode
* #HCPCSA "HCPCS Level II and Carrier-assigned" "**Description:**HCPCS Level II (HCFA-assigned) and Carrier-assigned (Level III) modifiers are reported in Appendix A of CPT 2000 Standard Edition and in the Medicare Bulletin."
* #HCPCSA ^property[0].code = #status
* #HCPCSA ^property[=].valueCode = #active
* #HCPCSA ^property[+].code = #internalId
* #HCPCSA ^property[=].valueCode = #22150
* #HCPCSA ^property[+].code = #subsumedBy
* #HCPCSA ^property[=].valueCode = #_ActBillableModifierCode
* #_ActMedicalBillableServiceCode "ActMedicalBillableServiceCode" "**Definition:** An identifying code for billable medical services, as opposed to codes for similar services to identify them for clinical purposes."
* #_ActMedicalBillableServiceCode ^property[0].code = #notSelectable
* #_ActMedicalBillableServiceCode ^property[=].valueBoolean = true
* #_ActMedicalBillableServiceCode ^property[+].code = #status
* #_ActMedicalBillableServiceCode ^property[=].valueCode = #retired
* #_ActMedicalBillableServiceCode ^property[+].code = #internalId
* #_ActMedicalBillableServiceCode ^property[=].valueCode = #22219
* #_ActMedicalBillableServiceCode ^property[+].code = #subsumedBy
* #_ActMedicalBillableServiceCode ^property[=].valueCode = #_ActBillableServiceCode
* #_ActNonMedicalBillableServiceCode "ActNonMedicalBillableServiceCode" "**Definition:** An identifying code for billable services that are not medical procedures, such as social services or governmental program services.\r\n\r\n**Example:** Building a wheelchair ramp, help with groceries, giving someone a ride, etc."
* #_ActNonMedicalBillableServiceCode ^property[0].code = #notSelectable
* #_ActNonMedicalBillableServiceCode ^property[=].valueBoolean = true
* #_ActNonMedicalBillableServiceCode ^property[+].code = #status
* #_ActNonMedicalBillableServiceCode ^property[=].valueCode = #retired
* #_ActNonMedicalBillableServiceCode ^property[+].code = #internalId
* #_ActNonMedicalBillableServiceCode ^property[=].valueCode = #22220
* #_ActNonMedicalBillableServiceCode ^property[+].code = #subsumedBy
* #_ActNonMedicalBillableServiceCode ^property[=].valueCode = #_ActBillableServiceCode
* #BLK "block funding" "A billing arrangement where a Provider charges a lump sum to provide a prescribed group (volume) of services to a single patient which occur over a period of time. Services included in the block may vary.\r\n\r\nThis billing arrangement is also known as Program of Care for some specific Payors and Program Fees for other Payors."
* #BLK ^property[0].code = #status
* #BLK ^property[=].valueCode = #active
* #BLK ^property[+].code = #internalId
* #BLK ^property[=].valueCode = #17480
* #BLK ^property[+].code = #subsumedBy
* #BLK ^property[=].valueCode = #_ActBillingArrangementCode
* #CAP "capitation funding" "A billing arrangement where the payment made to a Provider is determined by analyzing one or more demographic attributes about the persons/patients who are enrolled with the Provider (in their practice)."
* #CAP ^property[0].code = #status
* #CAP ^property[=].valueCode = #active
* #CAP ^property[+].code = #internalId
* #CAP ^property[=].valueCode = #17484
* #CAP ^property[+].code = #subsumedBy
* #CAP ^property[=].valueCode = #_ActBillingArrangementCode
* #CONTF "contract funding" "A billing arrangement where a Provider charges a lump sum to provide a particular volume of one or more interventions/procedures or groups of interventions/procedures."
* #CONTF ^property[0].code = #status
* #CONTF ^property[=].valueCode = #active
* #CONTF ^property[+].code = #internalId
* #CONTF ^property[=].valueCode = #17481
* #CONTF ^property[+].code = #subsumedBy
* #CONTF ^property[=].valueCode = #_ActBillingArrangementCode
* #FINBILL "financial" "A billing arrangement where a Provider charges for non-clinical items. This includes interest in arrears, mileage, etc. Clinical content is not included in Invoices submitted with this type of billing arrangement."
* #FINBILL ^property[0].code = #status
* #FINBILL ^property[=].valueCode = #active
* #FINBILL ^property[+].code = #internalId
* #FINBILL ^property[=].valueCode = #19723
* #FINBILL ^property[+].code = #subsumedBy
* #FINBILL ^property[=].valueCode = #_ActBillingArrangementCode
* #ROST "roster funding" "A billing arrangement where funding is based on a list of individuals registered as patients of the Provider."
* #ROST ^property[0].code = #status
* #ROST ^property[=].valueCode = #active
* #ROST ^property[+].code = #internalId
* #ROST ^property[=].valueCode = #17482
* #ROST ^property[+].code = #subsumedBy
* #ROST ^property[=].valueCode = #_ActBillingArrangementCode
* #SESS "sessional funding" "A billing arrangement where a Provider charges a sum to provide a group (volume) of interventions/procedures to one or more patients within a defined period of time, typically on the same date. Interventions/procedures included in the session may vary."
* #SESS ^property[0].code = #status
* #SESS ^property[=].valueCode = #active
* #SESS ^property[+].code = #internalId
* #SESS ^property[=].valueCode = #17483
* #SESS ^property[+].code = #subsumedBy
* #SESS ^property[=].valueCode = #_ActBillingArrangementCode
* #FFS "fee for service" "A billing arrangement where a Provider charges a separate fee for each intervention/procedure/event or product.\r\n\r\nFee for Service is used when an individual intervention/procedure/event is used for billing purposes. In other words, fees are associated with the intervention/procedure/event. For example, a specific CCI (Canadian Classification of Interventions) code has an associated fee and is used for billing purposes."
* #FFS ^property[0].code = #status
* #FFS ^property[=].valueCode = #retired
* #FFS ^property[+].code = #internalId
* #FFS ^property[=].valueCode = #17479
* #FFS ^property[+].code = #subsumedBy
* #FFS ^property[=].valueCode = #_ActBillingArrangementCode
* #FFS ^property[+].code = #subsumedBy
* #FFS ^property[=].valueCode = #FF
* #ROIFS "fully specified ROI" "A fully specified bounded Region of Interest (ROI) delineates a ROI in which only those dimensions participate that are specified by boundary criteria, whereas all other dimensions are excluded. For example a ROI to mark an episode of \"ST elevation\" in a subset of the EKG leads V2, V3, and V4 would include 4 boundaries, one each for time, V2, V3, and V4."
* #ROIFS ^property[0].code = #status
* #ROIFS ^property[=].valueCode = #active
* #ROIFS ^property[+].code = #internalId
* #ROIFS ^property[=].valueCode = #17897
* #ROIFS ^property[+].code = #subsumedBy
* #ROIFS ^property[=].valueCode = #_ActBoundedROICode
* #ROIPS "partially specified ROI" "A partially specified bounded Region of Interest (ROI) specifies a ROI in which at least all values in the dimensions specified by the boundary criteria participate. For example, if an episode of ventricular fibrillations (VFib) is observed, it usually doesn't make sense to exclude any EKG leads from the observation and the partially specified ROI would contain only one boundary for time indicating the time interval where VFib was observed."
* #ROIPS ^property[0].code = #status
* #ROIPS ^property[=].valueCode = #active
* #ROIPS ^property[+].code = #internalId
* #ROIPS ^property[=].valueCode = #17898
* #ROIPS ^property[+].code = #subsumedBy
* #ROIPS ^property[=].valueCode = #_ActBoundedROICode
* #_ActCredentialedCareCode "act credentialed care" "**Description:**The type and scope of legal and/or professional responsibility taken-on by the performer of the Act for a specific subject of care as described by a credentialing agency, i.e. government or non-government agency. Failure in executing this Act may result in loss of credential to the person or organization who participates as performer of the Act. Excludes employment agreements.\r\n\r\n**Example:**Hospital license; physician license; clinic accreditation."
* #_ActCredentialedCareCode ^property[0].code = #notSelectable
* #_ActCredentialedCareCode ^property[=].valueBoolean = true
* #_ActCredentialedCareCode ^property[+].code = #status
* #_ActCredentialedCareCode ^property[=].valueCode = #active
* #_ActCredentialedCareCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCredentialedCareCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCredentialedCareCode ^property[=].valueCoding = $v3-ActClass#PCPR
* #_ActCredentialedCareCode ^property[+].code = #internalId
* #_ActCredentialedCareCode ^property[=].valueCode = #21826
* #_ActCredentialedCareCode ^property[+].code = #subsumedBy
* #_ActCredentialedCareCode ^property[=].valueCode = #_ActCareProvisionCode
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
* #_ActMedicalServiceCode "ActMedicalServiceCode" "General category of medical service provided to the patient during their encounter."
* #_ActMedicalServiceCode ^property[0].code = #notSelectable
* #_ActMedicalServiceCode ^property[=].valueBoolean = true
* #_ActMedicalServiceCode ^property[+].code = #status
* #_ActMedicalServiceCode ^property[=].valueCode = #active
* #_ActMedicalServiceCode ^property[+].code = #internalId
* #_ActMedicalServiceCode ^property[=].valueCode = #20896
* #_ActMedicalServiceCode ^property[+].code = #subsumedBy
* #_ActMedicalServiceCode ^property[=].valueCode = #_ActCareProvisionCode
* #AUTOATTCH "auto attachment" "**Description:** Automobile Information Attachment"
* #AUTOATTCH ^property[0].code = #status
* #AUTOATTCH ^property[=].valueCode = #active
* #AUTOATTCH ^property[+].code = #internalId
* #AUTOATTCH ^property[=].valueCode = #23012
* #AUTOATTCH ^property[+].code = #subsumedBy
* #AUTOATTCH ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #DOCUMENT "document" "**Description:** Document Attachment"
* #DOCUMENT ^property[0].code = #status
* #DOCUMENT ^property[=].valueCode = #active
* #DOCUMENT ^property[+].code = #internalId
* #DOCUMENT ^property[=].valueCode = #23008
* #DOCUMENT ^property[+].code = #subsumedBy
* #DOCUMENT ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #HEALTHREC "health record" "**Description:** Health Record Attachment"
* #HEALTHREC ^property[0].code = #status
* #HEALTHREC ^property[=].valueCode = #active
* #HEALTHREC ^property[+].code = #internalId
* #HEALTHREC ^property[=].valueCode = #23010
* #HEALTHREC ^property[+].code = #subsumedBy
* #HEALTHREC ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #IMG "image attachment" "**Description:** Image Attachment"
* #IMG ^property[0].code = #status
* #IMG ^property[=].valueCode = #active
* #IMG ^property[+].code = #internalId
* #IMG ^property[=].valueCode = #23006
* #IMG ^property[+].code = #subsumedBy
* #IMG ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #LABRESULTS "lab results" "**Description:** Lab Results Attachment"
* #LABRESULTS ^property[0].code = #status
* #LABRESULTS ^property[=].valueCode = #active
* #LABRESULTS ^property[+].code = #internalId
* #LABRESULTS ^property[=].valueCode = #23009
* #LABRESULTS ^property[+].code = #subsumedBy
* #LABRESULTS ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #MODEL "model" "**Description:** Digital Model Attachment"
* #MODEL ^property[0].code = #status
* #MODEL ^property[=].valueCode = #active
* #MODEL ^property[+].code = #internalId
* #MODEL ^property[=].valueCode = #23007
* #MODEL ^property[+].code = #subsumedBy
* #MODEL ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #WIATTCH "work injury report attachment" "**Description:** Work Injury related additional Information Attachment"
* #WIATTCH ^property[0].code = #status
* #WIATTCH ^property[=].valueCode = #active
* #WIATTCH ^property[+].code = #internalId
* #WIATTCH ^property[=].valueCode = #23011
* #WIATTCH ^property[+].code = #subsumedBy
* #WIATTCH ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #XRAY "x-ray" "**Description:** Digital X-Ray Attachment"
* #XRAY ^property[0].code = #status
* #XRAY ^property[=].valueCode = #active
* #XRAY ^property[+].code = #internalId
* #XRAY ^property[=].valueCode = #23005
* #XRAY ^property[+].code = #subsumedBy
* #XRAY ^property[=].valueCode = #_ActClaimAttachmentCategoryCode
* #_ActDecision "_ActDecision" "Specifies the type of agreement between one or more grantor and grantee in which rights and obligations related to one or more shared items of interest are allocated.\r\n\r\n*Usage Note:* Such agreements may be considered \"consent directives\" or \"contracts\" depending on the context, and are considered closely related or synonymous from a legal perspective.\r\n\r\n**Examples:** \r\n\r\n *  Healthcare Privacy Consent Directive permitting or restricting in whole or part the collection, access, use, and disclosure of health information, and any associated handling caveats.\r\n *  Healthcare Medical Consent Directive to receive medical procedures after being informed of risks and benefits, thereby reducing the grantee's liability.\r\n *  Research Informed Consent for participation in clinical trials and disclosure of health information after being informed of risks and benefits, thereby reducing the grantee's liability.\r\n *  Substitute decision maker delegation in which the grantee assumes responsibility to act on behalf of the grantor.\r\n *  Contracts in which the agreement requires assent/dissent by the grantor of terms offered by a grantee, a consumer opts out of an \"award\" system for use of a retailer's marketing or credit card vendor's point collection cards in exchange for allowing purchase tracking and profiling.\r\n *  A mobile device or App privacy policy and terms of service to which a user must agree in whole or in part in order to utilize the service.\r\n *  Agreements between a client and an authorization server or between an authorization server and a resource operator and/or resource owner permitting or restricting e.g., collection, access, use, and disclosure of information, and any associated handling caveats."
* #_ActDecision ^property[0].code = #notSelectable
* #_ActDecision ^property[=].valueBoolean = true
* #_ActDecision ^property[+].code = #status
* #_ActDecision ^property[=].valueCode = #active
* #_ActDecision ^property[+].code = #internalId
* #_ActDecision ^property[=].valueCode = #24107
* #_ActDecision ^property[+].code = #subsumedBy
* #_ActDecision ^property[=].valueCode = #_ActConsent
* #_ActPrivacyConsentDirective "_ActPrivacyConsentDirective" "Specifies types of consent directives governing the collection, access, use, or disclosure of personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual."
* #_ActPrivacyConsentDirective ^property[0].code = #notSelectable
* #_ActPrivacyConsentDirective ^property[=].valueBoolean = true
* #_ActPrivacyConsentDirective ^property[+].code = #status
* #_ActPrivacyConsentDirective ^property[=].valueCode = #active
* #_ActPrivacyConsentDirective ^property[+].code = #internalId
* #_ActPrivacyConsentDirective ^property[=].valueCode = #24108
* #_ActPrivacyConsentDirective ^property[+].code = #subsumedBy
* #_ActPrivacyConsentDirective ^property[=].valueCode = #_ActConsent
* #EMRGONLY "emergency only" "Privacy consent directive restricting or prohibiting access, use, or disclosure of personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual in a registry or repository for all purposes except for emergency treatment generally, which may include treatment during a disaster, a threat, in an emergency department and for break the glass purposes of use as specified by applicable domain policy.\r\n\r\n*Usage Note:* To specify the scope of an \"EMRGONLY\" consent directive within a policy domain, use one or more of the following Purpose of Use codes in the ActReason code system OID: 2.16.840.1.113883.5.8.\r\n\r\n *  ETREAT (Emergency Treatment): To perform one or more operations on information for provision of immediately needed health care for an emergent condition.\r\n *  BTG (break the glass): To perform policy override operations on information for provision of immediately needed health care for an emergent condition affecting potential harm, death or patient safety by end users who are not provisioned for this purpose of use. Includes override of organizational provisioning policies and may include override of subject of care consent directive restricting access.\r\n *  ERTREAT (emergency room treatment): To perform one or more operations on information for provision of immediately needed health care for an emergent condition in an emergency room or similar emergent care context by end users provisioned for this purpose, which does not constitute as policy override such as in a \"Break the Glass\" purpose of use.\r\n *  THREAT (threat): To perform one or more operations on information used to prevent injury or disease to living subjects who may be the target of violence.\r\n *  DISASTER (disaster): To perform one or more operations on information used for provision of immediately needed health care to a population of living subjects located in a disaster zone.\r\n\r\nMap: An \"emergency only\" consent directive maps to ISO/TS 17975:2015(E) 5.13 Exceptional access"
* #EMRGONLY ^property[0].code = #status
* #EMRGONLY ^property[=].valueCode = #active
* #EMRGONLY ^property[+].code = #internalId
* #EMRGONLY ^property[=].valueCode = #23325
* #EMRGONLY ^property[+].code = #subsumedBy
* #EMRGONLY ^property[=].valueCode = #_ActConsentDirective
* #GRANTORCHOICE "grantor choice" "A grantor's terms of agreement to which a grantee may assent or dissent, and which may include an opportunity for a grantee to request restrictions or extensions.\r\n\r\n*Comment:* A grantor typically is able to stipulate preferred terms of agreement when the grantor has control over the topic of the agreement, which a grantee must accept in full or may be offered an opportunity to extend or restrict certain terms.\r\n\r\n*Usage Note:* If the grantor's term of agreement must be accepted in full, then this is considered \"basic consent\". If a grantee is offered an opportunity to extend or restrict certain terms, then the agreement is considered \"granular consent\".\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: A PHR account holder \\[grantor\\] may require any PHR user \\[grantee\\] to accept the terms of agreement in full, or may permit a PHR user to extend or restrict terms selected by the account holder or requested by the PHR user.\r\n *  Non-healthcare: The owner of a resource server \\[grantor\\] may require any authorization server \\[grantee\\] to meet authorization requirements stipulated in the grantor's terms of agreement."
* #GRANTORCHOICE ^property[0].code = #status
* #GRANTORCHOICE ^property[=].valueCode = #active
* #GRANTORCHOICE ^property[+].code = #internalId
* #GRANTORCHOICE ^property[=].valueCode = #23754
* #GRANTORCHOICE ^property[+].code = #subsumedBy
* #GRANTORCHOICE ^property[=].valueCode = #_ActConsentDirective
* #GRANTORCHOICE ^property[+].code = #subsumedBy
* #GRANTORCHOICE ^property[=].valueCode = #_ActDecision
* #IMPLIED "implied consent" "A grantor's presumed assent to the grantee's terms of agreement is based on the grantor's behavior, which may result from not expressly assenting to the consent directive offered, or from having no right to assent or dissent offered by the grantee.\r\n\r\n*Comment:* Implied or \"implicit\" consent occurs when the behavior of the grantor is understood by a reasonable person to signal agreement to the grantee's terms.\r\n\r\n*Usage Note:* Implied consent with no opportunity to assent or dissent to certain terms is considered \"basic consent\".\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: A patient schedules an appointment with a provider, and either does not take the opportunity to expressly assent or dissent to the provider's consent directive, does not have an opportunity to do so, as in the case where emergency care is required, or simply behaves as though the patient \\[grantor\\] agrees to the rights granted to the provider \\[grantee\\] in an implicit consent directive.\r\n *  An injured and unconscious patient is deemed to have assented to emergency treatment by those permitted to do so under jurisdictional laws, e.g., Good Samaritan laws.\r\n *  Non-healthcare: Upon receiving a driver's license, the driver is deemed to have assented without explicitly consenting to undergoing field sobriety tests.\r\n *  A corporation that does business in a foreign nation is deemed to have deemed to have assented without explicitly consenting to abide by that nation's laws."
* #IMPLIED ^property[0].code = #status
* #IMPLIED ^property[=].valueCode = #active
* #IMPLIED ^property[+].code = #internalId
* #IMPLIED ^property[=].valueCode = #23755
* #IMPLIED ^property[+].code = #subsumedBy
* #IMPLIED ^property[=].valueCode = #_ActConsentDirective
* #IMPLIED ^property[+].code = #subsumedBy
* #IMPLIED ^property[=].valueCode = #_ActDecision
* #IMPLIEDD "implied consent with opportunity to dissent" "A grantor's presumed assent to the grantee's terms of agreement, which is based on the grantor's behavior, and includes a right to dissent to certain terms.\r\n\r\n*Comment:* A grantor assenting to the grantee's terms of agreement may or may not exercise a right to dissent to grantor selected terms or to grantee's selected terms to which a grantor may dissent.\r\n\r\n*Usage Note:* Implied or \"implicit\" consent with an \"opportunity to dissent\" occurs when the grantor's behavior is understood by a reasonable person to signal assent to the grantee's terms of agreement whether the grantor requests or the grantee approves further restrictions, is considered \"granular consent\".\r\n\r\n**Examples:** \r\n\r\n *  Healthcare Examples: A healthcare provider deems a patient's assent to disclosure of health information to family members and friends, but offers an opportunity or permits the patient to dissent to such disclosures.\r\n *  A health information exchanges deems a patient to have assented to disclosure of health information for treatment purposes, but offers the patient an opportunity to dissents to disclosure to particular provider organizations.\r\n *  Non-healthcare Examples: A bank deems a banking customer's assent to specified collection, access, use, or disclosure of financial information as a requirement of holding a bank account, but provides the user an opportunity to limit third-party collection, access, use or disclosure of that information for marketing purposes."
* #IMPLIEDD ^property[0].code = #status
* #IMPLIEDD ^property[=].valueCode = #active
* #IMPLIEDD ^property[+].code = #internalId
* #IMPLIEDD ^property[=].valueCode = #23756
* #IMPLIEDD ^property[+].code = #subsumedBy
* #IMPLIEDD ^property[=].valueCode = #_ActConsentDirective
* #IMPLIEDD ^property[+].code = #subsumedBy
* #IMPLIEDD ^property[=].valueCode = #_ActDecision
* #NOCONSENT "no consent" "No notification or opportunity is provided for a grantor to assent or dissent to a grantee's terms of agreement.\r\n\r\n*Comment:* A \"No Consent\" policy scheme provides no opportunity for accommodation of an individual's preferences, and may not comply with Fair Information Practice Principles \\[FIPP\\] by enabling the data subject to object, access collected information, correct errors, or have accounting of disclosures.\r\n\r\n*Usage Note:* The grantee's terms of agreement, may be available to the grantor by reviewing the grantee's privacy policies, but there is no notice by which a grantor is apprised of the policy directly or able to acknowledge.\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: Without notification or an opportunity to assent or dissent, a patient's health information is automatically included in and available (often according to certain rules) through a health information exchange. Note that this differs from implied consent, where the patient is assumed to have consented.\r\n *  Without notification or an opportunity to assent or dissent, a patient's health information is collected, accessed, used, or disclosed for research, public health, security, fraud prevention, court order, or law enforcement.\r\n *  Non-healthcare: Without notification or an opportunity to assent or dissent, a consumer's healthcare or non-healthcare internet searches are aggregated for secondary uses such as behavioral tracking and profiling.\r\n *  Without notification or an opportunity to assent or dissent, a consumer's location and activities in a shopping mall are tracked by RFID tags on purchased items."
* #NOCONSENT ^property[0].code = #status
* #NOCONSENT ^property[=].valueCode = #active
* #NOCONSENT ^property[+].code = #internalId
* #NOCONSENT ^property[=].valueCode = #23757
* #NOCONSENT ^property[+].code = #subsumedBy
* #NOCONSENT ^property[=].valueCode = #_ActConsentDirective
* #NOCONSENT ^property[+].code = #subsumedBy
* #NOCONSENT ^property[=].valueCode = #_ActDecision
* #NOPP "notice of privacy practices" "An implied privacy consent directive or notification, which the data subject may or may not acknowledge. The notification specifies permitted actions, which may include access, use, or disclosure of any and all personal information. The notification specifies the scope of personal information, which may include de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, that may be used to identify an individual in a registry or repository. The notification specifies the purposes for which personal information may be used such as treatment, payment, operations, research, information exchange, public health, disaster, quality and safety reporting; as required by law including court order, law enforcement, national security, military authorities; and for data analytics, marketing, and profiling.\r\n\r\n*Usage Notes:* Map: An \"implied\" consent directive maps to ISO/TS 17975:2015(E) definition forImplied: Consent to Collect, Use and Disclose personal health information is implied by the actions or inactions of the individual and the circumstances under which it was implied\"."
* #NOPP ^property[0].code = #status
* #NOPP ^property[=].valueCode = #active
* #NOPP ^property[+].code = #HL7usageNotes
* #NOPP ^property[=].valueString = "Map: An \"implied\" consent directive maps to ISO/TS 17975:2015(E) definition forImplied: Consent to Collect, Use and Disclose personal health information is implied by the actions or inactions of the individual and the circumstances under which it was implied\"."
* #NOPP ^property[+].code = #internalId
* #NOPP ^property[=].valueCode = #23370
* #NOPP ^property[+].code = #subsumedBy
* #NOPP ^property[=].valueCode = #_ActConsentDirective
* #OPTIN "opt-in" "A grantor's assent to the terms of an agreement offered by a grantee without an opportunity for to dissent to any terms.\r\n\r\n*Comment:* Acceptance of a grantee's terms pertaining, for example, to permissible activities, purposes of use, handling caveats, expiry date, and revocation policies.\r\n\r\n*Usage Note:* Opt-in with no opportunity for a grantor to restrict certain permissions sought by the grantee is considered \"basic consent\".\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: A patient \\[grantor\\] signs a provider's \\[grantee's\\] consent directive form, which lists permissible collection, access, use, or disclosure activities, purposes of use, handling caveats, and revocation policies.\r\n *  Non-healthcare: An employee \\[grantor\\] signs an employer's \\[grantee's\\] non-disclosure and non-compete agreement."
* #OPTIN ^property[0].code = #status
* #OPTIN ^property[=].valueCode = #active
* #OPTIN ^property[+].code = #internalId
* #OPTIN ^property[=].valueCode = #23326
* #OPTIN ^property[+].code = #subsumedBy
* #OPTIN ^property[=].valueCode = #_ActConsentDirective
* #OPTIN ^property[+].code = #subsumedBy
* #OPTIN ^property[=].valueCode = #_ActDecision
* #OPTINR "opt-in with restrictions" "A grantor's assent to the grantee's terms of an agreement with an opportunity for to dissent to certain grantor or grantee selected terms.\r\n\r\n*Comment:* A grantor dissenting to the grantee's terms of agreement may or may not exercise a right to assent to grantor's pre-approved restrictions or to grantee's selected terms to which a grantor may dissent.\r\n\r\n*Usage Note:* Opt-in with restrictions is considered \"granular consent\" because the grantor has an opportunity to narrow the permissions sought by the grantee.\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: A patient assent to grantee's consent directive terms for collection, access, use, or disclosure of health information, and dissents to disclosure to certain recipients as allowed by the provider's pre-approved restriction list.\r\n *  Non-Healthcare: A cell phone user assents to the cell phone's privacy practices and terms of use, but dissents from location tracking by turning off the cell phone's tracking capability."
* #OPTINR ^property[0].code = #status
* #OPTINR ^property[=].valueCode = #active
* #OPTINR ^property[+].code = #internalId
* #OPTINR ^property[=].valueCode = #23758
* #OPTINR ^property[+].code = #subsumedBy
* #OPTINR ^property[=].valueCode = #_ActConsentDirective
* #OPTINR ^property[+].code = #subsumedBy
* #OPTINR ^property[=].valueCode = #_ActDecision
* #OPTOUT "op-out" "A grantor's dissent to the terms of agreement offered by a grantee without an opportunity for to assent to any terms.\r\n\r\n*Comment:* Rejection of a grantee's terms of agreement pertaining, for example, to permissible activities, purposes of use, handling caveats, expiry date, and revocation policies.\r\n\r\n*Usage Note:* Opt-out with no opportunity for a grantor to permit certain permissions sought by the grantee is considered \"basic consent\".\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: A patient \\[grantor\\] declines to sign a provider's \\[grantee's\\] consent directive form, which lists permissible collection, access, use, or disclosure activities, purposes of use, handling caveats, revocation policies, and consequences of not assenting.\r\n *  Non-healthcare: An employee \\[grantor\\] refuses to sign an employer's \\[grantee's\\] agreement not to join unions or participate in a strike where state law protects employee's collective bargaining rights.\r\n *  A citizen \\[grantor\\] refuses to enroll in mandatory government \\[grantee\\] health insurance based on religious beliefs, which is an exemption."
* #OPTOUT ^property[0].code = #status
* #OPTOUT ^property[=].valueCode = #active
* #OPTOUT ^property[+].code = #internalId
* #OPTOUT ^property[=].valueCode = #23327
* #OPTOUT ^property[+].code = #subsumedBy
* #OPTOUT ^property[=].valueCode = #_ActConsentDirective
* #OPTOUT ^property[+].code = #subsumedBy
* #OPTOUT ^property[=].valueCode = #_ActDecision
* #OPTOUTE "opt-out with exceptions" "A grantor's dissent to the grantee's terms of agreement except for certain grantor or grantee selected terms.\r\n\r\n*Comment:* A rejection of a grantee's terms of agreement while assenting to certain permissions sought by the grantee or requesting approval of additional grantor terms.\r\n\r\n*Usage Note:* Opt-out with exceptions is considered a \"granular consent\" because the grantor has an opportunity to accept certain permissions sought by the grantee or request additional grantor terms, while rejecting other grantee terms.\r\n\r\n**Examples:** \r\n\r\n *  Healthcare: A patient \\[grantor\\] dissents to a health information exchange consent directive with the exception of disclosure based on a limited \"time to live\" shared secret \\[e.g., a token or password\\], which the patient can give to a provider when seeking care.\r\n *  Non-healthcare: A social media user \\[grantor\\] dissents from public access to their account, but assents to access to a circle of friends."
* #OPTOUTE ^property[0].code = #status
* #OPTOUTE ^property[=].valueCode = #active
* #OPTOUTE ^property[+].code = #internalId
* #OPTOUTE ^property[=].valueCode = #23759
* #OPTOUTE ^property[+].code = #subsumedBy
* #OPTOUTE ^property[=].valueCode = #_ActConsentDirective
* #OPTOUTE ^property[+].code = #subsumedBy
* #OPTOUTE ^property[=].valueCode = #_ActDecision
* #ICOL "information collection" "**Definition:** Consent to have healthcare information collected in an electronic health record. This entails that the information may be used in analysis, modified, updated."
* #ICOL ^property[0].code = #status
* #ICOL ^property[=].valueCode = #active
* #ICOL ^property[+].code = #internalId
* #ICOL ^property[=].valueCode = #22203
* #ICOL ^property[+].code = #subsumedBy
* #ICOL ^property[=].valueCode = #_ActConsentType
* #IDSCL "information disclosure" "**Definition:** Consent to have collected healthcare information disclosed."
* #IDSCL ^property[0].code = #status
* #IDSCL ^property[=].valueCode = #active
* #IDSCL ^property[+].code = #internalId
* #IDSCL ^property[=].valueCode = #22204
* #IDSCL ^property[+].code = #subsumedBy
* #IDSCL ^property[=].valueCode = #_ActConsentType
* #INFA "information access" "**Definition:** Consent to access healthcare information."
* #INFA ^property[0].code = #status
* #INFA ^property[=].valueCode = #active
* #INFA ^property[+].code = #internalId
* #INFA ^property[=].valueCode = #22200
* #INFA ^property[+].code = #subsumedBy
* #INFA ^property[=].valueCode = #_ActConsentType
* #IRDSCL "information redisclosure" "**Definition:** Information re-disclosed without the patient's consent."
* #IRDSCL ^property[0].code = #status
* #IRDSCL ^property[=].valueCode = #active
* #IRDSCL ^property[+].code = #internalId
* #IRDSCL ^property[=].valueCode = #22205
* #IRDSCL ^property[+].code = #subsumedBy
* #IRDSCL ^property[=].valueCode = #_ActConsentType
* #RESEARCH "research information access" "**Definition:** Consent to have healthcare information in an electronic health record accessed for research purposes."
* #RESEARCH ^property[0].code = #status
* #RESEARCH ^property[=].valueCode = #active
* #RESEARCH ^property[+].code = #internalId
* #RESEARCH ^property[=].valueCode = #22206
* #RESEARCH ^property[+].code = #subsumedBy
* #RESEARCH ^property[=].valueCode = #_ActConsentType
* #ID "Identified" "Used by one system to inform another that it has received a container."
* #ID ^property[0].code = #status
* #ID ^property[=].valueCode = #active
* #ID ^property[+].code = #internalId
* #ID ^property[=].valueCode = #14059
* #ID ^property[+].code = #subsumedBy
* #ID ^property[=].valueCode = #_ActContainerRegistrationCode
* #IP "In Position" "Used by one system to inform another that the container is in position for specimen transfer (e.g., container removal from track, pipetting, etc.)."
* #IP ^property[0].code = #status
* #IP ^property[=].valueCode = #active
* #IP ^property[+].code = #internalId
* #IP ^property[=].valueCode = #14060
* #IP ^property[+].code = #subsumedBy
* #IP ^property[=].valueCode = #_ActContainerRegistrationCode
* #L "Left Equipment" "Used by one system to inform another that the container has been released from that system."
* #L ^property[0].code = #status
* #L ^property[=].valueCode = #active
* #L ^property[+].code = #internalId
* #L ^property[=].valueCode = #14063
* #L ^property[+].code = #subsumedBy
* #L ^property[=].valueCode = #_ActContainerRegistrationCode
* #M "Missing" "Used by one system to inform another that the container did not arrive at its next expected location."
* #M ^property[0].code = #status
* #M ^property[=].valueCode = #active
* #M ^property[+].code = #internalId
* #M ^property[=].valueCode = #14064
* #M ^property[+].code = #subsumedBy
* #M ^property[=].valueCode = #_ActContainerRegistrationCode
* #O "In Process" "Used by one system to inform another that the specific container is being processed by the equipment. It is useful as a response to a query about Container Status, when the specific step of the process is not relevant."
* #O ^property[0].code = #status
* #O ^property[=].valueCode = #active
* #O ^property[+].code = #internalId
* #O ^property[=].valueCode = #14061
* #O ^property[+].code = #subsumedBy
* #O ^property[=].valueCode = #_ActContainerRegistrationCode
* #R "Process Completed" "Status is used by one system to inform another that the processing has been completed, but the container has not been released from that system."
* #R ^property[0].code = #status
* #R ^property[=].valueCode = #active
* #R ^property[+].code = #internalId
* #R ^property[=].valueCode = #14062
* #R ^property[+].code = #subsumedBy
* #R ^property[=].valueCode = #_ActContainerRegistrationCode
* #X "Container Unavailable" "Used by one system to inform another that the container is no longer available within the scope of the system (e.g., tube broken or discarded)."
* #X ^property[0].code = #status
* #X ^property[=].valueCode = #active
* #X ^property[+].code = #internalId
* #X ^property[=].valueCode = #14065
* #X ^property[+].code = #subsumedBy
* #X ^property[=].valueCode = #_ActContainerRegistrationCode
* #AUTO "auto-repeat permission" "Specifies whether or not automatic repeat testing is to be initiated on specimens."
* #AUTO ^property[0].code = #status
* #AUTO ^property[=].valueCode = #active
* #AUTO ^property[+].code = #internalId
* #AUTO ^property[=].valueCode = #16860
* #AUTO ^property[+].code = #subsumedBy
* #AUTO ^property[=].valueCode = #_ActControlVariable
* #ENDC "endogenous content" "A baseline value for the measured test that is inherently contained in the diluent. In the calculation of the actual result for the measured test, this baseline value is normally considered."
* #ENDC ^property[0].code = #status
* #ENDC ^property[=].valueCode = #active
* #ENDC ^property[+].code = #internalId
* #ENDC ^property[=].valueCode = #16858
* #ENDC ^property[+].code = #subsumedBy
* #ENDC ^property[=].valueCode = #_ActControlVariable
* #REFLEX "reflex permission" "Specifies whether or not further testing may be automatically or manually initiated on specimens."
* #REFLEX ^property[0].code = #status
* #REFLEX ^property[=].valueCode = #active
* #REFLEX ^property[+].code = #internalId
* #REFLEX ^property[=].valueCode = #16859
* #REFLEX ^property[+].code = #subsumedBy
* #REFLEX ^property[=].valueCode = #_ActControlVariable
* #_ECGControlVariable "ECGControlVariable"
* #_ECGControlVariable ^property[0].code = #notSelectable
* #_ECGControlVariable ^property[=].valueBoolean = true
* #_ECGControlVariable ^property[+].code = #status
* #_ECGControlVariable ^property[=].valueCode = #retired
* #_ECGControlVariable ^property[+].code = #internalId
* #_ECGControlVariable ^property[=].valueCode = #20916
* #_ECGControlVariable ^property[+].code = #subsumedBy
* #_ECGControlVariable ^property[=].valueCode = #_ActControlVariable
* #AUTH "Authorized" "Authorization approved and funds have been set aside to pay for specified healthcare service(s) and/or product(s) within defined criteria for the authorization."
* #AUTH ^property[0].code = #status
* #AUTH ^property[=].valueCode = #active
* #AUTH ^property[+].code = #internalId
* #AUTH ^property[=].valueCode = #17492
* #AUTH ^property[+].code = #subsumedBy
* #AUTH ^property[=].valueCode = #_ActCoverageAuthorizationConfirmationCode
* #NAUTH "Not Authorized" "Authorization for specified healthcare service(s) and/or product(s) denied."
* #NAUTH ^property[0].code = #status
* #NAUTH ^property[=].valueCode = #active
* #NAUTH ^property[+].code = #internalId
* #NAUTH ^property[=].valueCode = #17493
* #NAUTH ^property[+].code = #subsumedBy
* #NAUTH ^property[=].valueCode = #_ActCoverageAuthorizationConfirmationCode
* #_ActCoverageAuthorizationConfirmationCode "ActCoverageAuthorizationConfirmationCode" "Indication of authorization for healthcare service(s) and/or product(s). If authorization is approved, funds are set aside."
* #_ActCoverageAuthorizationConfirmationCode ^property[0].code = #notSelectable
* #_ActCoverageAuthorizationConfirmationCode ^property[=].valueBoolean = true
* #_ActCoverageAuthorizationConfirmationCode ^property[+].code = #status
* #_ActCoverageAuthorizationConfirmationCode ^property[=].valueCode = #active
* #_ActCoverageAuthorizationConfirmationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCoverageAuthorizationConfirmationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCoverageAuthorizationConfirmationCode ^property[=].valueCoding = $v3-ActClass#COV
* #_ActCoverageAuthorizationConfirmationCode ^property[+].code = #internalId
* #_ActCoverageAuthorizationConfirmationCode ^property[=].valueCode = #20862
* #_ActCoverageAuthorizationConfirmationCode ^property[+].code = #subsumedBy
* #_ActCoverageAuthorizationConfirmationCode ^property[=].valueCode = #_ActCoverageConfirmationCode
* #_ActCoverageEligibilityConfirmationCode "ActCoverageEligibilityConfirmationCode" "Indication of eligibility coverage for healthcare service(s) and/or product(s)."
* #_ActCoverageEligibilityConfirmationCode ^property[0].code = #notSelectable
* #_ActCoverageEligibilityConfirmationCode ^property[=].valueBoolean = true
* #_ActCoverageEligibilityConfirmationCode ^property[+].code = #status
* #_ActCoverageEligibilityConfirmationCode ^property[=].valueCode = #retired
* #_ActCoverageEligibilityConfirmationCode ^property[+].code = #internalId
* #_ActCoverageEligibilityConfirmationCode ^property[=].valueCode = #20864
* #_ActCoverageEligibilityConfirmationCode ^property[+].code = #subsumedBy
* #_ActCoverageEligibilityConfirmationCode ^property[=].valueCode = #_ActCoverageConfirmationCode
* #ELG "Eligible" "Insurance coverage is in effect for healthcare service(s) and/or product(s)."
* #ELG ^property[0].code = #status
* #ELG ^property[=].valueCode = #retired
* #ELG ^property[+].code = #internalId
* #ELG ^property[=].valueCode = #17489
* #ELG ^property[+].code = #subsumedBy
* #ELG ^property[=].valueCode = #_ActCoverageEligibilityConfirmationCode
* #NELG "Not Eligible" "Insurance coverage is not in effect for healthcare service(s) and/or product(s). May optionally include reasons for the ineligibility."
* #NELG ^property[0].code = #status
* #NELG ^property[=].valueCode = #retired
* #NELG ^property[+].code = #internalId
* #NELG ^property[=].valueCode = #17490
* #NELG ^property[+].code = #subsumedBy
* #NELG ^property[=].valueCode = #_ActCoverageEligibilityConfirmationCode
* #_ActCoverageQuantityLimitCode "ActCoverageQuantityLimitCode" "Maximum amount paid or maximum number of services/products covered; or maximum amount or number covered during a specified time period under the policy or program."
* #_ActCoverageQuantityLimitCode ^property[0].code = #notSelectable
* #_ActCoverageQuantityLimitCode ^property[=].valueBoolean = true
* #_ActCoverageQuantityLimitCode ^property[+].code = #status
* #_ActCoverageQuantityLimitCode ^property[=].valueCode = #active
* #_ActCoverageQuantityLimitCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCoverageQuantityLimitCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCoverageQuantityLimitCode ^property[=].valueCoding = $v3-ActClass#COV
* #_ActCoverageQuantityLimitCode ^property[+].code = #internalId
* #_ActCoverageQuantityLimitCode ^property[=].valueCode = #22342
* #_ActCoverageQuantityLimitCode ^property[+].code = #subsumedBy
* #_ActCoverageQuantityLimitCode ^property[=].valueCode = #_ActCoverageLimitCode
* #COVMX "coverage maximum" "**Definition:** Codes representing the maximum coverate or financial participation requirements."
* #COVMX ^property[0].code = #status
* #COVMX ^property[=].valueCode = #active
* #COVMX ^property[+].code = #internalId
* #COVMX ^property[=].valueCode = #22239
* #COVMX ^property[+].code = #subsumedBy
* #COVMX ^property[=].valueCode = #_ActCoverageLimitCode
* #_ActCoveredPartyLimitCode "ActCoveredPartyLimitCode" "Codes representing the types of covered parties that may receive covered benefits under a policy or program."
* #_ActCoveredPartyLimitCode ^property[0].code = #notSelectable
* #_ActCoveredPartyLimitCode ^property[=].valueBoolean = true
* #_ActCoveredPartyLimitCode ^property[+].code = #status
* #_ActCoveredPartyLimitCode ^property[=].valueCode = #retired
* #_ActCoveredPartyLimitCode ^property[+].code = #internalId
* #_ActCoveredPartyLimitCode ^property[=].valueCode = #22344
* #_ActCoveredPartyLimitCode ^property[+].code = #subsumedBy
* #_ActCoveredPartyLimitCode ^property[=].valueCode = #_ActCoverageLimitCode
* #COVPRD "coverage period" "Codes representing the time period during which coverage is available; or financial participation requirements are in effect."
* #COVPRD ^property[0].code = #status
* #COVPRD ^property[=].valueCode = #active
* #COVPRD ^property[+].code = #internalId
* #COVPRD ^property[=].valueCode = #22343
* #COVPRD ^property[+].code = #subsumedBy
* #COVPRD ^property[=].valueCode = #_ActCoverageQuantityLimitCode
* #LFEMX "life time maximum" "**Definition:** Maximum amount paid by payer or covered party; or maximum number of services or products covered under the policy or program during a covered party's lifetime."
* #LFEMX ^property[0].code = #status
* #LFEMX ^property[=].valueCode = #active
* #LFEMX ^property[+].code = #internalId
* #LFEMX ^property[=].valueCode = #22240
* #LFEMX ^property[+].code = #subsumedBy
* #LFEMX ^property[=].valueCode = #_ActCoverageQuantityLimitCode
* #LFEMX ^property[+].code = #subsumedBy
* #LFEMX ^property[=].valueCode = #COVMX
* #NETAMT "Net Amount" "Maximum net amount that will be covered for the product or service specified."
* #NETAMT ^property[0].code = #status
* #NETAMT ^property[=].valueCode = #active
* #NETAMT ^property[+].code = #internalId
* #NETAMT ^property[=].valueCode = #17497
* #NETAMT ^property[+].code = #subsumedBy
* #NETAMT ^property[=].valueCode = #_ActCoverageQuantityLimitCode
* #PRDMX "period maximum" "**Definition:** Maximum amount paid by payer or covered party; or maximum number of services/products covered under the policy or program by time period specified by the effective time on the act."
* #PRDMX ^property[0].code = #status
* #PRDMX ^property[=].valueCode = #active
* #PRDMX ^property[+].code = #internalId
* #PRDMX ^property[=].valueCode = #22241
* #PRDMX ^property[+].code = #subsumedBy
* #PRDMX ^property[=].valueCode = #_ActCoverageQuantityLimitCode
* #PRDMX ^property[+].code = #subsumedBy
* #PRDMX ^property[=].valueCode = #COVMX
* #UNITPRICE "Unit Price" "Maximum unit price that will be covered for the authorized product or service."
* #UNITPRICE ^property[0].code = #status
* #UNITPRICE ^property[=].valueCode = #active
* #UNITPRICE ^property[+].code = #internalId
* #UNITPRICE ^property[=].valueCode = #17499
* #UNITPRICE ^property[+].code = #subsumedBy
* #UNITPRICE ^property[=].valueCode = #_ActCoverageQuantityLimitCode
* #UNITQTY "Unit Quantity" "Maximum number of items that will be covered of the product or service specified."
* #UNITQTY ^property[0].code = #status
* #UNITQTY ^property[=].valueCode = #active
* #UNITQTY ^property[+].code = #internalId
* #UNITQTY ^property[=].valueCode = #17498
* #UNITQTY ^property[+].code = #subsumedBy
* #UNITQTY ^property[=].valueCode = #_ActCoverageQuantityLimitCode
* #_ActInsurancePolicyCode "ActInsurancePolicyCode" "Set of codes indicating the type of insurance policy or other source of funds to cover healthcare costs."
* #_ActInsurancePolicyCode ^property[0].code = #notSelectable
* #_ActInsurancePolicyCode ^property[=].valueBoolean = true
* #_ActInsurancePolicyCode ^property[+].code = #status
* #_ActInsurancePolicyCode ^property[=].valueCode = #active
* #_ActInsurancePolicyCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInsurancePolicyCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInsurancePolicyCode ^property[=].valueCoding = $v3-ActClass#POLICY
* #_ActInsurancePolicyCode ^property[+].code = #internalId
* #_ActInsurancePolicyCode ^property[=].valueCode = #20874
* #_ActInsurancePolicyCode ^property[+].code = #subsumedBy
* #_ActInsurancePolicyCode ^property[=].valueCode = #_ActCoverageTypeCode
* #_ActInsuranceTypeCode "ActInsuranceTypeCode" "**Definition:** Set of codes indicating the type of insurance policy. Insurance, in law and economics, is a form of risk management primarily used to hedge against the risk of potential financial loss. Insurance is defined as the equitable transfer of the risk of a potential loss, from one entity to another, in exchange for a premium and duty of care. A policy holder is an individual or an organization enters into a contract with an underwriter which stipulates that, in exchange for payment of a sum of money (a premium), one or more covered parties (insureds) is guaranteed compensation for losses resulting from certain perils under specified conditions. The underwriter analyzes the risk of loss, makes a decision as to whether the risk is insurable, and prices the premium accordingly. A policy provides benefits that indemnify or cover the cost of a loss incurred by a covered party, and may include coverage for services required to remediate a loss. An insurance policy contains pertinent facts about the policy holder, the insurance coverage, the covered parties, and the insurer. A policy may include exemptions and provisions specifying the extent to which the indemnification clause cannot be enforced for intentional tortious conduct of a covered party, e.g., whether the covered parties are jointly or severably insured.\r\n\r\n*Discussion:* In contrast to programs, an insurance policy has one or more policy holders, who own the policy. The policy holder may be the covered party, a relative of the covered party, a partnership, or a corporation, e.g., an employer. A subscriber of a self-insured health insurance policy is a policy holder. A subscriber of an employer sponsored health insurance policy is holds a certificate of coverage, but is not a policy holder; the policy holder is the employer. See CoveredRoleType."
* #_ActInsuranceTypeCode ^property[0].code = #notSelectable
* #_ActInsuranceTypeCode ^property[=].valueBoolean = true
* #_ActInsuranceTypeCode ^property[+].code = #status
* #_ActInsuranceTypeCode ^property[=].valueCode = #active
* #_ActInsuranceTypeCode ^property[+].code = #internalId
* #_ActInsuranceTypeCode ^property[=].valueCode = #22097
* #_ActInsuranceTypeCode ^property[+].code = #subsumedBy
* #_ActInsuranceTypeCode ^property[=].valueCode = #_ActCoverageTypeCode
* #_ActProgramTypeCode "ActProgramTypeCode" "**Definition:** A set of codes used to indicate coverage under a program. A program is an organized structure for administering and funding coverage of a benefit package for covered parties meeting eligibility criteria, typically related to employment, health, financial, and demographic status. Programs are typically established or permitted by legislation with provisions for ongoing government oversight. Regulations may mandate the structure of the program, the manner in which it is funded and administered, covered benefits, provider types, eligibility criteria and financial participation. A government agency may be charged with implementing the program in accordance to the regulation. Risk of loss under a program in most cases would not meet what an underwriter would consider an insurable risk, i.e., the risk is not random in nature, not financially measurable, and likely requires subsidization with government funds.\r\n\r\n*Discussion:* Programs do not have policy holders or subscribers. Program eligibles are enrolled based on health status, statutory eligibility, financial status, or age. Program eligibles who are covered parties under the program may be referred to as members, beneficiaries, eligibles, or recipients. Programs risk are underwritten by not for profit organizations such as governmental entities, and the beneficiaries typically do not pay for any or some portion of the cost of coverage. See CoveredPartyRoleType."
* #_ActProgramTypeCode ^property[0].code = #notSelectable
* #_ActProgramTypeCode ^property[=].valueBoolean = true
* #_ActProgramTypeCode ^property[+].code = #status
* #_ActProgramTypeCode ^property[=].valueCode = #active
* #_ActProgramTypeCode ^property[+].code = #internalId
* #_ActProgramTypeCode ^property[=].valueCode = #22098
* #_ActProgramTypeCode ^property[+].code = #subsumedBy
* #_ActProgramTypeCode ^property[=].valueCode = #_ActCoverageTypeCode
* #_ActCoveragePartyLimitGroupCode "ActCoveragePartyLimitGroupCode" "Codes representing the level of coverage provided under the policy or program in terms of the types of entities that may play covered parties based on their personal relationships or employment status."
* #_ActCoveragePartyLimitGroupCode ^property[0].code = #notSelectable
* #_ActCoveragePartyLimitGroupCode ^property[=].valueBoolean = true
* #_ActCoveragePartyLimitGroupCode ^property[+].code = #status
* #_ActCoveragePartyLimitGroupCode ^property[=].valueCode = #retired
* #_ActCoveragePartyLimitGroupCode ^property[+].code = #internalId
* #_ActCoveragePartyLimitGroupCode ^property[=].valueCode = #22345
* #_ActCoveragePartyLimitGroupCode ^property[+].code = #subsumedBy
* #_ActCoveragePartyLimitGroupCode ^property[=].valueCode = #_ActCoveredPartyLimitCode
* #_ActCredentialedCareProvisionPersonCode "act credentialed care provision peron" "**Description:**The type and scope of legal and/or professional responsibility taken-on by the performer of the Act for a specific subject of care as described by an agency for credentialing individuals."
* #_ActCredentialedCareProvisionPersonCode ^property[0].code = #notSelectable
* #_ActCredentialedCareProvisionPersonCode ^property[=].valueBoolean = true
* #_ActCredentialedCareProvisionPersonCode ^property[+].code = #status
* #_ActCredentialedCareProvisionPersonCode ^property[=].valueCode = #active
* #_ActCredentialedCareProvisionPersonCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCredentialedCareProvisionPersonCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCredentialedCareProvisionPersonCode ^property[=].valueCoding = $v3-ActClass#PCPR
* #_ActCredentialedCareProvisionPersonCode ^property[+].code = #internalId
* #_ActCredentialedCareProvisionPersonCode ^property[=].valueCode = #21827
* #_ActCredentialedCareProvisionPersonCode ^property[+].code = #subsumedBy
* #_ActCredentialedCareProvisionPersonCode ^property[=].valueCode = #_ActCredentialedCareCode
* #_ActCredentialedCareProvisionProgramCode "act credentialed care provision program" "**Description:**The type and scope of legal and/or professional responsibility taken-on by the performer of the Act for a specific subject of care as described by an agency for credentialing programs within organizations."
* #_ActCredentialedCareProvisionProgramCode ^property[0].code = #notSelectable
* #_ActCredentialedCareProvisionProgramCode ^property[=].valueBoolean = true
* #_ActCredentialedCareProvisionProgramCode ^property[+].code = #status
* #_ActCredentialedCareProvisionProgramCode ^property[=].valueCode = #active
* #_ActCredentialedCareProvisionProgramCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActCredentialedCareProvisionProgramCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActCredentialedCareProvisionProgramCode ^property[=].valueCoding = $v3-ActClass#PCPR
* #_ActCredentialedCareProvisionProgramCode ^property[+].code = #internalId
* #_ActCredentialedCareProvisionProgramCode ^property[=].valueCode = #21828
* #_ActCredentialedCareProvisionProgramCode ^property[+].code = #subsumedBy
* #_ActCredentialedCareProvisionProgramCode ^property[=].valueCode = #_ActCredentialedCareCode
* #CACC "certified anatomic pathology and clinical pathology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CACC ^property[0].code = #status
* #CACC ^property[=].valueCode = #active
* #CACC ^property[+].code = #internalId
* #CACC ^property[=].valueCode = #21848
* #CACC ^property[+].code = #subsumedBy
* #CACC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CAIC "certified allergy and immunology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CAIC ^property[0].code = #status
* #CAIC ^property[=].valueCode = #active
* #CAIC ^property[+].code = #internalId
* #CAIC ^property[=].valueCode = #21830
* #CAIC ^property[+].code = #subsumedBy
* #CAIC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CAMC "certified aerospace medicine care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CAMC ^property[0].code = #status
* #CAMC ^property[=].valueCode = #active
* #CAMC ^property[+].code = #internalId
* #CAMC ^property[=].valueCode = #21854
* #CAMC ^property[+].code = #subsumedBy
* #CAMC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CANC "certified anesthesiology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CANC ^property[0].code = #status
* #CANC ^property[=].valueCode = #active
* #CANC ^property[+].code = #internalId
* #CANC ^property[=].valueCode = #21831
* #CANC ^property[+].code = #subsumedBy
* #CANC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CAPC "certified anatomic pathology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CAPC ^property[0].code = #status
* #CAPC ^property[=].valueCode = #active
* #CAPC ^property[+].code = #internalId
* #CAPC ^property[=].valueCode = #21849
* #CAPC ^property[+].code = #subsumedBy
* #CAPC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CBGC "certified clinical biochemical genetics care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CBGC ^property[0].code = #status
* #CBGC ^property[=].valueCode = #active
* #CBGC ^property[+].code = #internalId
* #CBGC ^property[=].valueCode = #21837
* #CBGC ^property[+].code = #subsumedBy
* #CBGC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CCCC "certified clinical cytogenetics care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CCCC ^property[0].code = #status
* #CCCC ^property[=].valueCode = #active
* #CCCC ^property[+].code = #internalId
* #CCCC ^property[=].valueCode = #21838
* #CCCC ^property[+].code = #subsumedBy
* #CCCC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CCGC "certified clinical genetics (M.D.) care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CCGC ^property[0].code = #status
* #CCGC ^property[=].valueCode = #active
* #CCGC ^property[+].code = #internalId
* #CCGC ^property[=].valueCode = #21839
* #CCGC ^property[+].code = #subsumedBy
* #CCGC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CCPC "certified clinical pathology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CCPC ^property[0].code = #status
* #CCPC ^property[=].valueCode = #active
* #CCPC ^property[+].code = #internalId
* #CCPC ^property[=].valueCode = #21850
* #CCPC ^property[+].code = #subsumedBy
* #CCPC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CCSC "certified colon and rectal surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CCSC ^property[0].code = #status
* #CCSC ^property[=].valueCode = #active
* #CCSC ^property[+].code = #internalId
* #CCSC ^property[=].valueCode = #21832
* #CCSC ^property[+].code = #subsumedBy
* #CCSC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CDEC "certified dermatology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CDEC ^property[0].code = #status
* #CDEC ^property[=].valueCode = #active
* #CDEC ^property[+].code = #internalId
* #CDEC ^property[=].valueCode = #21833
* #CDEC ^property[+].code = #subsumedBy
* #CDEC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CDRC "certified diagnostic radiology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CDRC ^property[0].code = #status
* #CDRC ^property[=].valueCode = #active
* #CDRC ^property[+].code = #internalId
* #CDRC ^property[=].valueCode = #21860
* #CDRC ^property[+].code = #subsumedBy
* #CDRC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CEMC "certified emergency medicine care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CEMC ^property[0].code = #status
* #CEMC ^property[=].valueCode = #active
* #CEMC ^property[+].code = #internalId
* #CEMC ^property[=].valueCode = #21834
* #CEMC ^property[+].code = #subsumedBy
* #CEMC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CFPC "certified family practice care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CFPC ^property[0].code = #status
* #CFPC ^property[=].valueCode = #active
* #CFPC ^property[+].code = #internalId
* #CFPC ^property[=].valueCode = #21835
* #CFPC ^property[+].code = #subsumedBy
* #CFPC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CIMC "certified internal medicine care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CIMC ^property[0].code = #status
* #CIMC ^property[=].valueCode = #active
* #CIMC ^property[+].code = #internalId
* #CIMC ^property[=].valueCode = #21836
* #CIMC ^property[+].code = #subsumedBy
* #CIMC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CMGC "certified clinical molecular genetics care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CMGC ^property[0].code = #status
* #CMGC ^property[=].valueCode = #active
* #CMGC ^property[+].code = #internalId
* #CMGC ^property[=].valueCode = #21840
* #CMGC ^property[+].code = #subsumedBy
* #CMGC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CNEC "certified neurology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board"
* #CNEC ^property[0].code = #status
* #CNEC ^property[=].valueCode = #active
* #CNEC ^property[+].code = #internalId
* #CNEC ^property[=].valueCode = #21858
* #CNEC ^property[+].code = #subsumedBy
* #CNEC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CNMC "certified nuclear medicine care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CNMC ^property[0].code = #status
* #CNMC ^property[=].valueCode = #active
* #CNMC ^property[+].code = #internalId
* #CNMC ^property[=].valueCode = #21843
* #CNMC ^property[+].code = #subsumedBy
* #CNMC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CNQC "certified neurology with special qualifications in child neurology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CNQC ^property[0].code = #status
* #CNQC ^property[=].valueCode = #active
* #CNQC ^property[+].code = #internalId
* #CNQC ^property[=].valueCode = #21859
* #CNQC ^property[+].code = #subsumedBy
* #CNQC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CNSC "certified neurological surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CNSC ^property[0].code = #status
* #CNSC ^property[=].valueCode = #active
* #CNSC ^property[+].code = #internalId
* #CNSC ^property[=].valueCode = #21842
* #CNSC ^property[+].code = #subsumedBy
* #CNSC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #COGC "certified obstetrics and gynecology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #COGC ^property[0].code = #status
* #COGC ^property[=].valueCode = #active
* #COGC ^property[+].code = #internalId
* #COGC ^property[=].valueCode = #21844
* #COGC ^property[+].code = #subsumedBy
* #COGC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #COMC "certified occupational medicine care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #COMC ^property[0].code = #status
* #COMC ^property[=].valueCode = #active
* #COMC ^property[+].code = #internalId
* #COMC ^property[=].valueCode = #21855
* #COMC ^property[+].code = #subsumedBy
* #COMC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #COPC "certified ophthalmology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #COPC ^property[0].code = #status
* #COPC ^property[=].valueCode = #active
* #COPC ^property[+].code = #internalId
* #COPC ^property[=].valueCode = #21845
* #COPC ^property[+].code = #subsumedBy
* #COPC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #COSC "certified orthopaedic surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #COSC ^property[0].code = #status
* #COSC ^property[=].valueCode = #active
* #COSC ^property[+].code = #internalId
* #COSC ^property[=].valueCode = #21846
* #COSC ^property[+].code = #subsumedBy
* #COSC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #COTC "certified otolaryngology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #COTC ^property[0].code = #status
* #COTC ^property[=].valueCode = #active
* #COTC ^property[+].code = #internalId
* #COTC ^property[=].valueCode = #21847
* #COTC ^property[+].code = #subsumedBy
* #COTC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CPEC "certified pediatrics care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CPEC ^property[0].code = #status
* #CPEC ^property[=].valueCode = #active
* #CPEC ^property[+].code = #internalId
* #CPEC ^property[=].valueCode = #21851
* #CPEC ^property[+].code = #subsumedBy
* #CPEC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CPGC "certified Ph.D. medical genetics care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CPGC ^property[0].code = #status
* #CPGC ^property[=].valueCode = #active
* #CPGC ^property[+].code = #internalId
* #CPGC ^property[=].valueCode = #21841
* #CPGC ^property[+].code = #subsumedBy
* #CPGC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CPHC "certified public health and general preventive medicine care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CPHC ^property[0].code = #status
* #CPHC ^property[=].valueCode = #active
* #CPHC ^property[+].code = #internalId
* #CPHC ^property[=].valueCode = #21856
* #CPHC ^property[+].code = #subsumedBy
* #CPHC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CPRC "certified physical medicine and rehabilitation care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CPRC ^property[0].code = #status
* #CPRC ^property[=].valueCode = #active
* #CPRC ^property[+].code = #internalId
* #CPRC ^property[=].valueCode = #21852
* #CPRC ^property[+].code = #subsumedBy
* #CPRC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CPSC "certified plastic surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CPSC ^property[0].code = #status
* #CPSC ^property[=].valueCode = #active
* #CPSC ^property[+].code = #internalId
* #CPSC ^property[=].valueCode = #21853
* #CPSC ^property[+].code = #subsumedBy
* #CPSC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CPYC "certified psychiatry care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CPYC ^property[0].code = #status
* #CPYC ^property[=].valueCode = #active
* #CPYC ^property[+].code = #internalId
* #CPYC ^property[=].valueCode = #21857
* #CPYC ^property[+].code = #subsumedBy
* #CPYC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CROC "certified radiation oncology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CROC ^property[0].code = #status
* #CROC ^property[=].valueCode = #active
* #CROC ^property[+].code = #internalId
* #CROC ^property[=].valueCode = #21861
* #CROC ^property[+].code = #subsumedBy
* #CROC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CRPC "certified radiological physics care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CRPC ^property[0].code = #status
* #CRPC ^property[=].valueCode = #active
* #CRPC ^property[+].code = #internalId
* #CRPC ^property[=].valueCode = #21862
* #CRPC ^property[+].code = #subsumedBy
* #CRPC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CSUC "certified surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CSUC ^property[0].code = #status
* #CSUC ^property[=].valueCode = #active
* #CSUC ^property[+].code = #internalId
* #CSUC ^property[=].valueCode = #21863
* #CSUC ^property[+].code = #subsumedBy
* #CSUC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CTSC "certified thoracic surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CTSC ^property[0].code = #status
* #CTSC ^property[=].valueCode = #active
* #CTSC ^property[+].code = #internalId
* #CTSC ^property[=].valueCode = #21865
* #CTSC ^property[+].code = #subsumedBy
* #CTSC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CURC "certified urology care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CURC ^property[0].code = #status
* #CURC ^property[=].valueCode = #active
* #CURC ^property[+].code = #internalId
* #CURC ^property[=].valueCode = #21866
* #CURC ^property[+].code = #subsumedBy
* #CURC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #CVSC "certified vascular surgery care" "**Description:**Scope of responsibility taken on for specialty care as defined by the respective Specialty Board."
* #CVSC ^property[0].code = #status
* #CVSC ^property[=].valueCode = #active
* #CVSC ^property[+].code = #internalId
* #CVSC ^property[=].valueCode = #21864
* #CVSC ^property[+].code = #subsumedBy
* #CVSC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #LGPC "licensed general physician care" "**Description:**Scope of responsibility taken-on for physician care of a patient as defined by a governmental licensing agency."
* #LGPC ^property[0].code = #status
* #LGPC ^property[=].valueCode = #active
* #LGPC ^property[+].code = #internalId
* #LGPC ^property[=].valueCode = #21829
* #LGPC ^property[+].code = #subsumedBy
* #LGPC ^property[=].valueCode = #_ActCredentialedCareProvisionPersonCode
* #AALC "accredited assisted living care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #AALC ^property[0].code = #status
* #AALC ^property[=].valueCode = #active
* #AALC ^property[+].code = #internalId
* #AALC ^property[=].valueCode = #21868
* #AALC ^property[+].code = #subsumedBy
* #AALC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #AAMC "accredited ambulatory care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #AAMC ^property[0].code = #status
* #AAMC ^property[=].valueCode = #active
* #AAMC ^property[+].code = #internalId
* #AAMC ^property[=].valueCode = #21867
* #AAMC ^property[+].code = #subsumedBy
* #AAMC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #ABHC "accredited behavioral health care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #ABHC ^property[0].code = #status
* #ABHC ^property[=].valueCode = #active
* #ABHC ^property[+].code = #internalId
* #ABHC ^property[=].valueCode = #21869
* #ABHC ^property[+].code = #subsumedBy
* #ABHC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #ACAC "accredited critical access hospital care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #ACAC ^property[0].code = #status
* #ACAC ^property[=].valueCode = #active
* #ACAC ^property[+].code = #internalId
* #ACAC ^property[=].valueCode = #21870
* #ACAC ^property[+].code = #subsumedBy
* #ACAC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #ACHC "accredited hospital care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #ACHC ^property[0].code = #status
* #ACHC ^property[=].valueCode = #active
* #ACHC ^property[+].code = #internalId
* #ACHC ^property[=].valueCode = #21872
* #ACHC ^property[+].code = #subsumedBy
* #ACHC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #AHOC "accredited home care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #AHOC ^property[0].code = #status
* #AHOC ^property[=].valueCode = #active
* #AHOC ^property[+].code = #internalId
* #AHOC ^property[=].valueCode = #21871
* #AHOC ^property[+].code = #subsumedBy
* #AHOC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #ALTC "accredited long term care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #ALTC ^property[0].code = #status
* #ALTC ^property[=].valueCode = #active
* #ALTC ^property[+].code = #internalId
* #ALTC ^property[=].valueCode = #21873
* #ALTC ^property[+].code = #subsumedBy
* #ALTC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #AOSC "accredited office-based surgery care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the respective accreditation agency."
* #AOSC ^property[0].code = #status
* #AOSC ^property[=].valueCode = #active
* #AOSC ^property[+].code = #internalId
* #AOSC ^property[=].valueCode = #21874
* #AOSC ^property[+].code = #subsumedBy
* #AOSC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CACS "certified acute coronary syndrome care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CACS ^property[0].code = #status
* #CACS ^property[=].valueCode = #active
* #CACS ^property[+].code = #internalId
* #CACS ^property[=].valueCode = #21875
* #CACS ^property[+].code = #subsumedBy
* #CACS ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CAMI "certified acute myocardial infarction care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CAMI ^property[0].code = #status
* #CAMI ^property[=].valueCode = #active
* #CAMI ^property[+].code = #internalId
* #CAMI ^property[=].valueCode = #21876
* #CAMI ^property[+].code = #subsumedBy
* #CAMI ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CAST "certified asthma care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CAST ^property[0].code = #status
* #CAST ^property[=].valueCode = #active
* #CAST ^property[+].code = #internalId
* #CAST ^property[=].valueCode = #21877
* #CAST ^property[+].code = #subsumedBy
* #CAST ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CBAR "certified bariatric surgery care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CBAR ^property[0].code = #status
* #CBAR ^property[=].valueCode = #active
* #CBAR ^property[+].code = #internalId
* #CBAR ^property[=].valueCode = #21878
* #CBAR ^property[+].code = #subsumedBy
* #CBAR ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CCAD "certified coronary artery disease care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CCAD ^property[0].code = #status
* #CCAD ^property[=].valueCode = #active
* #CCAD ^property[+].code = #internalId
* #CCAD ^property[=].valueCode = #21881
* #CCAD ^property[+].code = #subsumedBy
* #CCAD ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CCAR "certified cardiac care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CCAR ^property[0].code = #status
* #CCAR ^property[=].valueCode = #active
* #CCAR ^property[+].code = #internalId
* #CCAR ^property[=].valueCode = #21879
* #CCAR ^property[+].code = #subsumedBy
* #CCAR ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CDEP "certified depression care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CDEP ^property[0].code = #status
* #CDEP ^property[=].valueCode = #active
* #CDEP ^property[+].code = #internalId
* #CDEP ^property[=].valueCode = #21882
* #CDEP ^property[+].code = #subsumedBy
* #CDEP ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CDGD "certified digestive/gastrointestinal disorders care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CDGD ^property[0].code = #status
* #CDGD ^property[=].valueCode = #active
* #CDGD ^property[+].code = #internalId
* #CDGD ^property[=].valueCode = #21884
* #CDGD ^property[+].code = #subsumedBy
* #CDGD ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CDIA "certified diabetes care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CDIA ^property[0].code = #status
* #CDIA ^property[=].valueCode = #active
* #CDIA ^property[+].code = #internalId
* #CDIA ^property[=].valueCode = #21883
* #CDIA ^property[+].code = #subsumedBy
* #CDIA ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CEPI "certified epilepsy care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CEPI ^property[0].code = #status
* #CEPI ^property[=].valueCode = #active
* #CEPI ^property[+].code = #internalId
* #CEPI ^property[=].valueCode = #21885
* #CEPI ^property[+].code = #subsumedBy
* #CEPI ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CFEL "certified frail elderly care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CFEL ^property[0].code = #status
* #CFEL ^property[=].valueCode = #active
* #CFEL ^property[+].code = #internalId
* #CFEL ^property[=].valueCode = #21886
* #CFEL ^property[+].code = #subsumedBy
* #CFEL ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CHFC "certified heart failure care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CHFC ^property[0].code = #status
* #CHFC ^property[=].valueCode = #active
* #CHFC ^property[+].code = #internalId
* #CHFC ^property[=].valueCode = #21887
* #CHFC ^property[+].code = #subsumedBy
* #CHFC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CHRO "certified high risk obstetrics care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CHRO ^property[0].code = #status
* #CHRO ^property[=].valueCode = #active
* #CHRO ^property[+].code = #internalId
* #CHRO ^property[=].valueCode = #21888
* #CHRO ^property[+].code = #subsumedBy
* #CHRO ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CHYP "certified hyperlipidemia care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CHYP ^property[0].code = #status
* #CHYP ^property[=].valueCode = #active
* #CHYP ^property[+].code = #internalId
* #CHYP ^property[=].valueCode = #21889
* #CHYP ^property[+].code = #subsumedBy
* #CHYP ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CMIH "certified migraine headache care" "**Description:**."
* #CMIH ^property[0].code = #status
* #CMIH ^property[=].valueCode = #active
* #CMIH ^property[+].code = #internalId
* #CMIH ^property[=].valueCode = #21890
* #CMIH ^property[+].code = #subsumedBy
* #CMIH ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CMSC "certified multiple sclerosis care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CMSC ^property[0].code = #status
* #CMSC ^property[=].valueCode = #active
* #CMSC ^property[+].code = #internalId
* #CMSC ^property[=].valueCode = #21891
* #CMSC ^property[+].code = #subsumedBy
* #CMSC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #COJR "certified orthopedic joint replacement care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #COJR ^property[0].code = #status
* #COJR ^property[=].valueCode = #active
* #COJR ^property[+].code = #internalId
* #COJR ^property[=].valueCode = #21894
* #COJR ^property[+].code = #subsumedBy
* #COJR ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CONC "certified oncology care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CONC ^property[0].code = #status
* #CONC ^property[=].valueCode = #active
* #CONC ^property[+].code = #internalId
* #CONC ^property[=].valueCode = #21892
* #CONC ^property[+].code = #subsumedBy
* #CONC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #COPD "certified chronic obstructive pulmonary disease care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #COPD ^property[0].code = #status
* #COPD ^property[=].valueCode = #active
* #COPD ^property[+].code = #internalId
* #COPD ^property[=].valueCode = #21880
* #COPD ^property[+].code = #subsumedBy
* #COPD ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CORT "certified organ transplant care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CORT ^property[0].code = #status
* #CORT ^property[=].valueCode = #active
* #CORT ^property[+].code = #internalId
* #CORT ^property[=].valueCode = #21893
* #CORT ^property[+].code = #subsumedBy
* #CORT ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CPAD "certified parkinsons disease care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CPAD ^property[0].code = #status
* #CPAD ^property[=].valueCode = #active
* #CPAD ^property[+].code = #internalId
* #CPAD ^property[=].valueCode = #21895
* #CPAD ^property[+].code = #subsumedBy
* #CPAD ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CPND "certified pneumonia disease care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CPND ^property[0].code = #status
* #CPND ^property[=].valueCode = #active
* #CPND ^property[+].code = #internalId
* #CPND ^property[=].valueCode = #21896
* #CPND ^property[+].code = #subsumedBy
* #CPND ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CPST "certified primary stroke center care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CPST ^property[0].code = #status
* #CPST ^property[=].valueCode = #active
* #CPST ^property[+].code = #internalId
* #CPST ^property[=].valueCode = #21897
* #CPST ^property[+].code = #subsumedBy
* #CPST ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CSDM "certified stroke disease management care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CSDM ^property[0].code = #status
* #CSDM ^property[=].valueCode = #active
* #CSDM ^property[+].code = #internalId
* #CSDM ^property[=].valueCode = #21901
* #CSDM ^property[+].code = #subsumedBy
* #CSDM ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CSIC "certified sickle cell care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CSIC ^property[0].code = #status
* #CSIC ^property[=].valueCode = #active
* #CSIC ^property[+].code = #internalId
* #CSIC ^property[=].valueCode = #21898
* #CSIC ^property[+].code = #subsumedBy
* #CSIC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CSLD "certified sleep disorders care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CSLD ^property[0].code = #status
* #CSLD ^property[=].valueCode = #active
* #CSLD ^property[+].code = #internalId
* #CSLD ^property[=].valueCode = #21899
* #CSLD ^property[+].code = #subsumedBy
* #CSLD ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CSPT "certified spine treatment care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CSPT ^property[0].code = #status
* #CSPT ^property[=].valueCode = #active
* #CSPT ^property[+].code = #internalId
* #CSPT ^property[=].valueCode = #21900
* #CSPT ^property[+].code = #subsumedBy
* #CSPT ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CTBU "certified trauma/burn center care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CTBU ^property[0].code = #status
* #CTBU ^property[=].valueCode = #active
* #CTBU ^property[+].code = #internalId
* #CTBU ^property[=].valueCode = #21902
* #CTBU ^property[+].code = #subsumedBy
* #CTBU ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CVDC "certified vascular diseases care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CVDC ^property[0].code = #status
* #CVDC ^property[=].valueCode = #active
* #CVDC ^property[+].code = #internalId
* #CVDC ^property[=].valueCode = #21903
* #CVDC ^property[+].code = #subsumedBy
* #CVDC ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CWMA "certified wound management care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CWMA ^property[0].code = #status
* #CWMA ^property[=].valueCode = #active
* #CWMA ^property[+].code = #internalId
* #CWMA ^property[=].valueCode = #21905
* #CWMA ^property[+].code = #subsumedBy
* #CWMA ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #CWOH "certified women's health care" "**Description:**Scope of responsibility taken on by an organization for care of a patient as defined by the disease management certification agency."
* #CWOH ^property[0].code = #status
* #CWOH ^property[=].valueCode = #active
* #CWOH ^property[+].code = #internalId
* #CWOH ^property[=].valueCode = #21904
* #CWOH ^property[+].code = #subsumedBy
* #CWOH ^property[=].valueCode = #_ActCredentialedCareProvisionProgramCode
* #_ActAdministrativeDetectedIssueManagementCode "ActAdministrativeDetectedIssueManagementCode" "Codes dealing with the management of Detected Issue observations for the administrative and patient administrative acts domains."
* #_ActAdministrativeDetectedIssueManagementCode ^property[0].code = #notSelectable
* #_ActAdministrativeDetectedIssueManagementCode ^property[=].valueBoolean = true
* #_ActAdministrativeDetectedIssueManagementCode ^property[+].code = #status
* #_ActAdministrativeDetectedIssueManagementCode ^property[=].valueCode = #active
* #_ActAdministrativeDetectedIssueManagementCode ^property[+].code = #internalId
* #_ActAdministrativeDetectedIssueManagementCode ^property[=].valueCode = #20855
* #_ActAdministrativeDetectedIssueManagementCode ^property[+].code = #subsumedBy
* #_ActAdministrativeDetectedIssueManagementCode ^property[=].valueCode = #_ActDetectedIssueManagementCode
* #1 "Therapy Appropriate" "Confirmed drug therapy appropriate"
* #1 ^property[0].code = #status
* #1 ^property[=].valueCode = #active
* #1 ^property[+].code = #internalId
* #1 ^property[=].valueCode = #16696
* #1 ^property[+].code = #subsumedBy
* #1 ^property[=].valueCode = #_ActDetectedIssueManagementCode
* #14 "Supply Appropriate" "Confirmed supply action appropriate"
* #14 ^property[0].code = #status
* #14 ^property[=].valueCode = #active
* #14 ^property[+].code = #internalId
* #14 ^property[=].valueCode = #16709
* #14 ^property[+].code = #subsumedBy
* #14 ^property[=].valueCode = #_ActDetectedIssueManagementCode
* #8 "Other Action Taken" "Order is performed as issued, but other action taken to mitigate potential adverse effects"
* #8 ^property[0].code = #status
* #8 ^property[=].valueCode = #active
* #8 ^property[+].code = #internalId
* #8 ^property[=].valueCode = #16703
* #8 ^property[+].code = #subsumedBy
* #8 ^property[=].valueCode = #_ActDetectedIssueManagementCode
* #_ActFinancialDetectedIssueManagementCode "ActFinancialDetectedIssueManagementCode" "Codes dealing with the management of Detected Issue observations for the financial acts domain."
* #_ActFinancialDetectedIssueManagementCode ^property[0].code = #notSelectable
* #_ActFinancialDetectedIssueManagementCode ^property[=].valueBoolean = true
* #_ActFinancialDetectedIssueManagementCode ^property[+].code = #status
* #_ActFinancialDetectedIssueManagementCode ^property[=].valueCode = #retired
* #_ActFinancialDetectedIssueManagementCode ^property[+].code = #internalId
* #_ActFinancialDetectedIssueManagementCode ^property[=].valueCode = #20871
* #_ActFinancialDetectedIssueManagementCode ^property[+].code = #subsumedBy
* #_ActFinancialDetectedIssueManagementCode ^property[=].valueCode = #_ActDetectedIssueManagementCode
* #_HL7AccommodationCode "HL7AccommodationCode" "**Description:**Accommodation type. In Intent mood, represents the accommodation type requested. In Event mood, represents accommodation assigned/used. In Definition mood, represents the available accommodation type."
* #_HL7AccommodationCode ^property[0].code = #notSelectable
* #_HL7AccommodationCode ^property[=].valueBoolean = true
* #_HL7AccommodationCode ^property[+].code = #status
* #_HL7AccommodationCode ^property[=].valueCode = #active
* #_HL7AccommodationCode ^property[+].code = #rim-ClassifiesClassCode
* #_HL7AccommodationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_HL7AccommodationCode ^property[=].valueCoding = $v3-ActClass#ACCM
* #_HL7AccommodationCode ^property[+].code = #internalId
* #_HL7AccommodationCode ^property[=].valueCode = #22153
* #_HL7AccommodationCode ^property[+].code = #subsumedBy
* #_HL7AccommodationCode ^property[=].valueCode = #_ActEncounterAccommodationCode
* #_HCPCSAccommodationCode "HCPCSAccommodationCode" "**Description:**External value set for accommodation types used in the U.S. Health Care Financing Administration (HCFA) Common Procedure Coding System (HCPCS) including modifiers."
* #_HCPCSAccommodationCode ^property[0].code = #notSelectable
* #_HCPCSAccommodationCode ^property[=].valueBoolean = true
* #_HCPCSAccommodationCode ^property[+].code = #status
* #_HCPCSAccommodationCode ^property[=].valueCode = #retired
* #_HCPCSAccommodationCode ^property[+].code = #internalId
* #_HCPCSAccommodationCode ^property[=].valueCode = #22152
* #_HCPCSAccommodationCode ^property[+].code = #subsumedBy
* #_HCPCSAccommodationCode ^property[=].valueCode = #_ActEncounterAccommodationCode
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
* #EMER ^property[0].code = #status
* #EMER ^property[=].valueCode = #active
* #EMER ^property[+].code = #internalId
* #EMER ^property[=].valueCode = #16240
* #EMER ^property[+].code = #subsumedBy
* #EMER ^property[=].valueCode = #_ActEncounterCode
* #FLD "field" "A patient encounter that takes place both outside a dedicated service delivery location and outside a patient's residence. Example locations might include an accident site and at a supermarket."
* #FLD ^property[0].code = #status
* #FLD ^property[=].valueCode = #active
* #FLD ^property[+].code = #internalId
* #FLD ^property[=].valueCode = #16235
* #FLD ^property[+].code = #subsumedBy
* #FLD ^property[=].valueCode = #_ActEncounterCode
* #HH "home health" "Healthcare encounter that takes place in the residence of the patient or a designee"
* #HH ^property[0].code = #status
* #HH ^property[=].valueCode = #active
* #HH ^property[+].code = #internalId
* #HH ^property[=].valueCode = #16237
* #HH ^property[+].code = #subsumedBy
* #HH ^property[=].valueCode = #_ActEncounterCode
* #IMP "inpatient encounter" "A patient encounter where a patient is admitted by a hospital or equivalent facility, assigned to a location where patients generally stay at least overnight and provided with room, board, and continuous nursing service."
* #IMP ^property[0].code = #status
* #IMP ^property[=].valueCode = #active
* #IMP ^property[+].code = #internalId
* #IMP ^property[=].valueCode = #16847
* #IMP ^property[+].code = #subsumedBy
* #IMP ^property[=].valueCode = #_ActEncounterCode
* #OBSENC "observation encounter" "An encounter where the patient usually will start in different encounter, such as one in the emergency department (EMER) but then transition to this type of encounter because they require a significant period of treatment and monitoring to determine whether or not their condition warrants an inpatient admission or discharge. In the majority of cases the decision about admission or discharge will occur within a time period determined by local, regional or national regulation, often between 24 and 48 hours."
* #OBSENC ^property[0].code = #status
* #OBSENC ^property[=].valueCode = #active
* #OBSENC ^property[+].code = #internalId
* #OBSENC ^property[=].valueCode = #23896
* #OBSENC ^property[+].code = #subsumedBy
* #OBSENC ^property[=].valueCode = #_ActEncounterCode
* #PRENC "pre-admission" "A patient encounter where patient is scheduled or planned to receive service delivery in the future, and the patient is given a pre-admission account number. When the patient comes back for subsequent service, the pre-admission encounter is selected and is encapsulated into the service registration, and a new account number is generated.\r\n\r\n*Usage Note:* This is intended to be used in advance of encounter types such as ambulatory, inpatient encounter, virtual, etc."
* #PRENC ^property[0].code = #status
* #PRENC ^property[=].valueCode = #active
* #PRENC ^property[+].code = #internalId
* #PRENC ^property[=].valueCode = #23573
* #PRENC ^property[+].code = #subsumedBy
* #PRENC ^property[=].valueCode = #_ActEncounterCode
* #SS "short stay" "An encounter where the patient is admitted to a health care facility for a predetermined length of time, usually less than 24 hours."
* #SS ^property[0].code = #status
* #SS ^property[=].valueCode = #active
* #SS ^property[+].code = #internalId
* #SS ^property[=].valueCode = #21444
* #SS ^property[+].code = #subsumedBy
* #SS ^property[=].valueCode = #_ActEncounterCode
* #VR "virtual" "A patient encounter where the patient and the practitioner(s) are not in the same physical location. Examples include telephone conference, email exchange, robotic surgery, and televideo conference."
* #VR ^property[0].code = #status
* #VR ^property[=].valueCode = #active
* #VR ^property[+].code = #internalId
* #VR ^property[=].valueCode = #16236
* #VR ^property[+].code = #subsumedBy
* #VR ^property[=].valueCode = #_ActEncounterCode
* #CHLDCARE "Day care - Child care Interaction" "**Description:** Exposure participants' interaction occurred in a child care setting"
* #CHLDCARE ^property[0].code = #status
* #CHLDCARE ^property[=].valueCode = #active
* #CHLDCARE ^property[+].code = #internalId
* #CHLDCARE ^property[=].valueCode = #22357
* #CHLDCARE ^property[+].code = #subsumedBy
* #CHLDCARE ^property[=].valueCode = #_ActExposureCode
* #CONVEYNC "Common Conveyance Interaction" "**Description:** An interaction where the exposure participants traveled in/on the same vehicle (not necessarily concurrently, e.g. both are passengers of the same plane, but on different flights of that plane)."
* #CONVEYNC ^property[0].code = #status
* #CONVEYNC ^property[=].valueCode = #active
* #CONVEYNC ^property[+].code = #internalId
* #CONVEYNC ^property[=].valueCode = #22358
* #CONVEYNC ^property[+].code = #subsumedBy
* #CONVEYNC ^property[=].valueCode = #_ActExposureCode
* #HLTHCARE "Health Care Interaction - Not Patient Care" "**Description:** Exposure participants' interaction occurred during the course of health care delivery or in a health care delivery setting, but did not involve the direct provision of care (e.g. a janitor cleaning a patient's hospital room)."
* #HLTHCARE ^property[0].code = #status
* #HLTHCARE ^property[=].valueCode = #active
* #HLTHCARE ^property[+].code = #internalId
* #HLTHCARE ^property[=].valueCode = #22355
* #HLTHCARE ^property[+].code = #subsumedBy
* #HLTHCARE ^property[=].valueCode = #_ActExposureCode
* #HOMECARE "Care Giver Interaction" "**Description:** Exposure interaction occurred in context of one providing care for the other, i.e. a babysitter providing care for a child, a home-care aide providing assistance to a paraplegic."
* #HOMECARE ^property[0].code = #status
* #HOMECARE ^property[=].valueCode = #active
* #HOMECARE ^property[+].code = #internalId
* #HOMECARE ^property[=].valueCode = #22354
* #HOMECARE ^property[+].code = #subsumedBy
* #HOMECARE ^property[=].valueCode = #_ActExposureCode
* #HOSPPTNT "Hospital Patient Interaction" "**Description:** Exposure participants' interaction occurred when both were patients being treated in the same (acute) health care delivery facility."
* #HOSPPTNT ^property[0].code = #status
* #HOSPPTNT ^property[=].valueCode = #active
* #HOSPPTNT ^property[+].code = #internalId
* #HOSPPTNT ^property[=].valueCode = #22362
* #HOSPPTNT ^property[+].code = #subsumedBy
* #HOSPPTNT ^property[=].valueCode = #_ActExposureCode
* #HOSPVSTR "Hospital Visitor Interaction" "**Description:** Exposure participants' interaction occurred when one visited the other who was a patient being treated in a health care delivery facility."
* #HOSPVSTR ^property[0].code = #status
* #HOSPVSTR ^property[=].valueCode = #active
* #HOSPVSTR ^property[+].code = #internalId
* #HOSPVSTR ^property[=].valueCode = #22363
* #HOSPVSTR ^property[+].code = #subsumedBy
* #HOSPVSTR ^property[=].valueCode = #_ActExposureCode
* #HOUSEHLD "Household Interaction" "**Description:** Exposure interaction occurred in context of domestic interaction, i.e. both participants reside in the same household."
* #HOUSEHLD ^property[0].code = #status
* #HOUSEHLD ^property[=].valueCode = #active
* #HOUSEHLD ^property[+].code = #internalId
* #HOUSEHLD ^property[=].valueCode = #22364
* #HOUSEHLD ^property[+].code = #subsumedBy
* #HOUSEHLD ^property[=].valueCode = #_ActExposureCode
* #INMATE "Inmate Interaction" "**Description:** Exposure participants' interaction occurred in the course of one or both participants being incarcerated at a correctional facility"
* #INMATE ^property[0].code = #status
* #INMATE ^property[=].valueCode = #active
* #INMATE ^property[+].code = #internalId
* #INMATE ^property[=].valueCode = #22365
* #INMATE ^property[+].code = #subsumedBy
* #INMATE ^property[=].valueCode = #_ActExposureCode
* #INTIMATE "Intimate Interaction" "**Description:** Exposure interaction was intimate, i.e. participants are intimate companions (e.g. spouses, domestic partners)."
* #INTIMATE ^property[0].code = #status
* #INTIMATE ^property[=].valueCode = #active
* #INTIMATE ^property[+].code = #internalId
* #INTIMATE ^property[=].valueCode = #22366
* #INTIMATE ^property[+].code = #subsumedBy
* #INTIMATE ^property[=].valueCode = #_ActExposureCode
* #LTRMCARE "Long Term Care Facility Interaction" "**Description:** Exposure participants' interaction occurred in the course of one or both participants being resident at a long term care facility (second participant may be a visitor, worker, resident or a physical place or object within the facility)."
* #LTRMCARE ^property[0].code = #status
* #LTRMCARE ^property[=].valueCode = #active
* #LTRMCARE ^property[+].code = #internalId
* #LTRMCARE ^property[=].valueCode = #22367
* #LTRMCARE ^property[+].code = #subsumedBy
* #LTRMCARE ^property[=].valueCode = #_ActExposureCode
* #PLACE "Common Space Interaction" "**Description:** An interaction where the exposure participants were both present in the same location/place/space."
* #PLACE ^property[0].code = #status
* #PLACE ^property[=].valueCode = #active
* #PLACE ^property[+].code = #internalId
* #PLACE ^property[=].valueCode = #22361
* #PLACE ^property[+].code = #subsumedBy
* #PLACE ^property[=].valueCode = #_ActExposureCode
* #PTNTCARE "Health Care Interaction - Patient Care" "**Description:** Exposure participants' interaction occurred during the course of health care delivery by a provider (e.g. a physician treating a patient in her office)."
* #PTNTCARE ^property[0].code = #status
* #PTNTCARE ^property[=].valueCode = #active
* #PTNTCARE ^property[+].code = #internalId
* #PTNTCARE ^property[=].valueCode = #22356
* #PTNTCARE ^property[+].code = #subsumedBy
* #PTNTCARE ^property[=].valueCode = #_ActExposureCode
* #SCHOOL2 "School Interaction" "**Description:** Exposure participants' interaction occurred in an academic setting (e.g., participants are fellow students, or student and teacher)."
* #SCHOOL2 ^property[0].code = #status
* #SCHOOL2 ^property[=].valueCode = #active
* #SCHOOL2 ^property[+].code = #internalId
* #SCHOOL2 ^property[=].valueCode = #22368
* #SCHOOL2 ^property[+].code = #subsumedBy
* #SCHOOL2 ^property[=].valueCode = #_ActExposureCode
* #SOCIAL2 "Social/Extended Family Interaction" "**Description:** An interaction where the exposure participants are social associates or members of the same extended family"
* #SOCIAL2 ^property[0].code = #status
* #SOCIAL2 ^property[=].valueCode = #active
* #SOCIAL2 ^property[+].code = #internalId
* #SOCIAL2 ^property[=].valueCode = #22369
* #SOCIAL2 ^property[+].code = #subsumedBy
* #SOCIAL2 ^property[=].valueCode = #_ActExposureCode
* #SUBSTNCE "Common Substance Interaction" "**Description:** An interaction where the exposure participants shared or co-used a common substance (e.g. drugs, needles, or common food item)."
* #SUBSTNCE ^property[0].code = #status
* #SUBSTNCE ^property[=].valueCode = #active
* #SUBSTNCE ^property[+].code = #internalId
* #SUBSTNCE ^property[=].valueCode = #22359
* #SUBSTNCE ^property[+].code = #subsumedBy
* #SUBSTNCE ^property[=].valueCode = #_ActExposureCode
* #TRAVINT "Common Travel Interaction" "**Description:** An interaction where the exposure participants traveled together in/on the same vehicle/trip (e.g. concurrent co-passengers)."
* #TRAVINT ^property[0].code = #status
* #TRAVINT ^property[=].valueCode = #active
* #TRAVINT ^property[+].code = #internalId
* #TRAVINT ^property[=].valueCode = #22360
* #TRAVINT ^property[+].code = #subsumedBy
* #TRAVINT ^property[=].valueCode = #_ActExposureCode
* #WORK2 "Work Interaction" "**Description:** Exposure interaction occurred in a work setting, i.e. participants are co-workers."
* #WORK2 ^property[0].code = #status
* #WORK2 ^property[=].valueCode = #active
* #WORK2 ^property[+].code = #internalId
* #WORK2 ^property[=].valueCode = #22370
* #WORK2 ^property[+].code = #subsumedBy
* #WORK2 ^property[=].valueCode = #_ActExposureCode
* #CHRG "Standard Charge" "A type of transaction that represents a charge for a service or product. Expressed in monetary terms."
* #CHRG ^property[0].code = #status
* #CHRG ^property[=].valueCode = #active
* #CHRG ^property[+].code = #internalId
* #CHRG ^property[=].valueCode = #14805
* #CHRG ^property[+].code = #subsumedBy
* #CHRG ^property[=].valueCode = #_ActFinancialTransactionCode
* #REV "Standard Charge Reversal" "A type of transaction that represents a reversal of a previous charge for a service or product. Expressed in monetary terms. It has the opposite effect of a standard charge."
* #REV ^property[0].code = #status
* #REV ^property[=].valueCode = #active
* #REV ^property[+].code = #internalId
* #REV ^property[=].valueCode = #14806
* #REV ^property[+].code = #subsumedBy
* #REV ^property[=].valueCode = #_ActFinancialTransactionCode
* #GDPRCD "GDPR Consent Directive" "A consent directive compliant with the European Union General Data Protection Regulation (GDPR) definition: Consent of the data subject means any freely given, specific, informed and unambiguous indication of the data subject's wishes by which he or she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her.\r\n\r\nWhere processing is based on consent, the controller shall be able to demonstrate that the data subject has consented to processing of his or her personal data. If the data subject's consent is given in the context of a written declaration which also concerns other matters, the request for consent shall be presented in a manner which is clearly distinguishable from the other matters, in an intelligible and easily accessible form, using clear and plain language. Any part of such a declaration which constitutes an infringement of this Regulation shall not be binding. The data subject shall have the right to withdraw his or her consent at any time. The withdrawal of consent shall not affect the lawfulness of processing based on consent before its withdrawal. Prior to giving consent, the data subject shall be informed thereof. It shall be as easy to withdraw as to give consent. When assessing whether consent is freely given, utmost account shall be taken of whether, inter alia, the performance of a contract, including the provision of a service, is conditional on consent to the processing of personal data that is not necessary for the performance of that contract. Consent should be given by a clear affirmative act establishing a freely given, specific, informed and unambiguous indication of the data subject's agreement to the processing of personal data relating to him or her, such as by a written statement, including by electronic means, or an oral statement. This could include ticking a box when visiting an internet website, choosing technical settings for information society services or another statement or conduct which clearly indicates in this context the data subject's acceptance of the proposed processing of his or her personal data. Silence, pre-ticked boxes or inactivity should not therefore constitute consent. Consent should cover all processing activities carried out for the same purpose or purposes. When the processing has multiple purposes, consent should be given for all of them. If the data subject's consent is to be given following a request by electronic means, the request must be clear, concise and not unnecessarily disruptive to the use of the service for which it is provided.\r\n\r\n*Usage Note:* Article 4.11 GDPR Definitions https://gdpr-info.eu/art-4-gdpr/ 11) 'Consent' of the data subject means any freely given, specific, informed and unambiguous indication of the data subject's wishes by which he or she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her. Article 7 GDPR Conditions for consent https://gdpr-info.eu/art-7-gdpr Recital 32 Conditions for consent\\* https://gdpr-info.eu/recitals/no-32 Recital 42 Burden of proof and requirements for consent\\* https://gdpr-info.eu/recitals/no-42/> Recital 43 Freely given consent\\* https://gdpr-info.eu/recitals/no-43 GDPR Consent Brief https://gdpr-info.eu/issues/consent/ Art. 4 GDPR Definitions Art. 6 GDPR Lawfulness of processing Art. 7 GDPR Conditions for consent Art. 8 GDPR Conditions applicable to child's consent in relation to information society services Art. 9 GDPR Processing of special categories of personal data Art. 22 GDPR Automated individual decision-making, including profiling Art. 49 GDPR Derogations for specific situations\r\n\r\nRelevant GDPR Recitals: (32) Conditions for consent (33) Consent to certain areas of scientific research (38) Special protection of children's personal data (40) Lawfulness of data processing (42) Burden of proof and requirements for consent (43) Freely given consent (50) Further processing of personal data (51) Protecting sensitive personal data (54) Processing of sensitive data in public health sector (71) Profiling (111) Exceptions for certain cases of international transfers (155) Processing in the employment context (161) Consenting to the participation in clinical trials (171) Repeal of Directive 95/46/EC and transitional provisions"
* #GDPRCD ^property[0].code = #status
* #GDPRCD ^property[=].valueCode = #active
* #GDPRCD ^property[+].code = #internalId
* #GDPRCD ^property[=].valueCode = #24110
* #GDPRCD ^property[+].code = #subsumedBy
* #GDPRCD ^property[=].valueCode = #_ActGDPRConsentDirective
* #GDPRResearchCD "GDPR Research Consent Directive" "A consent directive that complies with regulatory requirements for a consent directive compliant with the European Union General Data Protection Regulation (GDPR) definition: Consent of the data subject means any freely given, specific, informed and unambiguous indication of the data subject's wishes by which he or she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her.\r\n\r\nGDPR research consent directive has the additional caveat that it is often not possible to fully identify the purpose of personal data processing for scientific research purposes at the time of data collection. Therefore, data subjects should be allowed to give their consent to certain areas of scientific research when in keeping with recognized ethical standards for scientific research. Data subjects should have the opportunity to give their consent only to certain areas of research or parts of research projects to the extent allowed by the intended purpose.\r\n\r\n*Usage Note:* HL7 Purpose of Use codes include specialize research purposes of use, which could be used to convey a data subject's purpose of use restrictions related to areas of research or parts of research projects. See citations for GDPRResearchCD and below: Recital 33 Consent to certain areas of scientific research https://gdpr-info.eu/recitals/no-33/> Recital 157 Information from registries and scientific research https://gdpr-info.eu/recitals/no-157 Recital 159 Processing for scientific research purposes\\* https://gdpr-info.eu/recitals/no-159/"
* #GDPRResearchCD ^property[0].code = #status
* #GDPRResearchCD ^property[=].valueCode = #active
* #GDPRResearchCD ^property[+].code = #internalId
* #GDPRResearchCD ^property[=].valueCode = #24111
* #GDPRResearchCD ^property[+].code = #subsumedBy
* #GDPRResearchCD ^property[=].valueCode = #_ActGDPRConsentDirective
* #GDPRCONSENT "GDPR Consent" "Processing of personal data, inclusive of the special categories of data, is lawful only if the data subject has given explicit consent to the processing of his or her personal data, inclusive of the special categories of data, for one or more specific purposes, except where Union or Member State law provide that the prohibition to use the data may not be lifted by the data subject; and for personal data which are manifestly made public by the data subject.\r\n\r\n*Usage Note:* The description is based on the following GDPR provisions: Article 6.1.a https://gdpr-info.eu/art-6-gdpr/ 1Processing shall be lawful only if and to the extent that at least one of the following applies: (a) the data subject has given consent to the processing of his or her personal data for one or more specific purposes. Article 9.1, 9.2a., 9.2.e https://gdpr-info.eu/art-9-gdpr/ 1. Processing of personal data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data for the purpose of uniquely identifying a natural person, data concerning health or data concerning a natural person's sex life or sexual orientation shall be prohibited. 2. Paragraph 1 shall not apply if one of the following applies: (a) the data subject has given explicit consent to the processing of those personal data for one or more specified purposes, except where Union or Member State law provide that the prohibition referred to in paragraph 1 may not be lifted by the data subject; and (e) processing relates to personal data which are manifestly made public by the data subject."
* #GDPRCONSENT ^property[0].code = #status
* #GDPRCONSENT ^property[=].valueCode = #active
* #GDPRCONSENT ^property[+].code = #internalId
* #GDPRCONSENT ^property[=].valueCode = #24121
* #GDPRCONSENT ^property[+].code = #subsumedBy
* #GDPRCONSENT ^property[=].valueCode = #_ActGDPRPrivacyLaw
* #OIC "opt-in to personal information or effect collection in a registry or repository" "An expressed privacy consent directive permitting the collection of a some or all personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual in a registry or repository for purposes such as treatment, payment, operations, research, information exchange, public health, data analytics, marketing, and profiling.\r\n\r\n*Usage Note:* Useful when a more specific jurisdictional or organizational consent directive policy or form is not specified, available, or known, for example, where an individual wishes to opt-in to collection of some or all of the individual's information by multiple registries and repositories.\r\n\r\nMap: An \"expressed\" consent directive maps to ISO/TS 17975:2015(E) definitions for \"Express or Expressed: Consent to Collect, Use and Disclose personal health information is expressly given by the subject of care\" and \"Opt-in\"."
* #OIC ^property[0].code = #status
* #OIC ^property[=].valueCode = #active
* #OIC ^property[+].code = #internalId
* #OIC ^property[=].valueCode = #24115
* #OIC ^property[+].code = #subsumedBy
* #OIC ^property[=].valueCode = #_ActGenericConsentDirective
* #OIS "opt-in to personal information or effect sharing via a registry or repository" "An expressed privacy consent directive permitting access, use, or disclosure of a some or all personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual in a registry or repository for purposes such as treatment, payment, operations, research, information exchange, public health, data analytics, marketing, and profiling.\r\n\r\n*Usage Note:* Useful when a more specific jurisdictional or organizational consent directive policy or form is not specified, available, or known, for example, where an individual wishes to opt-in to access, use, or disclosure of some or all of the individual's information by multiple registries and repositories.\r\n\r\nMap: An \"expressed\" consent directive maps to ISO/TS 17975:2015(E) Express or Expressed: Consent to Collect, Use and Disclose personal health information is expressly given by the subject of care and \"Opt-in\"."
* #OIS ^property[0].code = #status
* #OIS ^property[=].valueCode = #active
* #OIS ^property[+].code = #internalId
* #OIS ^property[=].valueCode = #24116
* #OIS ^property[+].code = #subsumedBy
* #OIS ^property[=].valueCode = #_ActGenericConsentDirective
* #OOC "opt-out of personal information or effect collection in a registry or repository" "An expressed privacy consent directive restricting or prohibiting collection of personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual in a registry or repository for purposes such as treatment, payment, operations, research, information exchange, public health, data analytics, marketing, and profiling.\r\n\r\n*Usage Note:* Useful when a more specific jurisdictional or organizational consent directive policy or form is not specified, available, or known, for example, where an individual wishes to opt-out of access, use, or disclosure of some or all of the individual's information by multiple registries and repositories.\r\n\r\nMap: An \"expressed\" opt-out to collection consent directive maps to ISO/TS 17975:2015(E) definitions for \"Express or Expressed: Consent to Collect, Use and Disclose personal health information is expressly given by the subject of care\" and \"Express or Expressed (and Informed) Denial\"."
* #OOC ^property[0].code = #status
* #OOC ^property[=].valueCode = #active
* #OOC ^property[+].code = #internalId
* #OOC ^property[=].valueCode = #24113
* #OOC ^property[+].code = #subsumedBy
* #OOC ^property[=].valueCode = #_ActGenericConsentDirective
* #OOS "opt-out of personal information or effect sharing via a registry or repository" "An expressed privacy consent directive restricting or prohibiting access, use, or disclosure of personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual in a registry or repository for purposes such as treatment, payment, operations, research, information exchange, public health, data analytics, marketing, and profiling.\r\n\r\n*Usage Note:* Useful when a more specific jurisdictional or organizational consent directive policy or form is not specified, available, or known, for example, where an individual wishes to opt-out of access, use, or disclosure of some or all of the individual's information by multiple registries and repositories.\r\n\r\nMap: An \"expressed\" opt-out to sharing consent directive maps to ISO/TS 17975:2015(E) definitions for \"Express or Expressed: Consent to Collect, Use and Disclose personal health information is expressly given by the subject of care\" and \"Express or Expressed (and Informed) Denial\"."
* #OOS ^property[0].code = #status
* #OOS ^property[=].valueCode = #active
* #OOS ^property[+].code = #internalId
* #OOS ^property[=].valueCode = #24114
* #OOS ^property[+].code = #subsumedBy
* #OOS ^property[=].valueCode = #_ActGenericConsentDirective
* #DENTAL "dental care policy" "**Definition:** A health insurance policy that that covers benefits for dental services."
* #DENTAL ^property[0].code = #status
* #DENTAL ^property[=].valueCode = #active
* #DENTAL ^property[+].code = #internalId
* #DENTAL ^property[=].valueCode = #22105
* #DENTAL ^property[+].code = #subsumedBy
* #DENTAL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #DISEASE "disease specific policy" "**Definition:** A health insurance policy that covers benefits for healthcare services provided for named conditions under the policy, e.g., cancer, diabetes, or HIV-AIDS."
* #DISEASE ^property[0].code = #status
* #DISEASE ^property[=].valueCode = #active
* #DISEASE ^property[+].code = #internalId
* #DISEASE ^property[=].valueCode = #22106
* #DISEASE ^property[+].code = #subsumedBy
* #DISEASE ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #DRUGPOL "drug policy" "**Definition:** A health insurance policy that covers benefits for prescription drugs, pharmaceuticals, and supplies."
* #DRUGPOL ^property[0].code = #status
* #DRUGPOL ^property[=].valueCode = #active
* #DRUGPOL ^property[+].code = #internalId
* #DRUGPOL ^property[=].valueCode = #22107
* #DRUGPOL ^property[+].code = #subsumedBy
* #DRUGPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #EHCPOL "extended healthcare" "Private insurance policy that provides coverage in addition to other policies (e.g. in addition to a Public Healthcare insurance policy)."
* #EHCPOL ^property[0].code = #status
* #EHCPOL ^property[=].valueCode = #active
* #EHCPOL ^property[+].code = #internalId
* #EHCPOL ^property[=].valueCode = #19722
* #EHCPOL ^property[+].code = #subsumedBy
* #EHCPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #EHCPOL ^property[+].code = #subsumedBy
* #EHCPOL ^property[=].valueCode = #_ActInsurancePolicyCode
* #HIP "health insurance plan policy" "**Definition:** A health insurance policy that covers healthcare benefits by protecting covered parties from medical expenses arising from health conditions, sickness, or accidental injury as well as preventive care. Health insurance policies explicitly exclude coverage for losses insured under a disability policy, workers' compensation program, liability insurance (including automobile insurance); or for medical expenses, coverage for on-site medical clinics or for limited dental or vision benefits when these are provided under a separate policy.\r\n\r\n*Discussion:* Health insurance policies are offered by health insurance plans that typically reimburse providers for covered services on a fee-for-service basis, that is, a fee that is the allowable amount that a provider may charge. This is in contrast to managed care plans, which typically prepay providers a per-member/per-month amount or capitation as reimbursement for all covered services rendered. Health insurance plans include indemnity and healthcare services plans."
* #HIP ^property[0].code = #status
* #HIP ^property[=].valueCode = #active
* #HIP ^property[+].code = #internalId
* #HIP ^property[=].valueCode = #22108
* #HIP ^property[+].code = #subsumedBy
* #HIP ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #HSAPOL "health spending account" "Insurance policy that provides for an allotment of funds replenished on a periodic (e.g. annual) basis. The use of the funds under this policy is at the discretion of the covered party."
* #HSAPOL ^property[0].code = #status
* #HSAPOL ^property[=].valueCode = #active
* #HSAPOL ^property[+].code = #internalId
* #HSAPOL ^property[=].valueCode = #19720
* #HSAPOL ^property[+].code = #subsumedBy
* #HSAPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #HSAPOL ^property[+].code = #subsumedBy
* #HSAPOL ^property[=].valueCode = #_ActInsurancePolicyCode
* #LTC "long term care policy" "**Definition:** An insurance policy that covers benefits for long-term care services people need when they no longer can care for themselves. This may be due to an accident, disability, prolonged illness or the simple process of aging. Long-term care services assist with activities of daily living including:\r\n\r\n *  Help at home with day-to-day activities, such as cooking, cleaning, bathing and dressing\r\n *  Care in the community, such as in an adult day care facility\r\n *  Supervised care provided in an assisted living facility\r\n *  Skilled care provided in a nursing home"
* #LTC ^property[0].code = #status
* #LTC ^property[=].valueCode = #active
* #LTC ^property[+].code = #internalId
* #LTC ^property[=].valueCode = #22109
* #LTC ^property[+].code = #subsumedBy
* #LTC ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #MCPOL "managed care policy" "**Definition:** Government mandated program providing coverage, disability income, and vocational rehabilitation for injuries sustained in the work place or in the course of employment. Employers may either self-fund the program, purchase commercial coverage, or pay a premium to a government entity that administers the program. Employees may be required to pay premiums toward the cost of coverage as well.\r\n\r\nManaged care policies specifically exclude coverage for losses insured under a disability policy, workers' compensation program, liability insurance (including automobile insurance); or for medical expenses, coverage for on-site medical clinics or for limited dental or vision benefits when these are provided under a separate policy.\r\n\r\n*Discussion:* Managed care policies are offered by managed care plans that contract with selected providers or health care organizations to provide comprehensive health care at a discount to covered parties and coordinate the financing and delivery of health care. Managed care uses medical protocols and procedures agreed on by the medical profession to be cost effective, also known as medical practice guidelines. Providers are typically reimbursed for covered services by a capitated amount on a per member per month basis that may reflect difference in the health status and level of services anticipated to be needed by the member."
* #MCPOL ^property[0].code = #status
* #MCPOL ^property[=].valueCode = #active
* #MCPOL ^property[+].code = #internalId
* #MCPOL ^property[=].valueCode = #22147
* #MCPOL ^property[+].code = #subsumedBy
* #MCPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #MENTPOL "mental health policy" "**Definition:** A health insurance policy that covers benefits for mental health services and prescriptions."
* #MENTPOL ^property[0].code = #status
* #MENTPOL ^property[=].valueCode = #active
* #MENTPOL ^property[+].code = #internalId
* #MENTPOL ^property[=].valueCode = #22113
* #MENTPOL ^property[+].code = #subsumedBy
* #MENTPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #POS "point of service policy" "**Definition:** A policy for a health plan that has features of both an HMO and a FFS plan. Like an HMO, a POS plan encourages the use its HMO network to maintain discounted fees with participating providers, but recognizes that sometimes covered parties want to choose their own provider. The POS plan allows a covered party to use providers who are not part of the HMO network (non-participating providers). However, there is a greater cost associated with choosing these non-network providers. A covered party will usually pay deductibles and coinsurances that are substantially higher than the payments when he or she uses a plan provider. Use of non-participating providers often requires the covered party to pay the provider directly and then to file a claim for reimbursement, like in an FFS plan."
* #POS ^property[0].code = #status
* #POS ^property[=].valueCode = #active
* #POS ^property[+].code = #internalId
* #POS ^property[=].valueCode = #22111
* #POS ^property[+].code = #subsumedBy
* #POS ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #POS ^property[+].code = #subsumedBy
* #POS ^property[=].valueCode = #MCPOL
* #SUBPOL "substance use policy" "**Definition:** A health insurance policy that covers benefits for substance use services."
* #SUBPOL ^property[0].code = #status
* #SUBPOL ^property[=].valueCode = #active
* #SUBPOL ^property[+].code = #internalId
* #SUBPOL ^property[=].valueCode = #22114
* #SUBPOL ^property[+].code = #subsumedBy
* #SUBPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #VISPOL "vision care policy" "**Definition:** Set of codes for a policy that provides coverage for health care expenses arising from vision services.\r\n\r\nA health insurance policy that covers benefits for vision care services, prescriptions, and products."
* #VISPOL ^property[0].code = #status
* #VISPOL ^property[=].valueCode = #active
* #VISPOL ^property[+].code = #internalId
* #VISPOL ^property[=].valueCode = #22115
* #VISPOL ^property[+].code = #subsumedBy
* #VISPOL ^property[=].valueCode = #_ActHealthInsuranceTypeCode
* #MVA "Motor vehicle accident" "Incident or accident as the result of a motor vehicle accident"
* #MVA ^property[0].code = #status
* #MVA ^property[=].valueCode = #active
* #MVA ^property[+].code = #internalId
* #MVA ^property[=].valueCode = #16509
* #MVA ^property[+].code = #subsumedBy
* #MVA ^property[=].valueCode = #_ActIncidentCode
* #SCHOOL "School Accident" "Incident or accident is the result of a school place accident."
* #SCHOOL ^property[0].code = #status
* #SCHOOL ^property[=].valueCode = #active
* #SCHOOL ^property[+].code = #internalId
* #SCHOOL ^property[=].valueCode = #17468
* #SCHOOL ^property[+].code = #subsumedBy
* #SCHOOL ^property[=].valueCode = #_ActIncidentCode
* #SPT "Sporting Accident" "Incident or accident is the result of a sporting accident."
* #SPT ^property[0].code = #status
* #SPT ^property[=].valueCode = #active
* #SPT ^property[+].code = #internalId
* #SPT ^property[=].valueCode = #17469
* #SPT ^property[+].code = #subsumedBy
* #SPT ^property[=].valueCode = #_ActIncidentCode
* #WPA "Workplace accident" "Incident or accident is the result of a work place accident"
* #WPA ^property[0].code = #status
* #WPA ^property[=].valueCode = #active
* #WPA ^property[+].code = #internalId
* #WPA ^property[=].valueCode = #16510
* #WPA ^property[+].code = #subsumedBy
* #WPA ^property[=].valueCode = #_ActIncidentCode
* #_ActPatientSafetyIncidentCode "ActPatientSafetyIncidentCode" "**Definition:** A code specifying the particular kind of Patient Safety Incident that the Incident class instance represents.\r\n\r\n**Examples:**\"Medication incident\", \"slips, trips and falls incident\".The actual value set for the domain will be determined by each (realm) implementation, whose Patient Safety terminology will be specific, although probably linked to the WHO Patient Safety Taxonomy that is currently under development"
* #_ActPatientSafetyIncidentCode ^property[0].code = #notSelectable
* #_ActPatientSafetyIncidentCode ^property[=].valueBoolean = true
* #_ActPatientSafetyIncidentCode ^property[+].code = #status
* #_ActPatientSafetyIncidentCode ^property[=].valueCode = #retired
* #_ActPatientSafetyIncidentCode ^property[+].code = #internalId
* #_ActPatientSafetyIncidentCode ^property[=].valueCode = #22265
* #_ActPatientSafetyIncidentCode ^property[+].code = #subsumedBy
* #_ActPatientSafetyIncidentCode ^property[=].valueCode = #_ActIncidentCode
* #ACADR "adverse drug reaction access" "**Description:** Provide consent to collect, use, disclose, or access adverse drug reaction information for a patient."
* #ACADR ^property[0].code = #status
* #ACADR ^property[=].valueCode = #active
* #ACADR ^property[+].code = #internalId
* #ACADR ^property[=].valueCode = #22245
* #ACADR ^property[+].code = #subsumedBy
* #ACADR ^property[=].valueCode = #_ActInformationAccessCode
* #ACALL "all access" "**Description:** Provide consent to collect, use, disclose, or access all information for a patient."
* #ACALL ^property[0].code = #status
* #ACALL ^property[=].valueCode = #active
* #ACALL ^property[+].code = #internalId
* #ACALL ^property[=].valueCode = #22868
* #ACALL ^property[+].code = #subsumedBy
* #ACALL ^property[=].valueCode = #_ActInformationAccessCode
* #ACALLG "allergy access" "**Description:** Provide consent to collect, use, disclose, or access allergy information for a patient."
* #ACALLG ^property[0].code = #status
* #ACALLG ^property[=].valueCode = #active
* #ACALLG ^property[+].code = #internalId
* #ACALLG ^property[=].valueCode = #22246
* #ACALLG ^property[+].code = #subsumedBy
* #ACALLG ^property[=].valueCode = #_ActInformationAccessCode
* #ACCONS "informational consent access" "**Description:** Provide consent to collect, use, disclose, or access informational consent information for a patient."
* #ACCONS ^property[0].code = #status
* #ACCONS ^property[=].valueCode = #active
* #ACCONS ^property[+].code = #internalId
* #ACCONS ^property[=].valueCode = #22869
* #ACCONS ^property[+].code = #subsumedBy
* #ACCONS ^property[=].valueCode = #_ActInformationAccessCode
* #ACDEMO "demographics access" "**Description:** Provide consent to collect, use, disclose, or access demographics information for a patient."
* #ACDEMO ^property[0].code = #status
* #ACDEMO ^property[=].valueCode = #active
* #ACDEMO ^property[+].code = #internalId
* #ACDEMO ^property[=].valueCode = #22254
* #ACDEMO ^property[+].code = #subsumedBy
* #ACDEMO ^property[=].valueCode = #_ActInformationAccessCode
* #ACDI "diagnostic imaging access" "**Description:** Provide consent to collect, use, disclose, or access diagnostic imaging information for a patient."
* #ACDI ^property[0].code = #status
* #ACDI ^property[=].valueCode = #active
* #ACDI ^property[+].code = #internalId
* #ACDI ^property[=].valueCode = #22810
* #ACDI ^property[+].code = #subsumedBy
* #ACDI ^property[=].valueCode = #_ActInformationAccessCode
* #ACIMMUN "immunization access" "**Description:** Provide consent to collect, use, disclose, or access immunization information for a patient."
* #ACIMMUN ^property[0].code = #status
* #ACIMMUN ^property[=].valueCode = #active
* #ACIMMUN ^property[+].code = #internalId
* #ACIMMUN ^property[=].valueCode = #22255
* #ACIMMUN ^property[+].code = #subsumedBy
* #ACIMMUN ^property[=].valueCode = #_ActInformationAccessCode
* #ACLAB "lab test result access" "**Description:** Provide consent to collect, use, disclose, or access lab test result information for a patient."
* #ACLAB ^property[0].code = #status
* #ACLAB ^property[=].valueCode = #active
* #ACLAB ^property[+].code = #internalId
* #ACLAB ^property[=].valueCode = #22247
* #ACLAB ^property[+].code = #subsumedBy
* #ACLAB ^property[=].valueCode = #_ActInformationAccessCode
* #ACMED "medication access" "**Description:** Provide consent to collect, use, disclose, or access medical condition information for a patient."
* #ACMED ^property[0].code = #status
* #ACMED ^property[=].valueCode = #active
* #ACMED ^property[+].code = #internalId
* #ACMED ^property[=].valueCode = #22248
* #ACMED ^property[+].code = #subsumedBy
* #ACMED ^property[=].valueCode = #_ActInformationAccessCode
* #ACMEDC "medical condition access" "**Definition:** Provide consent to view or access medical condition information for a patient."
* #ACMEDC ^property[0].code = #status
* #ACMEDC ^property[=].valueCode = #active
* #ACMEDC ^property[+].code = #internalId
* #ACMEDC ^property[=].valueCode = #22249
* #ACMEDC ^property[+].code = #subsumedBy
* #ACMEDC ^property[=].valueCode = #_ActInformationAccessCode
* #ACMEN "mental health access" "**Description:**Provide consent to collect, use, disclose, or access mental health information for a patient."
* #ACMEN ^property[0].code = #status
* #ACMEN ^property[=].valueCode = #active
* #ACMEN ^property[+].code = #internalId
* #ACMEN ^property[=].valueCode = #22904
* #ACMEN ^property[+].code = #subsumedBy
* #ACMEN ^property[=].valueCode = #_ActInformationAccessCode
* #ACOBS "common observations access" "**Description:** Provide consent to collect, use, disclose, or access common observation information for a patient."
* #ACOBS ^property[0].code = #status
* #ACOBS ^property[=].valueCode = #active
* #ACOBS ^property[+].code = #internalId
* #ACOBS ^property[=].valueCode = #22253
* #ACOBS ^property[+].code = #subsumedBy
* #ACOBS ^property[=].valueCode = #_ActInformationAccessCode
* #ACPOLPRG "policy or program information access" "**Description:** Provide consent to collect, use, disclose, or access coverage policy or program for a patient."
* #ACPOLPRG ^property[0].code = #status
* #ACPOLPRG ^property[=].valueCode = #active
* #ACPOLPRG ^property[+].code = #internalId
* #ACPOLPRG ^property[=].valueCode = #22252
* #ACPOLPRG ^property[+].code = #subsumedBy
* #ACPOLPRG ^property[=].valueCode = #_ActInformationAccessCode
* #ACPROV "provider information access" "**Description:** Provide consent to collect, use, disclose, or access provider information for a patient."
* #ACPROV ^property[0].code = #status
* #ACPROV ^property[=].valueCode = #active
* #ACPROV ^property[+].code = #internalId
* #ACPROV ^property[=].valueCode = #22251
* #ACPROV ^property[+].code = #subsumedBy
* #ACPROV ^property[=].valueCode = #_ActInformationAccessCode
* #ACPSERV "professional service access" "**Description:** Provide consent to collect, use, disclose, or access professional service information for a patient."
* #ACPSERV ^property[0].code = #status
* #ACPSERV ^property[=].valueCode = #active
* #ACPSERV ^property[+].code = #internalId
* #ACPSERV ^property[=].valueCode = #22250
* #ACPSERV ^property[+].code = #subsumedBy
* #ACPSERV ^property[=].valueCode = #_ActInformationAccessCode
* #ACSUBSTAB "substance abuse access" "**Description:**Provide consent to collect, use, disclose, or access substance abuse information for a patient."
* #ACSUBSTAB ^property[0].code = #status
* #ACSUBSTAB ^property[=].valueCode = #active
* #ACSUBSTAB ^property[+].code = #internalId
* #ACSUBSTAB ^property[=].valueCode = #22905
* #ACSUBSTAB ^property[+].code = #subsumedBy
* #ACSUBSTAB ^property[=].valueCode = #_ActInformationAccessCode
* #INFAUT "authorized information transfer" "Authorization to collect, access, use, or disclose specified patient health information in accordance with jurisdictional law, organizational policy, or a patient's consent directive, which may be implied, deemed, opt-in, opt-out, or explicit."
* #INFAUT ^property[0].code = #status
* #INFAUT ^property[=].valueCode = #active
* #INFAUT ^property[+].code = #internalId
* #INFAUT ^property[=].valueCode = #22643
* #INFAUT ^property[+].code = #subsumedBy
* #INFAUT ^property[=].valueCode = #_ActInformationAccessContextCode
* #INFCRT "only on court order" "Authorization to collect, access, use, or disclose specified patient health information in accordance with judicial system protocol, such as in the case of a subpoena or court order."
* #INFCRT ^property[0].code = #status
* #INFCRT ^property[=].valueCode = #active
* #INFCRT ^property[+].code = #internalId
* #INFCRT ^property[=].valueCode = #22337
* #INFCRT ^property[+].code = #subsumedBy
* #INFCRT ^property[=].valueCode = #_ActInformationAccessContextCode
* #INFDNG "only if danger to others" "Authorization to collect, access, use, or disclose specified patient health information where deemed necessary to avert potential danger to other persons in accordance with jurisdictional law, organizational policy, or standards of practice. For example, disclosure about a person threatening violence."
* #INFDNG ^property[0].code = #status
* #INFDNG ^property[=].valueCode = #active
* #INFDNG ^property[+].code = #internalId
* #INFDNG ^property[=].valueCode = #22335
* #INFDNG ^property[+].code = #subsumedBy
* #INFDNG ^property[=].valueCode = #_ActInformationAccessContextCode
* #INFEMER "only in an emergency" "Authorization to collect, access, use, or disclose specified patient health information in accordance with emergency information transfer protocol dictated by jurisdictional law, organization policy, or standards of practice. For example, sharing of health information during disaster response."
* #INFEMER ^property[0].code = #status
* #INFEMER ^property[=].valueCode = #active
* #INFEMER ^property[+].code = #internalId
* #INFEMER ^property[=].valueCode = #22333
* #INFEMER ^property[+].code = #subsumedBy
* #INFEMER ^property[=].valueCode = #_ActInformationAccessContextCode
* #INFPWR "only if public welfare risk" "Authorization to collect, access, use, or disclose specified patient health information necessary to avert potential public welfare risk in accordance with jurisdictional law, organizational policy, or standards of practice. For example, reporting that a person is a victim of abuse or demonstrating suicidal tendencies."
* #INFPWR ^property[0].code = #status
* #INFPWR ^property[=].valueCode = #active
* #INFPWR ^property[+].code = #internalId
* #INFPWR ^property[=].valueCode = #22336
* #INFPWR ^property[+].code = #subsumedBy
* #INFPWR ^property[=].valueCode = #_ActInformationAccessContextCode
* #INFREG "regulatory information transfer" "Authorization to collect, access, use, or disclose specified patient health information for public health, welfare, and safety purposes in accordance with jurisdictional law, organizational policy, or standards of practice. For example, public health reporting of notifiable conditions."
* #INFREG ^property[0].code = #status
* #INFREG ^property[=].valueCode = #active
* #INFREG ^property[+].code = #internalId
* #INFREG ^property[=].valueCode = #22642
* #INFREG ^property[+].code = #subsumedBy
* #INFREG ^property[=].valueCode = #_ActInformationAccessContextCode
* #INFOACCESS "access information" "Authorization to obtain information with no further permission to collect and store it."
* #INFOACCESS ^property[0].code = #status
* #INFOACCESS ^property[=].valueCode = #active
* #INFOACCESS ^property[+].code = #internalId
* #INFOACCESS ^property[=].valueCode = #24088
* #INFOACCESS ^property[+].code = #subsumedBy
* #INFOACCESS ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOCOLLECT "collect information" "Authorization to gather and store information."
* #INFOCOLLECT ^property[0].code = #status
* #INFOCOLLECT ^property[=].valueCode = #active
* #INFOCOLLECT ^property[+].code = #internalId
* #INFOCOLLECT ^property[=].valueCode = #24089
* #INFOCOLLECT ^property[+].code = #subsumedBy
* #INFOCOLLECT ^property[=].valueCode = #_ActInformationActionPolicy
* #INFODEIDENTIFIY "deidentify information" "Authorization to alter or remove identifying characteristics of an entity or individual that is a subject of the information."
* #INFODEIDENTIFIY ^property[0].code = #status
* #INFODEIDENTIFIY ^property[=].valueCode = #active
* #INFODEIDENTIFIY ^property[+].code = #internalId
* #INFODEIDENTIFIY ^property[=].valueCode = #24090
* #INFODEIDENTIFIY ^property[+].code = #subsumedBy
* #INFODEIDENTIFIY ^property[=].valueCode = #_ActInformationActionPolicy
* #INFODISCLOSE "disclose information" "Authorization to make information known to another party."
* #INFODISCLOSE ^property[0].code = #status
* #INFODISCLOSE ^property[=].valueCode = #active
* #INFODISCLOSE ^property[+].code = #internalId
* #INFODISCLOSE ^property[=].valueCode = #24091
* #INFODISCLOSE ^property[+].code = #subsumedBy
* #INFODISCLOSE ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOMASK "mask information" "Authorization to alter information in order to conceal it from unauthorized recipients."
* #INFOMASK ^property[0].code = #status
* #INFOMASK ^property[=].valueCode = #active
* #INFOMASK ^property[+].code = #internalId
* #INFOMASK ^property[=].valueCode = #24092
* #INFOMASK ^property[+].code = #subsumedBy
* #INFOMASK ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOREADONLY "read only information" "Authorization to access information within a specific context for communication purposes only. Storing, manipulating, and further disclosure are prohibited and may be technically disabled."
* #INFOREADONLY ^property[0].code = #status
* #INFOREADONLY ^property[=].valueCode = #active
* #INFOREADONLY ^property[+].code = #internalId
* #INFOREADONLY ^property[=].valueCode = #24093
* #INFOREADONLY ^property[+].code = #subsumedBy
* #INFOREADONLY ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOREDACT "redact information" "Authorization to remove information that a recipient is not authorized to access."
* #INFOREDACT ^property[0].code = #status
* #INFOREDACT ^property[=].valueCode = #active
* #INFOREDACT ^property[+].code = #internalId
* #INFOREDACT ^property[=].valueCode = #24094
* #INFOREDACT ^property[+].code = #subsumedBy
* #INFOREDACT ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOREDISCLOSE "redisclose information" "Authorization to make disclosed information known to another party."
* #INFOREDISCLOSE ^property[0].code = #status
* #INFOREDISCLOSE ^property[=].valueCode = #active
* #INFOREDISCLOSE ^property[+].code = #internalId
* #INFOREDISCLOSE ^property[=].valueCode = #24095
* #INFOREDISCLOSE ^property[+].code = #subsumedBy
* #INFOREDISCLOSE ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOREIDENTIFY "reidentify information" "Authorization to alter or relink deidentified information so that an entity or individual that is the subject of that information identifiable."
* #INFOREIDENTIFY ^property[0].code = #status
* #INFOREIDENTIFY ^property[=].valueCode = #active
* #INFOREIDENTIFY ^property[+].code = #internalId
* #INFOREIDENTIFY ^property[=].valueCode = #24096
* #INFOREIDENTIFY ^property[+].code = #subsumedBy
* #INFOREIDENTIFY ^property[=].valueCode = #_ActInformationActionPolicy
* #INFOUSE "use information" "Authorization to employ or alter information."
* #INFOUSE ^property[0].code = #status
* #INFOUSE ^property[=].valueCode = #active
* #INFOUSE ^property[+].code = #internalId
* #INFOUSE ^property[=].valueCode = #24097
* #INFOUSE ^property[+].code = #subsumedBy
* #INFOUSE ^property[=].valueCode = #_ActInformationActionPolicy
* #ALLCAT "all categories" "**Description:** All patient information."
* #ALLCAT ^property[0].code = #status
* #ALLCAT ^property[=].valueCode = #active
* #ALLCAT ^property[+].code = #internalId
* #ALLCAT ^property[=].valueCode = #22870
* #ALLCAT ^property[+].code = #subsumedBy
* #ALLCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #ALLGCAT "allergy category" "**Definition:**All information pertaining to a patient's allergy and intolerance records."
* #ALLGCAT ^property[0].code = #status
* #ALLGCAT ^property[=].valueCode = #active
* #ALLGCAT ^property[+].code = #internalId
* #ALLGCAT ^property[=].valueCode = #21614
* #ALLGCAT ^property[+].code = #subsumedBy
* #ALLGCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #ARCAT "adverse drug reaction category" "**Description:** All information pertaining to a patient's adverse drug reactions."
* #ARCAT ^property[0].code = #status
* #ARCAT ^property[=].valueCode = #active
* #ARCAT ^property[+].code = #internalId
* #ARCAT ^property[=].valueCode = #22811
* #ARCAT ^property[+].code = #subsumedBy
* #ARCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #COBSCAT "common observation category" "**Definition:**All information pertaining to a patient's common observation records (height, weight, blood pressure, temperature, etc.)."
* #COBSCAT ^property[0].code = #status
* #COBSCAT ^property[=].valueCode = #active
* #COBSCAT ^property[+].code = #internalId
* #COBSCAT ^property[=].valueCode = #21617
* #COBSCAT ^property[+].code = #subsumedBy
* #COBSCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #DEMOCAT "demographics category" "**Definition:**All information pertaining to a patient's demographics (such as name, date of birth, gender, address, etc)."
* #DEMOCAT ^property[0].code = #status
* #DEMOCAT ^property[=].valueCode = #active
* #DEMOCAT ^property[+].code = #internalId
* #DEMOCAT ^property[=].valueCode = #21618
* #DEMOCAT ^property[+].code = #subsumedBy
* #DEMOCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #DICAT "diagnostic image category" "**Definition:**All information pertaining to a patient's diagnostic image records (orders & results)."
* #DICAT ^property[0].code = #status
* #DICAT ^property[=].valueCode = #active
* #DICAT ^property[+].code = #internalId
* #DICAT ^property[=].valueCode = #21613
* #DICAT ^property[+].code = #subsumedBy
* #DICAT ^property[=].valueCode = #_ActInformationCategoryCode
* #IMMUCAT "immunization category" "**Definition:**All information pertaining to a patient's vaccination records."
* #IMMUCAT ^property[0].code = #status
* #IMMUCAT ^property[=].valueCode = #active
* #IMMUCAT ^property[+].code = #internalId
* #IMMUCAT ^property[=].valueCode = #21619
* #IMMUCAT ^property[+].code = #subsumedBy
* #IMMUCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #LABCAT "lab test category" "**Description:** All information pertaining to a patient's lab test records (orders & results)"
* #LABCAT ^property[0].code = #status
* #LABCAT ^property[=].valueCode = #active
* #LABCAT ^property[+].code = #internalId
* #LABCAT ^property[=].valueCode = #21611
* #LABCAT ^property[+].code = #subsumedBy
* #LABCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #MEDCCAT "medical condition category" "**Definition:**All information pertaining to a patient's medical condition records."
* #MEDCCAT ^property[0].code = #status
* #MEDCCAT ^property[=].valueCode = #active
* #MEDCCAT ^property[+].code = #internalId
* #MEDCCAT ^property[=].valueCode = #21616
* #MEDCCAT ^property[+].code = #subsumedBy
* #MEDCCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #MENCAT "mental health category" "**Description:** All information pertaining to a patient's mental health records."
* #MENCAT ^property[0].code = #status
* #MENCAT ^property[=].valueCode = #active
* #MENCAT ^property[+].code = #internalId
* #MENCAT ^property[=].valueCode = #22871
* #MENCAT ^property[+].code = #subsumedBy
* #MENCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #PSVCCAT "professional service category" "**Definition:**All information pertaining to a patient's professional service records (such as smoking cessation, counseling, medication review, mental health)."
* #PSVCCAT ^property[0].code = #status
* #PSVCCAT ^property[=].valueCode = #active
* #PSVCCAT ^property[+].code = #internalId
* #PSVCCAT ^property[=].valueCode = #21615
* #PSVCCAT ^property[+].code = #subsumedBy
* #PSVCCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #RXCAT "medication category" "**Definition:**All information pertaining to a patient's medication records (orders, dispenses and other active medications)."
* #RXCAT ^property[0].code = #status
* #RXCAT ^property[=].valueCode = #active
* #RXCAT ^property[+].code = #internalId
* #RXCAT ^property[=].valueCode = #21612
* #RXCAT ^property[+].code = #subsumedBy
* #RXCAT ^property[=].valueCode = #_ActInformationCategoryCode
* #JurisIP "jurisdictional information policy" "Jurisdictional policy on collection, access, use, or disclosure of information as defined by applicable jurisdictional law."
* #JurisIP ^property[0].code = #status
* #JurisIP ^property[=].valueCode = #active
* #JurisIP ^property[+].code = #internalId
* #JurisIP ^property[=].valueCode = #24074
* #JurisIP ^property[+].code = #subsumedBy
* #JurisIP ^property[=].valueCode = #_ActInformationPolicy
* #OrgIP "organizational information policy" "Organizational policy on collection, access, use, or disclosure of information, which does not conflict with jurisdictional law."
* #OrgIP ^property[0].code = #status
* #OrgIP ^property[=].valueCode = #active
* #OrgIP ^property[+].code = #internalId
* #OrgIP ^property[=].valueCode = #24066
* #OrgIP ^property[+].code = #subsumedBy
* #OrgIP ^property[=].valueCode = #_ActInformationPolicy
* #PersIP "personal information policy" "Personal policy on collection, access, use, or disclosure of information."
* #PersIP ^property[0].code = #status
* #PersIP ^property[=].valueCode = #active
* #PersIP ^property[+].code = #internalId
* #PersIP ^property[=].valueCode = #24082
* #PersIP ^property[+].code = #subsumedBy
* #PersIP ^property[=].valueCode = #_ActInformationPolicy
* #ETH "substance abuse information sensitivity" "Policy for handling alcohol or drug-abuse information, which will be afforded heightened confidentiality. Information handling protocols based on organizational policies related to alcohol or drug-abuse information that is deemed sensitive.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #ETH ^property[0].code = #status
* #ETH ^property[=].valueCode = #active
* #ETH ^property[+].code = #internalId
* #ETH ^property[=].valueCode = #23338
* #ETH ^property[+].code = #subsumedBy
* #ETH ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #GDIS "genetic disease information sensitivity" "Policy for handling genetic disease information, which will be afforded heightened confidentiality. Information handling protocols based on organizational policies related to genetic disease information that is deemed sensitive.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #GDIS ^property[0].code = #status
* #GDIS ^property[=].valueCode = #active
* #GDIS ^property[+].code = #internalId
* #GDIS ^property[=].valueCode = #23339
* #GDIS ^property[+].code = #subsumedBy
* #GDIS ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #HIV "HIV/AIDS information sensitivity" "Policy for handling HIV or AIDS information, which will be afforded heightened confidentiality. Information handling protocols based on organizational policies related to HIV or AIDS information that is deemed sensitive.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #HIV ^property[0].code = #status
* #HIV ^property[=].valueCode = #active
* #HIV ^property[+].code = #internalId
* #HIV ^property[=].valueCode = #23340
* #HIV ^property[+].code = #subsumedBy
* #HIV ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #MST "military sexual trauma information sensitivity" "Policy for handling information related to sexual assault or repeated, threatening sexual harassment that occurred while the patient was in the military, which is afforded heightened confidentiality.\r\n\r\nAccess control concerns for military sexual trauma is based on the patient being subject to control by a higher ranking military perpetrator and/or censure by others within the military unit. Due to the relatively unfettered access to healthcare information by higher ranking military personnel and those who have command over the patient, there is a need to sequester this information outside of the typical controls on access to military health records.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #MST ^property[0].code = #status
* #MST ^property[=].valueCode = #active
* #MST ^property[+].code = #internalId
* #MST ^property[=].valueCode = #23888
* #MST ^property[+].code = #subsumedBy
* #MST ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #PREGNANT "pregnancy information sensitivity" "Policy for handling information about an individual's current or past pregnancy status, deemed sensitive by the individual or by policy, which may be afforded heightened confidentiality.\r\n\r\n*Usage Note:* \r\n\r\nInformation about a patient's current or past pregnancy status may be considered sensitive in circumstances in which that status could result in discrimination or stigmatization."
* #PREGNANT ^property[0].code = #status
* #PREGNANT ^property[=].valueCode = #active
* #PREGNANT ^property[+].code = #internalId
* #PREGNANT ^property[=].valueCode = #24123
* #PREGNANT ^property[+].code = #subsumedBy
* #PREGNANT ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #SCA "sickle cell anemia information sensitivity" "Policy for handling sickle cell disease information, which is afforded heightened confidentiality. Information handling protocols are based on organizational policies related to sickle cell disease information, which is deemed sensitive.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then the Act valued with this ActCode should be associated with an Act valued with any applicable laws from the ActPrivacyLaw code system."
* #SCA ^property[0].code = #status
* #SCA ^property[=].valueCode = #active
* #SCA ^property[+].code = #internalId
* #SCA ^property[=].valueCode = #23576
* #SCA ^property[+].code = #subsumedBy
* #SCA ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #SDV "sexual assault, abuse, or domestic violence information sensitivity" "Policy for handling sexual assault, abuse, or domestic violence information, which will be afforded heightened confidentiality. Information handling protocols based on organizational policies related to sexual assault, abuse, or domestic violence information that is deemed sensitive.\r\n\r\nSDV code covers violence perpetrated by related and non-related persons. This code should be specific to physical and mental trauma caused by a related person only. The access control concerns are keeping the patient safe from the perpetrator who may have an abusive psychological control over the patient, may be stalking the patient, or may try to manipulate care givers into allowing the perpetrator to make contact with the patient. The definition needs to be clarified.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #SDV ^property[0].code = #status
* #SDV ^property[=].valueCode = #active
* #SDV ^property[+].code = #internalId
* #SDV ^property[=].valueCode = #23342
* #SDV ^property[+].code = #subsumedBy
* #SDV ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #SEX "sexuality and reproductive health information sensitivity" "Policy for handling sexuality and reproductive health information, which will be afforded heightened confidentiality. Information handling protocols based on organizational policies related to sexuality and reproductive health information that is deemed sensitive.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #SEX ^property[0].code = #status
* #SEX ^property[=].valueCode = #active
* #SEX ^property[+].code = #internalId
* #SEX ^property[=].valueCode = #23343
* #SEX ^property[+].code = #subsumedBy
* #SEX ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #SPI "specially protected information sensitivity" "Policy for handling information deemed specially protected by law or policy including substance abuse, substance use, psychiatric, mental health, behavioral health, and cognitive disorders, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #SPI ^property[0].code = #status
* #SPI ^property[=].valueCode = #active
* #SPI ^property[+].code = #internalId
* #SPI ^property[=].valueCode = #23889
* #SPI ^property[+].code = #subsumedBy
* #SPI ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #STD "sexually transmitted disease information sensitivity" "Policy for handling sexually transmitted disease information, which will be afforded heightened confidentiality. Information handling protocols based on organizational policies related to sexually transmitted disease information that is deemed sensitive.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #STD ^property[0].code = #status
* #STD ^property[=].valueCode = #active
* #STD ^property[+].code = #internalId
* #STD ^property[=].valueCode = #23344
* #STD ^property[+].code = #subsumedBy
* #STD ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #TBOO "taboo" "Policy for handling information not to be initially disclosed or discussed with patient except by a physician assigned to patient in this case. Information handling protocols based on organizational policies related to sensitive patient information that must be initially discussed with the patient by an attending physician before being disclosed to the patient.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code.\r\n\r\n*Open Issue:* This definition conflates a rule and a characteristic, and there may be a similar issue with ts sibling codes."
* #TBOO ^property[0].code = #status
* #TBOO ^property[=].valueCode = #active
* #TBOO ^property[+].code = #internalId
* #TBOO ^property[=].valueCode = #23345
* #TBOO ^property[+].code = #subsumedBy
* #TBOO ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #VIO "violence information sensitivity" "Policy for handling information related to harm by violence, which is afforded heightened confidentiality. Harm by violence is perpetrated by an unrelated person.\r\n\r\nAccess control concerns for information about mental or physical harm resulting from violence caused by an unrelated person may include manipulation of care givers or access to records that enable the perpetrator contact or locate the patient, but the perpetrator will likely not have established abusive psychological control over the patient.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #VIO ^property[0].code = #status
* #VIO ^property[=].valueCode = #active
* #VIO ^property[+].code = #internalId
* #VIO ^property[=].valueCode = #23887
* #VIO ^property[+].code = #subsumedBy
* #VIO ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #IDS "Identifier Sensitivity" "Policy for handling information related to an identifier of an information subject, which will be afforded heightened confidentiality. Usage Note: Such policies may govern the sensitivity of information related to an identifier of an act, such as the identifier of a contract; a role, such as a citizen, a patient, a practitioner, or an organization; or an entity such as a medical device due to potential impact on the privacy, well-being, safety or integrity of an information subject. For example, protection against identity fraud or counterfeit."
* #IDS ^property[0].code = #status
* #IDS ^property[=].valueCode = #active
* #IDS ^property[+].code = #internalId
* #IDS ^property[=].valueCode = #24800
* #IDS ^property[+].code = #subsumedBy
* #IDS ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #SICKLE "sickle cell" "Types of sensitivity policies that apply to Acts. Act.confidentialityCode is defined in the RIM as \"constraints around appropriate disclosure of information about this Act, regardless of mood.\"\r\n\r\n*Usage Note:* ActSensitivity codes are used to bind information to an Act.confidentialityCode according to local sensitivity policy so that those confidentiality codes can then govern its handling across enterprises. Internally to a policy domain, however, local policies guide the access control system on how end users in that policy domain are able to use information tagged with these sensitivity values."
* #SICKLE ^property[0].code = #status
* #SICKLE ^property[=].valueCode = #retired
* #SICKLE ^property[+].code = #internalId
* #SICKLE ^property[=].valueCode = #23459
* #SICKLE ^property[+].code = #subsumedBy
* #SICKLE ^property[=].valueCode = #_ActInformationSensitivityPolicy
* #AUTOPOL "automobile" "Insurance policy for injuries sustained in an automobile accident. Will also typically covered non-named parties to the policy, such as pedestrians and passengers."
* #AUTOPOL ^property[0].code = #status
* #AUTOPOL ^property[=].valueCode = #active
* #AUTOPOL ^property[+].code = #internalId
* #AUTOPOL ^property[=].valueCode = #19721
* #AUTOPOL ^property[+].code = #subsumedBy
* #AUTOPOL ^property[=].valueCode = #_ActInsurancePolicyCode
* #AUTOPOL ^property[+].code = #subsumedBy
* #AUTOPOL ^property[=].valueCode = #_ActInsuranceTypeCode
* #PUBLICPOL "public healthcare" "Insurance policy funded by a public health system such as a provincial or national health plan. Examples include BC MSP (British Columbia Medical Services Plan) OHIP (Ontario Health Insurance Plan), NHS (National Health Service)."
* #PUBLICPOL ^property[0].code = #status
* #PUBLICPOL ^property[=].valueCode = #active
* #PUBLICPOL ^property[+].code = #internalId
* #PUBLICPOL ^property[=].valueCode = #19718
* #PUBLICPOL ^property[+].code = #subsumedBy
* #PUBLICPOL ^property[=].valueCode = #_ActInsurancePolicyCode
* #PUBLICPOL ^property[+].code = #subsumedBy
* #PUBLICPOL ^property[=].valueCode = #_ActProgramTypeCode
* #WCBPOL "worker's compensation" "Insurance policy for injuries sustained in the work place or in the course of employment."
* #WCBPOL ^property[0].code = #status
* #WCBPOL ^property[=].valueCode = #active
* #WCBPOL ^property[+].code = #internalId
* #WCBPOL ^property[=].valueCode = #19719
* #WCBPOL ^property[+].code = #subsumedBy
* #WCBPOL ^property[=].valueCode = #_ActInsurancePolicyCode
* #WCBPOL ^property[+].code = #subsumedBy
* #WCBPOL ^property[=].valueCode = #_ActProgramTypeCode
* #_ActHealthInsuranceTypeCode "ActHealthInsuranceTypeCode" "**Definition:** Set of codes indicating the type of health insurance policy that covers health services provided to covered parties. A health insurance policy is a written contract for insurance between the insurance company and the policyholder, and contains pertinent facts about the policy owner (the policy holder), the health insurance coverage, the insured subscribers and dependents, and the insurer. Health insurance is typically administered in accordance with a plan, which specifies (1) the type of health services and health conditions that will be covered under what circumstances (e.g., exclusion of a pre-existing condition, service must be deemed medically necessary; service must not be experimental; service must provided in accordance with a protocol; drug must be on a formulary; service must be prior authorized; or be a referral from a primary care provider); (2) the type and affiliation of providers (e.g., only allopathic physicians, only in network, only providers employed by an HMO); (3) financial participations required of covered parties (e.g., co-pays, coinsurance, deductibles, out-of-pocket); and (4) the manner in which services will be paid (e.g., under indemnity or fee-for-service health plans, the covered party typically pays out-of-pocket and then file a claim for reimbursement, while health plans that have contractual relationships with providers, i.e., network providers, typically do not allow the providers to bill the covered party for the cost of the service until after filing a claim with the payer and receiving reimbursement)."
* #_ActHealthInsuranceTypeCode ^property[0].code = #notSelectable
* #_ActHealthInsuranceTypeCode ^property[=].valueBoolean = true
* #_ActHealthInsuranceTypeCode ^property[+].code = #status
* #_ActHealthInsuranceTypeCode ^property[=].valueCode = #active
* #_ActHealthInsuranceTypeCode ^property[+].code = #internalId
* #_ActHealthInsuranceTypeCode ^property[=].valueCode = #22099
* #_ActHealthInsuranceTypeCode ^property[+].code = #subsumedBy
* #_ActHealthInsuranceTypeCode ^property[=].valueCode = #_ActInsuranceTypeCode
* #DIS "disability insurance policy" "**Definition:** An insurance policy that provides a regular payment to compensate for income lost due to the covered party's inability to work because of illness or injury."
* #DIS ^property[0].code = #status
* #DIS ^property[=].valueCode = #active
* #DIS ^property[+].code = #internalId
* #DIS ^property[=].valueCode = #22102
* #DIS ^property[+].code = #subsumedBy
* #DIS ^property[=].valueCode = #_ActInsuranceTypeCode
* #EWB "employee welfare benefit plan policy" "**Definition:** An insurance policy under a benefit plan run by an employer or employee organization for the purpose of providing benefits other than pension-related to employees and their families. Typically provides health-related benefits, benefits for disability, disease or unemployment, or day care and scholarship benefits, among others. An employer sponsored health policy includes coverage of health care expenses arising from sickness or accidental injury, coverage for on-site medical clinics or for dental or vision benefits, which are typically provided under a separate policy. Coverage excludes health care expenses covered by accident or disability, workers' compensation, liability or automobile insurance."
* #EWB ^property[0].code = #status
* #EWB ^property[=].valueCode = #active
* #EWB ^property[+].code = #internalId
* #EWB ^property[=].valueCode = #22103
* #EWB ^property[+].code = #subsumedBy
* #EWB ^property[=].valueCode = #_ActInsuranceTypeCode
* #FLEXP "flexible benefit plan policy" "**Definition:**  An insurance policy that covers qualified benefits under a Flexible Benefit plan such as group medical insurance, long and short term disability income insurance, group term life insurance for employees only up to $50,000 face amount, specified disease coverage such as a cancer policy, dental and/or vision insurance, hospital indemnity insurance, accidental death and dismemberment insurance, a medical expense reimbursement plan and a dependent care reimbursement plan.\r\n\r\n *Discussion:* See UnderwriterRoleTypeCode flexible benefit plan which is defined as a benefit plan that allows employees to choose from several life, health, disability, dental, and other insurance plans according to their individual needs. Also known as cafeteria plans. Authorized under Section 125 of the Revenue Act of 1978."
* #FLEXP ^property[0].code = #status
* #FLEXP ^property[=].valueCode = #active
* #FLEXP ^property[+].code = #internalId
* #FLEXP ^property[=].valueCode = #22104
* #FLEXP ^property[+].code = #subsumedBy
* #FLEXP ^property[=].valueCode = #_ActInsuranceTypeCode
* #LIFE "life insurance policy" "**Definition:** A policy under which the insurer agrees to pay a sum of money upon the occurrence of the covered partys death. In return, the policyholder agrees to pay a stipulated amount called a premium at regular intervals. Life insurance indemnifies the beneficiary for the loss of the insurable interest that a beneficiary has in the life of a covered party. For persons related by blood, a substantial interest established through love and affection, and for all other persons, a lawful and substantial economic interest in having the life of the insured continue. An insurable interest is required when purchasing life insurance on another person. Specific exclusions are often written into the contract to limit the liability of the insurer; for example claims resulting from suicide or relating to war, riot and civil commotion.\r\n\r\n*Discussion:*A life insurance policy may be used by the covered party as a source of health care coverage in the case of a viatical settlement, which is the sale of a life insurance policy by the policy owner, before the policy matures. Such a sale, at a price discounted from the face amount of the policy but usually in excess of the premiums paid or current cash surrender value, provides the seller an immediate cash settlement. Generally, viatical settlements involve insured individuals with a life expectancy of less than two years. In countries without state-subsidized healthcare and high healthcare costs (e.g. United States), this is a practical way to pay extremely high health insurance premiums that severely ill people face. Some people are also familiar with life settlements, which are similar transactions but involve insureds with longer life expectancies (two to fifteen years)."
* #LIFE ^property[0].code = #status
* #LIFE ^property[=].valueCode = #active
* #LIFE ^property[+].code = #internalId
* #LIFE ^property[=].valueCode = #22148
* #LIFE ^property[+].code = #subsumedBy
* #LIFE ^property[=].valueCode = #_ActInsuranceTypeCode
* #PNC "property and casualty insurance policy" "**Definition:** A type of insurance that covers damage to or loss of the policyholderaTMs property by providing payments for damages to property damage or the injury or death of living subjects. The terms \"casualty\" and \"liability\" insurance are often used interchangeably. Both cover the policyholder's legal liability for damages caused to other persons and/or their property."
* #PNC ^property[0].code = #status
* #PNC ^property[=].valueCode = #active
* #PNC ^property[+].code = #internalId
* #PNC ^property[=].valueCode = #22119
* #PNC ^property[+].code = #subsumedBy
* #PNC ^property[=].valueCode = #_ActInsuranceTypeCode
* #REI "reinsurance policy" "**Definition:** An agreement between two or more insurance companies by which the risk of loss is proportioned. Thus the risk of loss is spread and a disproportionately large loss under a single policy does not fall on one insurance company. Acceptance by an insurer, called a reinsurer, of all or part of the risk of loss of another insurance company.\r\n\r\n**Discussion:** Reinsurance is a means by which an insurance company can protect itself against the risk of losses with other insurance companies. Individuals and corporations obtain insurance policies to provide protection for various risks (hurricanes, earthquakes, lawsuits, collisions, sickness and death, etc.). Reinsurers, in turn, provide insurance to insurance companies.\r\n\r\nFor example, an HMO may purchase a reinsurance policy to protect itself from losing too much money from one insured's particularly expensive health care costs. An insurance company issuing an automobile liability policy, with a limit of $100,000 per accident may reinsure its liability in excess of $10,000. A fire insurance company which issues a large policy generally reinsures a portion of the risk with one or several other companies. Also called *risk control insurance or stop-loss insurance.*"
* #REI ^property[0].code = #status
* #REI ^property[=].valueCode = #active
* #REI ^property[+].code = #internalId
* #REI ^property[=].valueCode = #22120
* #REI ^property[+].code = #subsumedBy
* #REI ^property[=].valueCode = #_ActInsuranceTypeCode
* #SURPL "surplus line insurance policy" "**Definition:** \r\n\r\n1.  A risk or part of a risk for which there is no normal insurance market available.\r\n2.  Insurance written by unauthorized insurance companies. Surplus lines insurance is insurance placed with unauthorized insurance companies through licensed surplus lines agents or brokers."
* #SURPL ^property[0].code = #status
* #SURPL ^property[=].valueCode = #active
* #SURPL ^property[+].code = #internalId
* #SURPL ^property[=].valueCode = #22121
* #SURPL ^property[+].code = #subsumedBy
* #SURPL ^property[=].valueCode = #_ActInsuranceTypeCode
* #UMBRL "umbrella liability insurance policy" "**Definition:** A form of insurance protection that provides additional liability coverage after the limits of your underlying policy are reached. An umbrella liability policy also protects you (the insured) in many situations not covered by the usual liability policies."
* #UMBRL ^property[0].code = #status
* #UMBRL ^property[=].valueCode = #active
* #UMBRL ^property[+].code = #internalId
* #UMBRL ^property[=].valueCode = #22122
* #UMBRL ^property[+].code = #subsumedBy
* #UMBRL ^property[=].valueCode = #_ActInsuranceTypeCode
* #_ActInvoiceAdjudicationPaymentGroupCode "ActInvoiceAdjudicationPaymentGroupCode" "Codes representing adjustments to a Payment Advice such as retroactive, clawback, garnishee, etc."
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[0].code = #notSelectable
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[=].valueBoolean = true
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[+].code = #status
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[=].valueCode = #active
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[+].code = #synonymCode
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[=].valueCode = #_ActInvoicePaymentCode
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[+].code = #internalId
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[=].valueCode = #20893
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[+].code = #subsumedBy
* #_ActInvoiceAdjudicationPaymentGroupCode ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentCode
* #_ActInvoicePaymentCode "ActInvoiceAdjudicationPaymentGroupCode" "Codes representing adjustments to a Payment Advice such as retroactive, clawback, garnishee, etc."
* #_ActInvoicePaymentCode ^property[0].code = #notSelectable
* #_ActInvoicePaymentCode ^property[=].valueBoolean = true
* #_ActInvoicePaymentCode ^property[+].code = #status
* #_ActInvoicePaymentCode ^property[=].valueCode = #retired
* #_ActInvoicePaymentCode ^property[+].code = #synonymCode
* #_ActInvoicePaymentCode ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #_ActInvoicePaymentCode ^property[+].code = #internalId
* #_ActInvoicePaymentCode ^property[=].valueCode = #20893
* #_ActInvoicePaymentCode ^property[+].code = #subsumedBy
* #_ActInvoicePaymentCode ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentCode
* #_ActInvoiceAdjudicationPaymentSummaryCode "ActInvoiceAdjudicationPaymentSummaryCode" "Codes representing a grouping of invoice elements (totals, sub-totals), reported through a Payment Advice or a Statement of Financial Activity (SOFA). The code can represent summaries by day, location, payee, etc."
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[0].code = #notSelectable
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[=].valueBoolean = true
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[+].code = #status
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[=].valueCode = #active
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[+].code = #internalId
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[=].valueCode = #20876
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[+].code = #subsumedBy
* #_ActInvoiceAdjudicationPaymentSummaryCode ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentCode
* #ALEC "alternate electronic" "Payment initiated by the payor as the result of adjudicating a submitted invoice that arrived to the payor from an electronic source that did not provide a conformant set of HL7 messages (e.g. web claim submission)."
* #ALEC ^property[0].code = #status
* #ALEC ^property[=].valueCode = #active
* #ALEC ^property[+].code = #internalId
* #ALEC ^property[=].valueCode = #20077
* #ALEC ^property[+].code = #subsumedBy
* #ALEC ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #ALEC ^property[+].code = #subsumedBy
* #ALEC ^property[=].valueCode = #_ActInvoicePaymentCode
* #BONUS "bonus" "Bonus payments based on performance, volume, etc. as agreed to by the payor."
* #BONUS ^property[0].code = #status
* #BONUS ^property[=].valueCode = #active
* #BONUS ^property[+].code = #internalId
* #BONUS ^property[=].valueCode = #20058
* #BONUS ^property[+].code = #subsumedBy
* #BONUS ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #BONUS ^property[+].code = #subsumedBy
* #BONUS ^property[=].valueCode = #_ActInvoicePaymentCode
* #CFWD "carry forward adjusment" "An amount still owing to the payor but the payment is 0$ and this cannot be settled until a future payment is made."
* #CFWD ^property[0].code = #status
* #CFWD ^property[=].valueCode = #active
* #CFWD ^property[+].code = #internalId
* #CFWD ^property[=].valueCode = #20068
* #CFWD ^property[+].code = #subsumedBy
* #CFWD ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #CFWD ^property[+].code = #subsumedBy
* #CFWD ^property[=].valueCode = #_ActInvoicePaymentCode
* #EDU "education fees" "Fees deducted on behalf of a payee for tuition and continuing education."
* #EDU ^property[0].code = #status
* #EDU ^property[=].valueCode = #active
* #EDU ^property[+].code = #internalId
* #EDU ^property[=].valueCode = #20059
* #EDU ^property[+].code = #subsumedBy
* #EDU ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #EDU ^property[+].code = #subsumedBy
* #EDU ^property[=].valueCode = #_ActInvoicePaymentCode
* #EPYMT "early payment fee" "Fees deducted on behalf of a payee for charges based on a shorter payment frequency (i.e. next day versus biweekly payments."
* #EPYMT ^property[0].code = #status
* #EPYMT ^property[=].valueCode = #active
* #EPYMT ^property[+].code = #internalId
* #EPYMT ^property[=].valueCode = #20065
* #EPYMT ^property[+].code = #subsumedBy
* #EPYMT ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #EPYMT ^property[+].code = #subsumedBy
* #EPYMT ^property[=].valueCode = #_ActInvoicePaymentCode
* #GARN "garnishee" "Fees deducted on behalf of a payee for charges based on a per-transaction or time-period (e.g. monthly) fee."
* #GARN ^property[0].code = #status
* #GARN ^property[=].valueCode = #active
* #GARN ^property[+].code = #internalId
* #GARN ^property[=].valueCode = #20066
* #GARN ^property[+].code = #subsumedBy
* #GARN ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #GARN ^property[+].code = #subsumedBy
* #GARN ^property[=].valueCode = #_ActInvoicePaymentCode
* #INVOICE "submitted invoice" "Payment is based on a payment intent for a previously submitted Invoice, based on formal adjudication results.."
* #INVOICE ^property[0].code = #status
* #INVOICE ^property[=].valueCode = #active
* #INVOICE ^property[+].code = #internalId
* #INVOICE ^property[=].valueCode = #20063
* #INVOICE ^property[+].code = #subsumedBy
* #INVOICE ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #INVOICE ^property[+].code = #subsumedBy
* #INVOICE ^property[=].valueCode = #_ActInvoicePaymentCode
* #PINV "paper invoice" "Payment initiated by the payor as the result of adjudicating a paper (original, may have been faxed) invoice."
* #PINV ^property[0].code = #status
* #PINV ^property[=].valueCode = #active
* #PINV ^property[+].code = #internalId
* #PINV ^property[=].valueCode = #20067
* #PINV ^property[+].code = #subsumedBy
* #PINV ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #PINV ^property[+].code = #subsumedBy
* #PINV ^property[=].valueCode = #_ActInvoicePaymentCode
* #PPRD "prior period adjustment" "An amount that was owed to the payor as indicated, by a carry forward adjusment, in a previous payment advice"
* #PPRD ^property[0].code = #status
* #PPRD ^property[=].valueCode = #active
* #PPRD ^property[+].code = #internalId
* #PPRD ^property[=].valueCode = #20069
* #PPRD ^property[+].code = #subsumedBy
* #PPRD ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #PPRD ^property[+].code = #subsumedBy
* #PPRD ^property[=].valueCode = #_ActInvoicePaymentCode
* #PROA "professional association deduction" "Professional association fee that is collected by the payor from the practitioner/provider on behalf of the association"
* #PROA ^property[0].code = #status
* #PROA ^property[=].valueCode = #active
* #PROA ^property[+].code = #internalId
* #PROA ^property[=].valueCode = #20060
* #PROA ^property[+].code = #subsumedBy
* #PROA ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #PROA ^property[+].code = #subsumedBy
* #PROA ^property[=].valueCode = #_ActInvoicePaymentCode
* #RECOV "recovery" "Retroactive adjustment such as fee rate adjustment due to contract negotiations."
* #RECOV ^property[0].code = #status
* #RECOV ^property[=].valueCode = #active
* #RECOV ^property[+].code = #internalId
* #RECOV ^property[=].valueCode = #20061
* #RECOV ^property[+].code = #subsumedBy
* #RECOV ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #RECOV ^property[+].code = #subsumedBy
* #RECOV ^property[=].valueCode = #_ActInvoicePaymentCode
* #RETRO "retro adjustment" "Bonus payments based on performance, volume, etc. as agreed to by the payor."
* #RETRO ^property[0].code = #status
* #RETRO ^property[=].valueCode = #active
* #RETRO ^property[+].code = #internalId
* #RETRO ^property[=].valueCode = #20062
* #RETRO ^property[+].code = #subsumedBy
* #RETRO ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #RETRO ^property[+].code = #subsumedBy
* #RETRO ^property[=].valueCode = #_ActInvoicePaymentCode
* #TRAN "transaction fee" "Fees deducted on behalf of a payee for charges based on a per-transaction or time-period (e.g. monthly) fee."
* #TRAN ^property[0].code = #status
* #TRAN ^property[=].valueCode = #active
* #TRAN ^property[+].code = #internalId
* #TRAN ^property[=].valueCode = #20064
* #TRAN ^property[+].code = #subsumedBy
* #TRAN ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentGroupCode
* #TRAN ^property[+].code = #subsumedBy
* #TRAN ^property[=].valueCode = #_ActInvoicePaymentCode
* #INVTYPE "invoice type" "Transaction counts and value totals by invoice type (e.g. RXDINV - Pharmacy Dispense)"
* #INVTYPE ^property[0].code = #status
* #INVTYPE ^property[=].valueCode = #active
* #INVTYPE ^property[+].code = #internalId
* #INVTYPE ^property[=].valueCode = #20055
* #INVTYPE ^property[+].code = #subsumedBy
* #INVTYPE ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #PAYEE "payee" "Transaction counts and value totals by each instance of an invoice payee."
* #PAYEE ^property[0].code = #status
* #PAYEE ^property[=].valueCode = #active
* #PAYEE ^property[+].code = #internalId
* #PAYEE ^property[=].valueCode = #20057
* #PAYEE ^property[+].code = #subsumedBy
* #PAYEE ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #PAYOR "payor" "Transaction counts and value totals by each instance of an invoice payor."
* #PAYOR ^property[0].code = #status
* #PAYOR ^property[=].valueCode = #active
* #PAYOR ^property[+].code = #internalId
* #PAYOR ^property[=].valueCode = #20056
* #PAYOR ^property[+].code = #subsumedBy
* #PAYOR ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #SENDAPP "sending application" "Transaction counts and value totals by each instance of a messaging application on a single processor. It is a registered identifier known to the receivers."
* #SENDAPP ^property[0].code = #status
* #SENDAPP ^property[=].valueCode = #active
* #SENDAPP ^property[+].code = #internalId
* #SENDAPP ^property[=].valueCode = #20054
* #SENDAPP ^property[+].code = #subsumedBy
* #SENDAPP ^property[=].valueCode = #_ActInvoiceAdjudicationPaymentSummaryCode
* #UNSPSC "United Nations Standard Products and Services Classification" "**Description:**United Nations Standard Products and Services Classification, managed by Uniform Code Council (UCC): www.unspsc.org"
* #UNSPSC ^property[0].code = #status
* #UNSPSC ^property[=].valueCode = #active
* #UNSPSC ^property[+].code = #internalId
* #UNSPSC ^property[=].valueCode = #22179
* #UNSPSC ^property[+].code = #subsumedBy
* #UNSPSC ^property[=].valueCode = #_ActInvoiceDetailClinicalProductCode
* #_CPT5 "CPT5" "**Description:**Physicians Current Procedural Terminology (CPT) Manual is a listing of descriptive terms and identifying codes for reporting medical services and procedures performed by physicians. Available for the AMA at the address listed for CPT above. These codes are found in Appendix A of CPT 2000 Standard Edition. (CPT 2000 Standard Edition, American Medical Association, Chicago, IL)."
* #_CPT5 ^property[0].code = #notSelectable
* #_CPT5 ^property[=].valueBoolean = true
* #_CPT5 ^property[+].code = #status
* #_CPT5 ^property[=].valueCode = #retired
* #_CPT5 ^property[+].code = #internalId
* #_CPT5 ^property[=].valueCode = #22177
* #_CPT5 ^property[+].code = #subsumedBy
* #_CPT5 ^property[=].valueCode = #_ActInvoiceDetailClinicalServiceCode
* #_CPT5 ^property[+].code = #subsumedBy
* #_CPT5 ^property[=].valueCode = #_ActProcedureCode
* #_HCPCS "HCPCS" "**Description:**Health Care Financing Administration Common Procedural Coding System (HCPCS) Codes are procedure identifying codes. HCPCS is Health Care Finance AdministrationaTMs (HFCA) coding scheme to group procedures performed for payment to providers. contains codes for medical equipment, injectable drugs, transportation services, and other services not found in CPT4."
* #_HCPCS ^property[0].code = #notSelectable
* #_HCPCS ^property[=].valueBoolean = true
* #_HCPCS ^property[+].code = #status
* #_HCPCS ^property[=].valueCode = #retired
* #_HCPCS ^property[+].code = #internalId
* #_HCPCS ^property[=].valueCode = #22175
* #_HCPCS ^property[+].code = #subsumedBy
* #_HCPCS ^property[=].valueCode = #_ActInvoiceDetailClinicalServiceCode
* #_HCPCS ^property[+].code = #subsumedBy
* #_HCPCS ^property[=].valueCode = #_ActProcedureCode
* #_ICD10PCS "ICD10PCS" "**Description:**International Classification of Diseases, 10th Revision, Procedure Coding System (ICD-10-PCS) are procedure identifying codes. ICD-10-PCS describes the classification of inpatient procedures for statistical purposes."
* #_ICD10PCS ^property[0].code = #notSelectable
* #_ICD10PCS ^property[=].valueBoolean = true
* #_ICD10PCS ^property[+].code = #status
* #_ICD10PCS ^property[=].valueCode = #retired
* #_ICD10PCS ^property[+].code = #internalId
* #_ICD10PCS ^property[=].valueCode = #22173
* #_ICD10PCS ^property[+].code = #subsumedBy
* #_ICD10PCS ^property[=].valueCode = #_ActInvoiceDetailClinicalServiceCode
* #_ICD10PCS ^property[+].code = #subsumedBy
* #_ICD10PCS ^property[=].valueCode = #_ActProcedureCode
* #_ICD9PCS "ICD9PCS" "**Description:**International Classification of Diseases, 9th Revision, Procedure Coding System (ICD-9-PCS) are procedure identifying codes. ICD-9-PCS describes the classification of inpatient procedures for statistical purposes."
* #_ICD9PCS ^property[0].code = #notSelectable
* #_ICD9PCS ^property[=].valueBoolean = true
* #_ICD9PCS ^property[+].code = #status
* #_ICD9PCS ^property[=].valueCode = #retired
* #_ICD9PCS ^property[+].code = #internalId
* #_ICD9PCS ^property[=].valueCode = #22174
* #_ICD9PCS ^property[+].code = #subsumedBy
* #_ICD9PCS ^property[=].valueCode = #_ActInvoiceDetailClinicalServiceCode
* #_ICD9PCS ^property[+].code = #subsumedBy
* #_ICD9PCS ^property[=].valueCode = #_ActProcedureCode
* #_ActInvoiceDetailClinicalProductCode "ActInvoiceDetailClinicalProductCode" "An identifying data string for healthcare products."
* #_ActInvoiceDetailClinicalProductCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailClinicalProductCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailClinicalProductCode ^property[+].code = #status
* #_ActInvoiceDetailClinicalProductCode ^property[=].valueCode = #active
* #_ActInvoiceDetailClinicalProductCode ^property[+].code = #internalId
* #_ActInvoiceDetailClinicalProductCode ^property[=].valueCode = #20877
* #_ActInvoiceDetailClinicalProductCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailClinicalProductCode ^property[=].valueCode = #_ActInvoiceDetailCode
* #_ActInvoiceDetailDrugProductCode "ActInvoiceDetailDrugProductCode" "An identifying data string for A substance used as a medication or in the preparation of medication."
* #_ActInvoiceDetailDrugProductCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailDrugProductCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailDrugProductCode ^property[+].code = #status
* #_ActInvoiceDetailDrugProductCode ^property[=].valueCode = #active
* #_ActInvoiceDetailDrugProductCode ^property[+].code = #internalId
* #_ActInvoiceDetailDrugProductCode ^property[=].valueCode = #20880
* #_ActInvoiceDetailDrugProductCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailDrugProductCode ^property[=].valueCode = #_ActInvoiceDetailCode
* #_ActInvoiceDetailGenericCode "ActInvoiceDetailGenericCode" "The detail item codes to identify charges or changes to the total billing of a claim due to insurance rules and payments."
* #_ActInvoiceDetailGenericCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailGenericCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailGenericCode ^property[+].code = #status
* #_ActInvoiceDetailGenericCode ^property[=].valueCode = #active
* #_ActInvoiceDetailGenericCode ^property[+].code = #internalId
* #_ActInvoiceDetailGenericCode ^property[=].valueCode = #20882
* #_ActInvoiceDetailGenericCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailGenericCode ^property[=].valueCode = #_ActInvoiceDetailCode
* #_ActInvoiceDetailPreferredAccommodationCode "ActInvoiceDetailPreferredAccommodationCode" "An identifying data string for medical facility accommodations."
* #_ActInvoiceDetailPreferredAccommodationCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailPreferredAccommodationCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailPreferredAccommodationCode ^property[+].code = #status
* #_ActInvoiceDetailPreferredAccommodationCode ^property[=].valueCode = #active
* #_ActInvoiceDetailPreferredAccommodationCode ^property[+].code = #internalId
* #_ActInvoiceDetailPreferredAccommodationCode ^property[=].valueCode = #20886
* #_ActInvoiceDetailPreferredAccommodationCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailPreferredAccommodationCode ^property[=].valueCode = #_ActInvoiceDetailCode
* #_ActInvoiceDetailClinicalServiceCode "ActInvoiceDetailClinicalServiceCode" "An identifying data string for healthcare procedures."
* #_ActInvoiceDetailClinicalServiceCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailClinicalServiceCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailClinicalServiceCode ^property[+].code = #status
* #_ActInvoiceDetailClinicalServiceCode ^property[=].valueCode = #retired
* #_ActInvoiceDetailClinicalServiceCode ^property[+].code = #internalId
* #_ActInvoiceDetailClinicalServiceCode ^property[=].valueCode = #20878
* #_ActInvoiceDetailClinicalServiceCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailClinicalServiceCode ^property[=].valueCode = #_ActInvoiceDetailCode
* #_ActInvoiceDetailOralHealthProcedureCode "ActInvoiceDetailOralHealthProcedureCode" "An identifying data string for oral health procedure codes, e.g. extract tooth."
* #_ActInvoiceDetailOralHealthProcedureCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailOralHealthProcedureCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailOralHealthProcedureCode ^property[+].code = #status
* #_ActInvoiceDetailOralHealthProcedureCode ^property[=].valueCode = #retired
* #_ActInvoiceDetailOralHealthProcedureCode ^property[+].code = #internalId
* #_ActInvoiceDetailOralHealthProcedureCode ^property[=].valueCode = #20885
* #_ActInvoiceDetailOralHealthProcedureCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailOralHealthProcedureCode ^property[=].valueCode = #_ActInvoiceDetailCode
* #GTIN "Global Trade Item Number" "**Description:**Global Trade Item Number is an identifier for trade items developed by GS1 (comprising the former EAN International and Uniform Code Council)."
* #GTIN ^property[0].code = #status
* #GTIN ^property[=].valueCode = #active
* #GTIN ^property[+].code = #internalId
* #GTIN ^property[=].valueCode = #22181
* #GTIN ^property[+].code = #subsumedBy
* #GTIN ^property[=].valueCode = #_ActInvoiceDetailDrugProductCode
* #UPC "Universal Product Code" "**Description:**Universal Product Code is one of a wide variety of bar code languages widely used in the United States and Canada for items in stores."
* #UPC ^property[0].code = #status
* #UPC ^property[=].valueCode = #active
* #UPC ^property[+].code = #internalId
* #UPC ^property[=].valueCode = #22180
* #UPC ^property[+].code = #subsumedBy
* #UPC ^property[=].valueCode = #_ActInvoiceDetailDrugProductCode
* #COIN "coinsurance" "That portion of the eligible charges which a covered party must pay for each service and/or product. It is a percentage of the eligible amount for the service/product that is typically charged after the covered party has met the policy deductible. This amount represents the covered party's coinsurance that is applied to a particular adjudication result. It is expressed as a negative dollar amount in adjudication results."
* #COIN ^property[0].code = #status
* #COIN ^property[=].valueCode = #active
* #COIN ^property[+].code = #internalId
* #COIN ^property[=].valueCode = #21946
* #COIN ^property[+].code = #subsumedBy
* #COIN ^property[=].valueCode = #_ActInvoiceDetailGenericAdjudicatorCode
* #COPAYMENT "patient co-pay" "That portion of the eligible charges which a covered party must pay for each service and/or product. It is a defined amount per service/product of the eligible amount for the service/product. This amount represents the covered party's copayment that is applied to a particular adjudication result. It is expressed as a negative dollar amount in adjudication results."
* #COPAYMENT ^property[0].code = #status
* #COPAYMENT ^property[=].valueCode = #active
* #COPAYMENT ^property[+].code = #internalId
* #COPAYMENT ^property[=].valueCode = #20052
* #COPAYMENT ^property[+].code = #subsumedBy
* #COPAYMENT ^property[=].valueCode = #_ActInvoiceDetailGenericAdjudicatorCode
* #DEDUCTIBLE "deductible" "That portion of the eligible charges which a covered party must pay in a particular period (e.g. annual) before the benefits are payable by the adjudicator. This amount represents the covered party's deductible that is applied to a particular adjudication result. It is expressed as a negative dollar amount in adjudication results."
* #DEDUCTIBLE ^property[0].code = #status
* #DEDUCTIBLE ^property[=].valueCode = #active
* #DEDUCTIBLE ^property[+].code = #internalId
* #DEDUCTIBLE ^property[=].valueCode = #20051
* #DEDUCTIBLE ^property[+].code = #subsumedBy
* #DEDUCTIBLE ^property[=].valueCode = #_ActInvoiceDetailGenericAdjudicatorCode
* #PAY "payment" "The guarantor, who may be the patient, pays the entire charge for a service. Reasons for such action may include: there is no insurance coverage for the service (e.g. cosmetic surgery); the patient wishes to self-pay for the service; or the insurer denies payment for the service due to contractual provisions such as the need for prior authorization."
* #PAY ^property[0].code = #status
* #PAY ^property[=].valueCode = #active
* #PAY ^property[+].code = #internalId
* #PAY ^property[=].valueCode = #21362
* #PAY ^property[+].code = #subsumedBy
* #PAY ^property[=].valueCode = #_ActInvoiceDetailGenericAdjudicatorCode
* #SPEND "spend down" "That total amount of the eligible charges which a covered party must periodically pay for services and/or products prior to the Medicaid program providing any coverage. This amount represents the covered party's spend down that is applied to a particular adjudication result. It is expressed as a negative dollar amount in adjudication results"
* #SPEND ^property[0].code = #status
* #SPEND ^property[=].valueCode = #active
* #SPEND ^property[+].code = #internalId
* #SPEND ^property[=].valueCode = #21947
* #SPEND ^property[+].code = #subsumedBy
* #SPEND ^property[=].valueCode = #_ActInvoiceDetailGenericAdjudicatorCode
* #COINS "co-insurance" "The covered party pays a percentage of the cost of covered services."
* #COINS ^property[0].code = #status
* #COINS ^property[=].valueCode = #retired
* #COINS ^property[+].code = #internalId
* #COINS ^property[=].valueCode = #20053
* #COINS ^property[+].code = #subsumedBy
* #COINS ^property[=].valueCode = #_ActInvoiceDetailGenericAdjudicatorCode
* #_ActInvoiceDetailGenericAdjudicatorCode "ActInvoiceDetailGenericAdjudicatorCode" "The billable item codes to identify adjudicator specified components to the total billing of a claim."
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[+].code = #status
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[=].valueCode = #active
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[+].code = #internalId
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[=].valueCode = #20881
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailGenericAdjudicatorCode ^property[=].valueCode = #_ActInvoiceDetailGenericCode
* #_ActInvoiceDetailGenericModifierCode "ActInvoiceDetailGenericModifierCode" "The billable item codes to identify modifications to a billable item charge. As for example after hours increase in the office visit fee."
* #_ActInvoiceDetailGenericModifierCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailGenericModifierCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailGenericModifierCode ^property[+].code = #status
* #_ActInvoiceDetailGenericModifierCode ^property[=].valueCode = #active
* #_ActInvoiceDetailGenericModifierCode ^property[+].code = #internalId
* #_ActInvoiceDetailGenericModifierCode ^property[=].valueCode = #20883
* #_ActInvoiceDetailGenericModifierCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailGenericModifierCode ^property[=].valueCode = #_ActInvoiceDetailGenericCode
* #_ActInvoiceDetailGenericProviderCode "ActInvoiceDetailGenericProviderCode" "The billable item codes to identify provider supplied charges or changes to the total billing of a claim."
* #_ActInvoiceDetailGenericProviderCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailGenericProviderCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailGenericProviderCode ^property[+].code = #status
* #_ActInvoiceDetailGenericProviderCode ^property[=].valueCode = #active
* #_ActInvoiceDetailGenericProviderCode ^property[+].code = #internalId
* #_ActInvoiceDetailGenericProviderCode ^property[=].valueCode = #20884
* #_ActInvoiceDetailGenericProviderCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailGenericProviderCode ^property[=].valueCode = #_ActInvoiceDetailGenericCode
* #_ActInvoiceDetailTaxCode "ActInvoiceDetailTaxCode" "The billable item codes to identify modifications to a billable item charge by a tax factor applied to the amount. As for example 7% provincial sales tax."
* #_ActInvoiceDetailTaxCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailTaxCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailTaxCode ^property[+].code = #status
* #_ActInvoiceDetailTaxCode ^property[=].valueCode = #active
* #_ActInvoiceDetailTaxCode ^property[+].code = #internalId
* #_ActInvoiceDetailTaxCode ^property[=].valueCode = #20887
* #_ActInvoiceDetailTaxCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailTaxCode ^property[=].valueCode = #_ActInvoiceDetailGenericCode
* #AFTHRS "non-normal hours" "Premium paid on service fees in compensation for practicing outside of normal working hours."
* #AFTHRS ^property[0].code = #status
* #AFTHRS ^property[=].valueCode = #active
* #AFTHRS ^property[+].code = #internalId
* #AFTHRS ^property[=].valueCode = #20049
* #AFTHRS ^property[+].code = #subsumedBy
* #AFTHRS ^property[=].valueCode = #_ActInvoiceDetailGenericModifierCode
* #ISOL "isolation allowance" "Premium paid on service fees in compensation for practicing in a remote location."
* #ISOL ^property[0].code = #status
* #ISOL ^property[=].valueCode = #active
* #ISOL ^property[+].code = #internalId
* #ISOL ^property[=].valueCode = #20048
* #ISOL ^property[+].code = #subsumedBy
* #ISOL ^property[=].valueCode = #_ActInvoiceDetailGenericModifierCode
* #OOO "out of office" "Premium paid on service fees in compensation for practicing at a location other than normal working location."
* #OOO ^property[0].code = #status
* #OOO ^property[=].valueCode = #active
* #OOO ^property[+].code = #internalId
* #OOO ^property[=].valueCode = #20050
* #OOO ^property[+].code = #subsumedBy
* #OOO ^property[=].valueCode = #_ActInvoiceDetailGenericModifierCode
* #CANCAPT "cancelled appointment" "A charge to compensate the provider when a patient cancels an appointment with insufficient time for the provider to make another appointment with another patient."
* #CANCAPT ^property[0].code = #status
* #CANCAPT ^property[=].valueCode = #active
* #CANCAPT ^property[+].code = #internalId
* #CANCAPT ^property[=].valueCode = #20040
* #CANCAPT ^property[+].code = #subsumedBy
* #CANCAPT ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #DSC "discount" "A reduction in the amount charged as a percentage of the amount. For example a 5% discount for volume purchase."
* #DSC ^property[0].code = #status
* #DSC ^property[=].valueCode = #active
* #DSC ^property[+].code = #internalId
* #DSC ^property[=].valueCode = #20042
* #DSC ^property[+].code = #subsumedBy
* #DSC ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #ESA "extraordinary service assessment" "A premium on a service fee is requested because, due to extenuating circumstances, the service took an extraordinary amount of time or supplies."
* #ESA ^property[0].code = #status
* #ESA ^property[=].valueCode = #active
* #ESA ^property[+].code = #internalId
* #ESA ^property[=].valueCode = #20043
* #ESA ^property[+].code = #subsumedBy
* #ESA ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #FFSTOP "fee for service top off" "Under agreement between the parties (payor and provider), a guaranteed level of income is established for the provider over a specific, pre-determined period of time. The normal course of business for the provider is submission of fee-for-service claims. Should the fee-for-service income during the specified period of time be less than the agreed to amount, a top-up amount is paid to the provider equal to the difference between the fee-for-service total and the guaranteed income amount for that period of time. The details of the agreement may specify (or not) a requirement for repayment to the payor in the event that the fee-for-service income exceeds the guaranteed amount."
* #FFSTOP ^property[0].code = #status
* #FFSTOP ^property[=].valueCode = #active
* #FFSTOP ^property[+].code = #internalId
* #FFSTOP ^property[=].valueCode = #21311
* #FFSTOP ^property[+].code = #subsumedBy
* #FFSTOP ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #FNLFEE "final fee" "Anticipated or actual final fee associated with treating a patient."
* #FNLFEE ^property[0].code = #status
* #FNLFEE ^property[=].valueCode = #active
* #FNLFEE ^property[+].code = #internalId
* #FNLFEE ^property[=].valueCode = #21314
* #FNLFEE ^property[+].code = #subsumedBy
* #FNLFEE ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #FRSTFEE "first fee" "Anticipated or actual initial fee associated with treating a patient."
* #FRSTFEE ^property[0].code = #status
* #FRSTFEE ^property[=].valueCode = #active
* #FRSTFEE ^property[+].code = #internalId
* #FRSTFEE ^property[=].valueCode = #21313
* #FRSTFEE ^property[+].code = #subsumedBy
* #FRSTFEE ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #MARKUP "markup or up-charge" "An increase in the amount charged as a percentage of the amount. For example, 12% markup on product cost."
* #MARKUP ^property[0].code = #status
* #MARKUP ^property[=].valueCode = #active
* #MARKUP ^property[+].code = #internalId
* #MARKUP ^property[=].valueCode = #20038
* #MARKUP ^property[+].code = #subsumedBy
* #MARKUP ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #MISSAPT "missed appointment" "A charge to compensate the provider when a patient does not show for an appointment."
* #MISSAPT ^property[0].code = #status
* #MISSAPT ^property[=].valueCode = #active
* #MISSAPT ^property[+].code = #internalId
* #MISSAPT ^property[=].valueCode = #20039
* #MISSAPT ^property[+].code = #subsumedBy
* #MISSAPT ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #PERFEE "periodic fee" "Anticipated or actual periodic fee associated with treating a patient. For example, expected billing cycle such as monthly, quarterly. The actual period (e.g. monthly, quarterly) is specified in the unit quantity of the Invoice Element."
* #PERFEE ^property[0].code = #status
* #PERFEE ^property[=].valueCode = #active
* #PERFEE ^property[+].code = #internalId
* #PERFEE ^property[=].valueCode = #21312
* #PERFEE ^property[+].code = #subsumedBy
* #PERFEE ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #PERMBNS "performance bonus" "The amount for a performance bonus that is being requested from a payor for the performance of certain services (childhood immunizations, influenza immunizations, mammograms, pap smears) on a sliding scale. That is, for 90% of childhood immunizations to a maximum of $2200/yr. An invoice is created at the end of the service period (one year) and a code is submitted indicating the percentage achieved and the dollar amount claimed."
* #PERMBNS ^property[0].code = #status
* #PERMBNS ^property[=].valueCode = #active
* #PERMBNS ^property[+].code = #internalId
* #PERMBNS ^property[=].valueCode = #21310
* #PERMBNS ^property[+].code = #subsumedBy
* #PERMBNS ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #RESTOCK "restocking fee" "A charge is requested because the patient failed to pick up the item and it took an amount of time to return it to stock for future use."
* #RESTOCK ^property[0].code = #status
* #RESTOCK ^property[=].valueCode = #active
* #RESTOCK ^property[+].code = #internalId
* #RESTOCK ^property[=].valueCode = #20044
* #RESTOCK ^property[+].code = #subsumedBy
* #RESTOCK ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #TRAVEL "travel" "A charge to cover the cost of travel time and/or cost in conjuction with providing a service or product. It may be charged per kilometer or per hour based on the effective agreement."
* #TRAVEL ^property[0].code = #status
* #TRAVEL ^property[=].valueCode = #active
* #TRAVEL ^property[+].code = #internalId
* #TRAVEL ^property[=].valueCode = #20041
* #TRAVEL ^property[+].code = #subsumedBy
* #TRAVEL ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #URGENT "urgent" "Premium paid on service fees in compensation for providing an expedited response to an urgent situation."
* #URGENT ^property[0].code = #status
* #URGENT ^property[=].valueCode = #active
* #URGENT ^property[+].code = #internalId
* #URGENT ^property[=].valueCode = #21315
* #URGENT ^property[+].code = #subsumedBy
* #URGENT ^property[=].valueCode = #_ActInvoiceDetailGenericProviderCode
* #_ActEncounterAccommodationCode "ActEncounterAccommodationCode" "Accommodation type. In Intent mood, represents the accommodation type requested. In Event mood, represents accommodation assigned/used. In Definition mood, represents the available accommodation type."
* #_ActEncounterAccommodationCode ^property[0].code = #notSelectable
* #_ActEncounterAccommodationCode ^property[=].valueBoolean = true
* #_ActEncounterAccommodationCode ^property[+].code = #status
* #_ActEncounterAccommodationCode ^property[=].valueCode = #active
* #_ActEncounterAccommodationCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActEncounterAccommodationCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActEncounterAccommodationCode ^property[=].valueCoding = $v3-ActClass#ACCM
* #_ActEncounterAccommodationCode ^property[+].code = #internalId
* #_ActEncounterAccommodationCode ^property[=].valueCode = #20868
* #_ActEncounterAccommodationCode ^property[+].code = #subsumedBy
* #_ActEncounterAccommodationCode ^property[=].valueCode = #_ActInvoiceDetailPreferredAccommodationCode
* #FST "federal sales tax" "Federal tax on transactions such as the Goods and Services Tax (GST)"
* #FST ^property[0].code = #status
* #FST ^property[=].valueCode = #active
* #FST ^property[+].code = #internalId
* #FST ^property[=].valueCode = #20045
* #FST ^property[+].code = #subsumedBy
* #FST ^property[=].valueCode = #_ActInvoiceDetailTaxCode
* #HST "harmonized sales Tax" "Joint Federal/Provincial Sales Tax"
* #HST ^property[0].code = #status
* #HST ^property[=].valueCode = #active
* #HST ^property[+].code = #internalId
* #HST ^property[=].valueCode = #20047
* #HST ^property[+].code = #subsumedBy
* #HST ^property[=].valueCode = #_ActInvoiceDetailTaxCode
* #PST "provincial/state sales tax" "Tax levied by the provincial or state jurisdiction such as Provincial Sales Tax"
* #PST ^property[0].code = #status
* #PST ^property[=].valueCode = #active
* #PST ^property[+].code = #internalId
* #PST ^property[=].valueCode = #20046
* #PST ^property[+].code = #subsumedBy
* #PST ^property[=].valueCode = #_ActInvoiceDetailTaxCode
* #_ActInvoiceAdjudicationPaymentCode "ActInvoiceAdjudicationPaymentCode" "Codes representing a grouping of invoice elements (totals, sub-totals), reported through a Payment Advice or a Statement of Financial Activity (SOFA). The code can represent summaries by day, location, payee and other cost elements such as bonus, retroactive adjustment and transaction fees."
* #_ActInvoiceAdjudicationPaymentCode ^property[0].code = #notSelectable
* #_ActInvoiceAdjudicationPaymentCode ^property[=].valueBoolean = true
* #_ActInvoiceAdjudicationPaymentCode ^property[+].code = #status
* #_ActInvoiceAdjudicationPaymentCode ^property[=].valueCode = #active
* #_ActInvoiceAdjudicationPaymentCode ^property[+].code = #internalId
* #_ActInvoiceAdjudicationPaymentCode ^property[=].valueCode = #20875
* #_ActInvoiceAdjudicationPaymentCode ^property[+].code = #subsumedBy
* #_ActInvoiceAdjudicationPaymentCode ^property[=].valueCode = #_ActInvoiceElementCode
* #_ActInvoiceDetailCode "ActInvoiceDetailCode" "Codes representing a service or product that is being invoiced (billed). The code can represent such concepts as \"office visit\", \"drug X\", \"wheelchair\" and other billable items such as taxes, service charges and discounts."
* #_ActInvoiceDetailCode ^property[0].code = #notSelectable
* #_ActInvoiceDetailCode ^property[=].valueBoolean = true
* #_ActInvoiceDetailCode ^property[+].code = #status
* #_ActInvoiceDetailCode ^property[=].valueCode = #active
* #_ActInvoiceDetailCode ^property[+].code = #internalId
* #_ActInvoiceDetailCode ^property[=].valueCode = #20879
* #_ActInvoiceDetailCode ^property[+].code = #subsumedBy
* #_ActInvoiceDetailCode ^property[=].valueCode = #_ActInvoiceElementCode
* #_ActInvoiceGroupCode "ActInvoiceGroupCode" "Type of invoice element that is used to assist in describing an Invoice that is either submitted for adjudication or for which is returned on adjudication results.\r\n\r\nInvoice elements of this type signify a grouping of one or more children (detail) invoice elements. They do not have intrinsic costing associated with them, but merely reflect the sum of all costing for it's immediate children invoice elements."
* #_ActInvoiceGroupCode ^property[0].code = #notSelectable
* #_ActInvoiceGroupCode ^property[=].valueBoolean = true
* #_ActInvoiceGroupCode ^property[+].code = #status
* #_ActInvoiceGroupCode ^property[=].valueCode = #active
* #_ActInvoiceGroupCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInvoiceGroupCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInvoiceGroupCode ^property[=].valueCoding = $v3-ActClass#INVE
* #_ActInvoiceGroupCode ^property[+].code = #internalId
* #_ActInvoiceGroupCode ^property[=].valueCode = #20890
* #_ActInvoiceGroupCode ^property[+].code = #subsumedBy
* #_ActInvoiceGroupCode ^property[=].valueCode = #_ActInvoiceElementCode
* #_InvoiceElementAdjudicated "InvoiceElementAdjudicated" "Total counts and total net amounts adjudicated for all Invoice Groupings that were adjudicated within a time period based on the adjudication date of the Invoice Grouping."
* #_InvoiceElementAdjudicated ^property[0].code = #notSelectable
* #_InvoiceElementAdjudicated ^property[=].valueBoolean = true
* #_InvoiceElementAdjudicated ^property[+].code = #status
* #_InvoiceElementAdjudicated ^property[=].valueCode = #active
* #_InvoiceElementAdjudicated ^property[+].code = #rim-ClassifiesClassCode
* #_InvoiceElementAdjudicated ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_InvoiceElementAdjudicated ^property[=].valueCoding = $v3-ActClass#INVE
* #_InvoiceElementAdjudicated ^property[+].code = #internalId
* #_InvoiceElementAdjudicated ^property[=].valueCode = #20924
* #_InvoiceElementAdjudicated ^property[+].code = #subsumedBy
* #_InvoiceElementAdjudicated ^property[=].valueCode = #_ActInvoiceElementSummaryCode
* #_InvoiceElementPaid "InvoiceElementPaid" "Total counts and total net amounts paid for all Invoice Groupings that were paid within a time period based on the payment date."
* #_InvoiceElementPaid ^property[0].code = #notSelectable
* #_InvoiceElementPaid ^property[=].valueBoolean = true
* #_InvoiceElementPaid ^property[+].code = #status
* #_InvoiceElementPaid ^property[=].valueCode = #active
* #_InvoiceElementPaid ^property[+].code = #rim-ClassifiesClassCode
* #_InvoiceElementPaid ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_InvoiceElementPaid ^property[=].valueCoding = $v3-ActClass#INVE
* #_InvoiceElementPaid ^property[+].code = #internalId
* #_InvoiceElementPaid ^property[=].valueCode = #20925
* #_InvoiceElementPaid ^property[+].code = #subsumedBy
* #_InvoiceElementPaid ^property[=].valueCode = #_ActInvoiceElementSummaryCode
* #_InvoiceElementSubmitted "InvoiceElementSubmitted" "Total counts and total net amounts billed for all Invoice Groupings that were submitted within a time period. Adjudicated invoice elements are included."
* #_InvoiceElementSubmitted ^property[0].code = #notSelectable
* #_InvoiceElementSubmitted ^property[=].valueBoolean = true
* #_InvoiceElementSubmitted ^property[+].code = #status
* #_InvoiceElementSubmitted ^property[=].valueCode = #active
* #_InvoiceElementSubmitted ^property[+].code = #rim-ClassifiesClassCode
* #_InvoiceElementSubmitted ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_InvoiceElementSubmitted ^property[=].valueCoding = $v3-ActClass#INVE
* #_InvoiceElementSubmitted ^property[+].code = #internalId
* #_InvoiceElementSubmitted ^property[=].valueCode = #20926
* #_InvoiceElementSubmitted ^property[+].code = #subsumedBy
* #_InvoiceElementSubmitted ^property[=].valueCode = #_ActInvoiceElementSummaryCode
* #_ActInvoiceInterGroupCode "ActInvoiceInterGroupCode" "Type of invoice element that is used to assist in describing an Invoice that is either submitted for adjudication or for which is returned on adjudication results.\r\n\r\nInvoice elements of this type signify a grouping of one or more children (detail) invoice elements. They do not have intrinsic costing associated with them, but merely reflect the sum of all costing for it's immediate children invoice elements.\r\n\r\nThe domain is only specified for an intermediate invoice element group (non-root or non-top level) for an Invoice."
* #_ActInvoiceInterGroupCode ^property[0].code = #notSelectable
* #_ActInvoiceInterGroupCode ^property[=].valueBoolean = true
* #_ActInvoiceInterGroupCode ^property[+].code = #status
* #_ActInvoiceInterGroupCode ^property[=].valueCode = #active
* #_ActInvoiceInterGroupCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInvoiceInterGroupCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInvoiceInterGroupCode ^property[=].valueCoding = $v3-ActClass#INVE
* #_ActInvoiceInterGroupCode ^property[+].code = #internalId
* #_ActInvoiceInterGroupCode ^property[=].valueCode = #20891
* #_ActInvoiceInterGroupCode ^property[+].code = #subsumedBy
* #_ActInvoiceInterGroupCode ^property[=].valueCode = #_ActInvoiceGroupCode
* #_ActInvoiceRootGroupCode "ActInvoiceRootGroupCode" "Type of invoice element that is used to assist in describing an Invoice that is either submitted for adjudication or for which is returned on adjudication results.\r\n\r\nInvoice elements of this type signify a grouping of one or more children (detail) invoice elements. They do not have intrinsic costing associated with them, but merely reflect the sum of all costing for it's immediate children invoice elements.\r\n\r\nCodes from this domain reflect the type of Invoice such as Pharmacy Dispense, Clinical Service and Clinical Product. The domain is only specified for the root (top level) invoice element group for an Invoice."
* #_ActInvoiceRootGroupCode ^property[0].code = #notSelectable
* #_ActInvoiceRootGroupCode ^property[=].valueBoolean = true
* #_ActInvoiceRootGroupCode ^property[+].code = #status
* #_ActInvoiceRootGroupCode ^property[=].valueCode = #active
* #_ActInvoiceRootGroupCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActInvoiceRootGroupCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActInvoiceRootGroupCode ^property[=].valueCoding = $v3-ActClass#INVE
* #_ActInvoiceRootGroupCode ^property[+].code = #internalId
* #_ActInvoiceRootGroupCode ^property[=].valueCode = #20894
* #_ActInvoiceRootGroupCode ^property[+].code = #subsumedBy
* #_ActInvoiceRootGroupCode ^property[=].valueCode = #_ActInvoiceGroupCode
* #CPNDDRGING "compound drug invoice group" "A grouping of invoice element groups and details including the ones specifying the compound ingredients being invoiced. It may also contain generic detail items such as markup."
* #CPNDDRGING ^property[0].code = #status
* #CPNDDRGING ^property[=].valueCode = #active
* #CPNDDRGING ^property[+].code = #internalId
* #CPNDDRGING ^property[=].valueCode = #20033
* #CPNDDRGING ^property[+].code = #subsumedBy
* #CPNDDRGING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #CPNDINDING "compound ingredient invoice group" "A grouping of invoice element details including the one specifying an ingredient drug being invoiced. It may also contain generic detail items such as tax or markup."
* #CPNDINDING ^property[0].code = #status
* #CPNDINDING ^property[=].valueCode = #active
* #CPNDINDING ^property[+].code = #internalId
* #CPNDINDING ^property[=].valueCode = #20034
* #CPNDINDING ^property[+].code = #subsumedBy
* #CPNDINDING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #CPNDSUPING "compound supply invoice group" "A grouping of invoice element groups and details including the ones specifying the compound supplies being invoiced. It may also contain generic detail items such as markup."
* #CPNDSUPING ^property[0].code = #status
* #CPNDSUPING ^property[=].valueCode = #active
* #CPNDSUPING ^property[+].code = #internalId
* #CPNDSUPING ^property[=].valueCode = #20035
* #CPNDSUPING ^property[+].code = #subsumedBy
* #CPNDSUPING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #DRUGING "drug invoice group" "A grouping of invoice element details including the one specifying the drug being invoiced. It may also contain generic detail items such as markup."
* #DRUGING ^property[0].code = #status
* #DRUGING ^property[=].valueCode = #active
* #DRUGING ^property[+].code = #internalId
* #DRUGING ^property[=].valueCode = #20032
* #DRUGING ^property[+].code = #subsumedBy
* #DRUGING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #FRAMEING "frame invoice group" "A grouping of invoice element details including the ones specifying the frame fee and the frame dispensing cost that are being invoiced."
* #FRAMEING ^property[0].code = #status
* #FRAMEING ^property[=].valueCode = #active
* #FRAMEING ^property[+].code = #internalId
* #FRAMEING ^property[=].valueCode = #20037
* #FRAMEING ^property[+].code = #subsumedBy
* #FRAMEING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #LENSING "lens invoice group" "A grouping of invoice element details including the ones specifying the lens fee and the lens dispensing cost that are being invoiced."
* #LENSING ^property[0].code = #status
* #LENSING ^property[=].valueCode = #active
* #LENSING ^property[+].code = #internalId
* #LENSING ^property[=].valueCode = #20036
* #LENSING ^property[+].code = #subsumedBy
* #LENSING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #PRDING "product invoice group" "A grouping of invoice element details including the one specifying the product (good or supply) being invoiced. It may also contain generic detail items such as tax or discount."
* #PRDING ^property[0].code = #status
* #PRDING ^property[=].valueCode = #active
* #PRDING ^property[+].code = #internalId
* #PRDING ^property[=].valueCode = #20031
* #PRDING ^property[+].code = #subsumedBy
* #PRDING ^property[=].valueCode = #_ActInvoiceInterGroupCode
* #COVGE "coverage problem" "Insurance coverage problems have been encountered. Additional explanation information to be supplied."
* #COVGE ^property[0].code = #status
* #COVGE ^property[=].valueCode = #active
* #COVGE ^property[+].code = #internalId
* #COVGE ^property[=].valueCode = #17594
* #COVGE ^property[+].code = #subsumedBy
* #COVGE ^property[=].valueCode = #_ActInvoiceOverrideCode
* #EFORM "electronic form to follow" "Electronic form with supporting or additional information to follow."
* #EFORM ^property[0].code = #status
* #EFORM ^property[=].valueCode = #active
* #EFORM ^property[+].code = #internalId
* #EFORM ^property[=].valueCode = #20021
* #EFORM ^property[+].code = #subsumedBy
* #EFORM ^property[=].valueCode = #_ActInvoiceOverrideCode
* #FAX "fax to follow" "Fax with supporting or additional information to follow."
* #FAX ^property[0].code = #status
* #FAX ^property[=].valueCode = #active
* #FAX ^property[+].code = #internalId
* #FAX ^property[=].valueCode = #20022
* #FAX ^property[+].code = #subsumedBy
* #FAX ^property[=].valueCode = #_ActInvoiceOverrideCode
* #GFTH "good faith indicator" "The medical service was provided to a patient in good faith that they had medical coverage, although no evidence of coverage was available before service was rendered."
* #GFTH ^property[0].code = #status
* #GFTH ^property[=].valueCode = #active
* #GFTH ^property[+].code = #internalId
* #GFTH ^property[=].valueCode = #17592
* #GFTH ^property[+].code = #subsumedBy
* #GFTH ^property[=].valueCode = #_ActInvoiceOverrideCode
* #LATE "late invoice" "Knowingly over the payor's published time limit for this invoice possibly due to a previous payor's delays in processing. Additional reason information will be supplied."
* #LATE ^property[0].code = #status
* #LATE ^property[=].valueCode = #active
* #LATE ^property[+].code = #internalId
* #LATE ^property[=].valueCode = #17593
* #LATE ^property[+].code = #subsumedBy
* #LATE ^property[=].valueCode = #_ActInvoiceOverrideCode
* #MANUAL "manual review" "Manual review of the invoice is requested. Additional information to be supplied. This may be used in the case of an appeal."
* #MANUAL ^property[0].code = #status
* #MANUAL ^property[=].valueCode = #active
* #MANUAL ^property[+].code = #internalId
* #MANUAL ^property[=].valueCode = #19713
* #MANUAL ^property[+].code = #subsumedBy
* #MANUAL ^property[=].valueCode = #_ActInvoiceOverrideCode
* #OOJ "out of jurisdiction" "The medical service and/or product was provided to a patient that has coverage in another jurisdiction."
* #OOJ ^property[0].code = #status
* #OOJ ^property[=].valueCode = #active
* #OOJ ^property[+].code = #internalId
* #OOJ ^property[=].valueCode = #18036
* #OOJ ^property[+].code = #subsumedBy
* #OOJ ^property[=].valueCode = #_ActInvoiceOverrideCode
* #ORTHO "orthodontic service" "The service provided is required for orthodontic purposes. If the covered party has orthodontic coverage, then the service may be paid."
* #ORTHO ^property[0].code = #status
* #ORTHO ^property[=].valueCode = #active
* #ORTHO ^property[+].code = #internalId
* #ORTHO ^property[=].valueCode = #21317
* #ORTHO ^property[+].code = #subsumedBy
* #ORTHO ^property[=].valueCode = #_ActInvoiceOverrideCode
* #PAPER "paper documentation to follow" "Paper documentation (or other physical format) with supporting or additional information to follow."
* #PAPER ^property[0].code = #status
* #PAPER ^property[=].valueCode = #active
* #PAPER ^property[+].code = #internalId
* #PAPER ^property[=].valueCode = #20020
* #PAPER ^property[+].code = #subsumedBy
* #PAPER ^property[=].valueCode = #_ActInvoiceOverrideCode
* #PIE "public insurance exhausted" "Public Insurance has been exhausted. Invoice has not been sent to Public Insuror and therefore no Explanation Of Benefits (EOB) is provided with this Invoice submission."
* #PIE ^property[0].code = #status
* #PIE ^property[=].valueCode = #active
* #PIE ^property[+].code = #internalId
* #PIE ^property[=].valueCode = #20023
* #PIE ^property[+].code = #subsumedBy
* #PIE ^property[=].valueCode = #_ActInvoiceOverrideCode
* #PYRDELAY "delayed by a previous payor" "Allows provider to explain lateness of invoice to a subsequent payor."
* #PYRDELAY ^property[0].code = #status
* #PYRDELAY ^property[=].valueCode = #active
* #PYRDELAY ^property[+].code = #internalId
* #PYRDELAY ^property[=].valueCode = #17591
* #PYRDELAY ^property[+].code = #subsumedBy
* #PYRDELAY ^property[=].valueCode = #_ActInvoiceOverrideCode
* #REFNR "referral not required" "Rules of practice do not require a physician's referral for the provider to perform a billable service."
* #REFNR ^property[0].code = #status
* #REFNR ^property[=].valueCode = #active
* #REFNR ^property[+].code = #internalId
* #REFNR ^property[=].valueCode = #18037
* #REFNR ^property[+].code = #subsumedBy
* #REFNR ^property[=].valueCode = #_ActInvoiceOverrideCode
* #REPSERV "repeated service" "The same service was delivered within a time period that would usually indicate a duplicate billing. However, the repeated service is a medical necessity and therefore not a duplicate."
* #REPSERV ^property[0].code = #status
* #REPSERV ^property[=].valueCode = #active
* #REPSERV ^property[+].code = #internalId
* #REPSERV ^property[=].valueCode = #19711
* #REPSERV ^property[+].code = #subsumedBy
* #REPSERV ^property[=].valueCode = #_ActInvoiceOverrideCode
* #UNRELAT "unrelated service" "The service provided is not related to another billed service. For example, 2 unrelated services provided on the same day to the same patient which may normally result in a refused payment for one of the items."
* #UNRELAT ^property[0].code = #status
* #UNRELAT ^property[=].valueCode = #active
* #UNRELAT ^property[+].code = #internalId
* #UNRELAT ^property[=].valueCode = #21316
* #UNRELAT ^property[+].code = #subsumedBy
* #UNRELAT ^property[=].valueCode = #_ActInvoiceOverrideCode
* #VERBAUTH "verbal authorization" "The provider has received a verbal permission from an authoritative source to perform the service or supply the item being invoiced."
* #VERBAUTH ^property[0].code = #status
* #VERBAUTH ^property[=].valueCode = #active
* #VERBAUTH ^property[+].code = #internalId
* #VERBAUTH ^property[=].valueCode = #19712
* #VERBAUTH ^property[+].code = #subsumedBy
* #VERBAUTH ^property[=].valueCode = #_ActInvoiceOverrideCode
* #CPINV "clinical product invoice" "Clinical product invoice where the Invoice Grouping contains one or more billable item and is supported by clinical product(s).\r\n\r\nFor example, a crutch or a wheelchair."
* #CPINV ^property[0].code = #status
* #CPINV ^property[=].valueCode = #active
* #CPINV ^property[+].code = #synonymCode
* #CPINV ^property[=].valueCode = #CP
* #CPINV ^property[+].code = #internalId
* #CPINV ^property[=].valueCode = #19715
* #CPINV ^property[+].code = #subsumedBy
* #CPINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #CP "clinical product invoice" "Clinical product invoice where the Invoice Grouping contains one or more billable item and is supported by clinical product(s).\r\n\r\nFor example, a crutch or a wheelchair."
* #CP ^property[0].code = #status
* #CP ^property[=].valueCode = #retired
* #CP ^property[+].code = #synonymCode
* #CP ^property[=].valueCode = #CPINV
* #CP ^property[+].code = #internalId
* #CP ^property[=].valueCode = #19715
* #CP ^property[+].code = #subsumedBy
* #CP ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #CSINV "clinical service invoice" "Clinical Services Invoice which can be used to describe a single service, multiple services or repeated services.\r\n\r\n\\[1\\] Single Clinical services invoice where the Invoice Grouping contains one billable item and is supported by one clinical service.\r\n\r\nFor example, a single service for an office visit or simple clinical procedure (e.g. knee mobilization).\r\n\r\n\\[2\\] Multiple Clinical services invoice where the Invoice Grouping contains more than one billable item, supported by one or more clinical services. The services can be distinct and over multiple dates, but for the same patient. This type of invoice includes a series of treatments which must be adjudicated together.\r\n\r\nFor example, an adjustment and ultrasound for a chiropractic session where fees are associated for each of the services and adjudicated (invoiced) together.\r\n\r\n\\[3\\] Repeated Clinical services invoice where the Invoice Grouping contains one or more billable item, supported by the same clinical service repeated over a period of time.\r\n\r\nFor example, the same Chiropractic adjustment (service or treatment) delivered on 3 separate occasions over a period of time at the discretion of the provider (e.g. month)."
* #CSINV ^property[0].code = #status
* #CSINV ^property[=].valueCode = #active
* #CSINV ^property[+].code = #synonymCode
* #CSINV ^property[=].valueCode = #CS
* #CSINV ^property[+].code = #internalId
* #CSINV ^property[=].valueCode = #19714
* #CSINV ^property[+].code = #subsumedBy
* #CSINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #CS "clinical service invoice" "Clinical Services Invoice which can be used to describe a single service, multiple services or repeated services.\r\n\r\n\\[1\\] Single Clinical services invoice where the Invoice Grouping contains one billable item and is supported by one clinical service.\r\n\r\nFor example, a single service for an office visit or simple clinical procedure (e.g. knee mobilization).\r\n\r\n\\[2\\] Multiple Clinical services invoice where the Invoice Grouping contains more than one billable item, supported by one or more clinical services. The services can be distinct and over multiple dates, but for the same patient. This type of invoice includes a series of treatments which must be adjudicated together.\r\n\r\nFor example, an adjustment and ultrasound for a chiropractic session where fees are associated for each of the services and adjudicated (invoiced) together.\r\n\r\n\\[3\\] Repeated Clinical services invoice where the Invoice Grouping contains one or more billable item, supported by the same clinical service repeated over a period of time.\r\n\r\nFor example, the same Chiropractic adjustment (service or treatment) delivered on 3 separate occasions over a period of time at the discretion of the provider (e.g. month)."
* #CS ^property[0].code = #status
* #CS ^property[=].valueCode = #retired
* #CS ^property[+].code = #synonymCode
* #CS ^property[=].valueCode = #CSINV
* #CS ^property[+].code = #internalId
* #CS ^property[=].valueCode = #19714
* #CS ^property[+].code = #subsumedBy
* #CS ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #CSPINV "clinical service and product" "A clinical Invoice Grouping consisting of one or more services and one or more product. Billing for these service(s) and product(s) are supported by multiple clinical billable events (acts).\r\n\r\nAll items in the Invoice Grouping must be adjudicated together to be acceptable to the Adjudicator.\r\n\r\nFor example , a brace (product) invoiced together with the fitting (service)."
* #CSPINV ^property[0].code = #status
* #CSPINV ^property[=].valueCode = #active
* #CSPINV ^property[+].code = #internalId
* #CSPINV ^property[=].valueCode = #20076
* #CSPINV ^property[+].code = #subsumedBy
* #CSPINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #FININV "financial invoice" "Invoice Grouping without clinical justification. These will not require identification of participants and associations from a clinical context such as patient and provider.\r\n\r\nExamples are interest charges and mileage."
* #FININV ^property[0].code = #status
* #FININV ^property[=].valueCode = #active
* #FININV ^property[+].code = #internalId
* #FININV ^property[=].valueCode = #19716
* #FININV ^property[+].code = #subsumedBy
* #FININV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #OHSINV "oral health service" "A clinical Invoice Grouping consisting of one or more oral health services. Billing for these service(s) are supported by multiple clinical billable events (acts).\r\n\r\nAll items in the Invoice Grouping must be adjudicated together to be acceptable to the Adjudicator."
* #OHSINV ^property[0].code = #status
* #OHSINV ^property[=].valueCode = #active
* #OHSINV ^property[+].code = #internalId
* #OHSINV ^property[=].valueCode = #21309
* #OHSINV ^property[+].code = #subsumedBy
* #OHSINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #PAINV "preferred accommodation invoice" "HealthCare facility preferred accommodation invoice."
* #PAINV ^property[0].code = #status
* #PAINV ^property[=].valueCode = #active
* #PAINV ^property[+].code = #synonymCode
* #PAINV ^property[=].valueCode = #PA
* #PAINV ^property[+].code = #internalId
* #PAINV ^property[=].valueCode = #20029
* #PAINV ^property[+].code = #subsumedBy
* #PAINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #PA "preferred accommodation invoice" "HealthCare facility preferred accommodation invoice."
* #PA ^property[0].code = #status
* #PA ^property[=].valueCode = #retired
* #PA ^property[+].code = #synonymCode
* #PA ^property[=].valueCode = #PAINV
* #PA ^property[+].code = #internalId
* #PA ^property[=].valueCode = #20029
* #PA ^property[+].code = #subsumedBy
* #PA ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #RXCINV "Rx compound invoice" "Pharmacy dispense invoice for a compound."
* #RXCINV ^property[0].code = #status
* #RXCINV ^property[=].valueCode = #active
* #RXCINV ^property[+].code = #synonymCode
* #RXCINV ^property[=].valueCode = #RXC
* #RXCINV ^property[+].code = #internalId
* #RXCINV ^property[=].valueCode = #20027
* #RXCINV ^property[+].code = #subsumedBy
* #RXCINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #RXC "Rx compound invoice" "Pharmacy dispense invoice for a compound."
* #RXC ^property[0].code = #status
* #RXC ^property[=].valueCode = #retired
* #RXC ^property[+].code = #synonymCode
* #RXC ^property[=].valueCode = #RXCINV
* #RXC ^property[+].code = #internalId
* #RXC ^property[=].valueCode = #20027
* #RXC ^property[+].code = #subsumedBy
* #RXC ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #RXDINV "Rx dispense invoice" "Pharmacy dispense invoice not involving a compound"
* #RXDINV ^property[0].code = #status
* #RXDINV ^property[=].valueCode = #active
* #RXDINV ^property[+].code = #synonymCode
* #RXDINV ^property[=].valueCode = #RXD
* #RXDINV ^property[+].code = #internalId
* #RXDINV ^property[=].valueCode = #20028
* #RXDINV ^property[+].code = #subsumedBy
* #RXDINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #RXD "Rx dispense invoice" "Pharmacy dispense invoice not involving a compound"
* #RXD ^property[0].code = #status
* #RXD ^property[=].valueCode = #retired
* #RXD ^property[+].code = #synonymCode
* #RXD ^property[=].valueCode = #RXDINV
* #RXD ^property[+].code = #internalId
* #RXD ^property[=].valueCode = #20028
* #RXD ^property[+].code = #subsumedBy
* #RXD ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #SBFINV "sessional or block fee invoice" "Clinical services invoice where the Invoice Group contains one billable item for multiple clinical services in one or more sessions."
* #SBFINV ^property[0].code = #status
* #SBFINV ^property[=].valueCode = #active
* #SBFINV ^property[+].code = #internalId
* #SBFINV ^property[=].valueCode = #19717
* #SBFINV ^property[+].code = #subsumedBy
* #SBFINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #VRXINV "vision dispense invoice" "Vision dispense invoice for up to 2 lens (left and right), frame and optional discount. Eye exams are invoiced as a clinical service invoice."
* #VRXINV ^property[0].code = #status
* #VRXINV ^property[=].valueCode = #active
* #VRXINV ^property[+].code = #internalId
* #VRXINV ^property[=].valueCode = #20030
* #VRXINV ^property[+].code = #subsumedBy
* #VRXINV ^property[=].valueCode = #_ActInvoiceRootGroupCode
* #_ActObservationList "ActObservationList"
* #_ActObservationList ^property[0].code = #notSelectable
* #_ActObservationList ^property[=].valueBoolean = true
* #_ActObservationList ^property[+].code = #status
* #_ActObservationList ^property[=].valueCode = #active
* #_ActObservationList ^property[+].code = #rim-ClassifiesClassCode
* #_ActObservationList ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActObservationList ^property[=].valueCoding = $v3-ActClass#LIST
* #_ActObservationList ^property[+].code = #internalId
* #_ActObservationList ^property[=].valueCode = #20898
* #_ActObservationList ^property[+].code = #subsumedBy
* #_ActObservationList ^property[=].valueCode = #_ActListCode
* #_ActTherapyDurationWorkingListCode "ActTherapyDurationWorkingListCode" "Codes used to identify different types of 'duration-based' working lists. Examples include \"Continuous/Chronic\", \"Short-Term\" and \"As-Needed\"."
* #_ActTherapyDurationWorkingListCode ^property[0].code = #notSelectable
* #_ActTherapyDurationWorkingListCode ^property[=].valueBoolean = true
* #_ActTherapyDurationWorkingListCode ^property[+].code = #status
* #_ActTherapyDurationWorkingListCode ^property[=].valueCode = #active
* #_ActTherapyDurationWorkingListCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActTherapyDurationWorkingListCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActTherapyDurationWorkingListCode ^property[=].valueCoding = $v3-ActClass#LIST
* #_ActTherapyDurationWorkingListCode ^property[+].code = #internalId
* #_ActTherapyDurationWorkingListCode ^property[=].valueCode = #21522
* #_ActTherapyDurationWorkingListCode ^property[+].code = #subsumedBy
* #_ActTherapyDurationWorkingListCode ^property[=].valueCode = #_ActListCode
* #MEDLIST "medication list" "List of medications."
* #MEDLIST ^property[0].code = #status
* #MEDLIST ^property[=].valueCode = #active
* #MEDLIST ^property[+].code = #internalId
* #MEDLIST ^property[=].valueCode = #19976
* #MEDLIST ^property[+].code = #subsumedBy
* #MEDLIST ^property[=].valueCode = #_ActListCode
* #_ActProcedureCategoryList "ActProcedureCategoryList" "**Description:**Describes the high level classification of professional services for grouping.\r\n\r\n**Examples:**Education, Counseling, Surgery, etc."
* #_ActProcedureCategoryList ^property[0].code = #notSelectable
* #_ActProcedureCategoryList ^property[=].valueBoolean = true
* #_ActProcedureCategoryList ^property[+].code = #status
* #_ActProcedureCategoryList ^property[=].valueCode = #retired
* #_ActProcedureCategoryList ^property[+].code = #internalId
* #_ActProcedureCategoryList ^property[=].valueCode = #22076
* #_ActProcedureCategoryList ^property[+].code = #subsumedBy
* #_ActProcedureCategoryList ^property[=].valueCode = #_ActListCode
* #ALC "Alternative Level of Care" "Provision of Alternate Level of Care to a patient in an acute bed. Patient is waiting for placement in a long-term care facility and is unable to return home."
* #ALC ^property[0].code = #status
* #ALC ^property[=].valueCode = #active
* #ALC ^property[+].code = #internalId
* #ALC ^property[=].valueCode = #17459
* #ALC ^property[+].code = #subsumedBy
* #ALC ^property[=].valueCode = #_ActMedicalServiceCode
* #CARD "Cardiology" "Provision of diagnosis and treatment of diseases and disorders affecting the heart"
* #CARD ^property[0].code = #status
* #CARD ^property[=].valueCode = #active
* #CARD ^property[+].code = #internalId
* #CARD ^property[=].valueCode = #20092
* #CARD ^property[+].code = #subsumedBy
* #CARD ^property[=].valueCode = #_ActMedicalServiceCode
* #CHR "Chronic" "Provision of recurring care for chronic illness."
* #CHR ^property[0].code = #status
* #CHR ^property[=].valueCode = #active
* #CHR ^property[+].code = #internalId
* #CHR ^property[=].valueCode = #17453
* #CHR ^property[+].code = #subsumedBy
* #CHR ^property[=].valueCode = #_ActMedicalServiceCode
* #DNTL "Dental" "Provision of treatment for oral health and/or dental surgery."
* #DNTL ^property[0].code = #status
* #DNTL ^property[=].valueCode = #active
* #DNTL ^property[+].code = #internalId
* #DNTL ^property[=].valueCode = #17456
* #DNTL ^property[+].code = #subsumedBy
* #DNTL ^property[=].valueCode = #_ActMedicalServiceCode
* #DRGRHB "Drug Rehab" "Provision of treatment for drug abuse."
* #DRGRHB ^property[0].code = #status
* #DRGRHB ^property[=].valueCode = #active
* #DRGRHB ^property[+].code = #internalId
* #DRGRHB ^property[=].valueCode = #17454
* #DRGRHB ^property[+].code = #subsumedBy
* #DRGRHB ^property[=].valueCode = #_ActMedicalServiceCode
* #GENRL "General" "General care performed by a general practitioner or family doctor as a responsible provider for a patient."
* #GENRL ^property[0].code = #status
* #GENRL ^property[=].valueCode = #active
* #GENRL ^property[+].code = #internalId
* #GENRL ^property[=].valueCode = #19974
* #GENRL ^property[+].code = #subsumedBy
* #GENRL ^property[=].valueCode = #_ActMedicalServiceCode
* #MED "Medical" "Provision of diagnostic and/or therapeutic treatment."
* #MED ^property[0].code = #status
* #MED ^property[=].valueCode = #active
* #MED ^property[+].code = #internalId
* #MED ^property[=].valueCode = #17450
* #MED ^property[+].code = #subsumedBy
* #MED ^property[=].valueCode = #_ActMedicalServiceCode
* #OBS "Obstetrics" "Provision of care of women during pregnancy, childbirth and immediate postpartum period. Also known as Maternity."
* #OBS ^property[0].code = #status
* #OBS ^property[=].valueCode = #active
* #OBS ^property[+].code = #internalId
* #OBS ^property[=].valueCode = #17460
* #OBS ^property[+].code = #subsumedBy
* #OBS ^property[=].valueCode = #_ActMedicalServiceCode
* #ONC "Oncology" "Provision of treatment and/or diagnosis related to tumors and/or cancer."
* #ONC ^property[0].code = #status
* #ONC ^property[=].valueCode = #active
* #ONC ^property[+].code = #internalId
* #ONC ^property[=].valueCode = #17457
* #ONC ^property[+].code = #subsumedBy
* #ONC ^property[=].valueCode = #_ActMedicalServiceCode
* #PALL "Palliative" "Provision of care for patients who are living or dying from an advanced illness."
* #PALL ^property[0].code = #status
* #PALL ^property[=].valueCode = #active
* #PALL ^property[+].code = #internalId
* #PALL ^property[=].valueCode = #17452
* #PALL ^property[+].code = #subsumedBy
* #PALL ^property[=].valueCode = #_ActMedicalServiceCode
* #PED "Pediatrics" "Provision of diagnosis and treatment of diseases and disorders affecting children."
* #PED ^property[0].code = #status
* #PED ^property[=].valueCode = #active
* #PED ^property[+].code = #internalId
* #PED ^property[=].valueCode = #17461
* #PED ^property[+].code = #subsumedBy
* #PED ^property[=].valueCode = #_ActMedicalServiceCode
* #PHAR "Pharmaceutical" "Pharmaceutical care performed by a pharmacist."
* #PHAR ^property[0].code = #status
* #PHAR ^property[=].valueCode = #active
* #PHAR ^property[+].code = #internalId
* #PHAR ^property[=].valueCode = #19975
* #PHAR ^property[+].code = #subsumedBy
* #PHAR ^property[=].valueCode = #_ActMedicalServiceCode
* #PHYRHB "Physical Rehab" "Provision of treatment for physical injury."
* #PHYRHB ^property[0].code = #status
* #PHYRHB ^property[=].valueCode = #active
* #PHYRHB ^property[+].code = #internalId
* #PHYRHB ^property[=].valueCode = #17455
* #PHYRHB ^property[+].code = #subsumedBy
* #PHYRHB ^property[=].valueCode = #_ActMedicalServiceCode
* #PSYCH "Psychiatric" "Provision of treatment of psychiatric disorder relating to mental illness."
* #PSYCH ^property[0].code = #status
* #PSYCH ^property[=].valueCode = #active
* #PSYCH ^property[+].code = #internalId
* #PSYCH ^property[=].valueCode = #17458
* #PSYCH ^property[+].code = #subsumedBy
* #PSYCH ^property[=].valueCode = #_ActMedicalServiceCode
* #SURG "Surgical" "Provision of surgical treatment."
* #SURG ^property[0].code = #status
* #SURG ^property[=].valueCode = #active
* #SURG ^property[+].code = #internalId
* #SURG ^property[=].valueCode = #17451
* #SURG ^property[+].code = #subsumedBy
* #SURG ^property[=].valueCode = #_ActMedicalServiceCode
* #ACU "short term/acute" "**Definition:**A list of medications which the patient is only expected to consume for the duration of the current order or limited set of orders and which is not expected to be renewed."
* #ACU ^property[0].code = #status
* #ACU ^property[=].valueCode = #active
* #ACU ^property[+].code = #internalId
* #ACU ^property[=].valueCode = #21756
* #ACU ^property[+].code = #subsumedBy
* #ACU ^property[=].valueCode = #_ActMedicationTherapyDurationWorkingListCode
* #CHRON "continuous/chronic" "**Definition:**A list of medications which are expected to be continued beyond the present order and which the patient should be assumed to be taking unless explicitly stopped."
* #CHRON ^property[0].code = #status
* #CHRON ^property[=].valueCode = #active
* #CHRON ^property[+].code = #internalId
* #CHRON ^property[=].valueCode = #21755
* #CHRON ^property[+].code = #subsumedBy
* #CHRON ^property[=].valueCode = #_ActMedicationTherapyDurationWorkingListCode
* #ONET "one time" "**Definition:**A list of medications which the patient is intended to be administered only once."
* #ONET ^property[0].code = #status
* #ONET ^property[=].valueCode = #active
* #ONET ^property[+].code = #internalId
* #ONET ^property[=].valueCode = #21757
* #ONET ^property[+].code = #subsumedBy
* #ONET ^property[=].valueCode = #_ActMedicationTherapyDurationWorkingListCode
* #PRN "as needed" "**Definition:**A list of medications which the patient will consume intermittently based on the behavior of the condition for which the medication is indicated."
* #PRN ^property[0].code = #status
* #PRN ^property[=].valueCode = #active
* #PRN ^property[+].code = #internalId
* #PRN ^property[=].valueCode = #21758
* #PRN ^property[+].code = #subsumedBy
* #PRN ^property[=].valueCode = #_ActMedicationTherapyDurationWorkingListCode
* #CTLSUB "Controlled Substance" "A monitoring program that focuses on narcotics and/or commonly abused substances that are subject to legal restriction."
* #CTLSUB ^property[0].code = #status
* #CTLSUB ^property[=].valueCode = #active
* #CTLSUB ^property[+].code = #internalId
* #CTLSUB ^property[=].valueCode = #16232
* #CTLSUB ^property[+].code = #subsumedBy
* #CTLSUB ^property[=].valueCode = #_ActMonitoringProtocolCode
* #INV "investigational" "**Definition:**A monitoring program that focuses on a drug which is under investigation and has not received regulatory approval for the condition being investigated"
* #INV ^property[0].code = #status
* #INV ^property[=].valueCode = #active
* #INV ^property[+].code = #internalId
* #INV ^property[=].valueCode = #22860
* #INV ^property[+].code = #subsumedBy
* #INV ^property[=].valueCode = #_ActMonitoringProtocolCode
* #LU "limited use" "**Description:**A drug that can be prescribed (and reimbursed) only if it meets certain criteria."
* #LU ^property[0].code = #status
* #LU ^property[=].valueCode = #active
* #LU ^property[+].code = #internalId
* #LU ^property[=].valueCode = #22025
* #LU ^property[+].code = #subsumedBy
* #LU ^property[=].valueCode = #_ActMonitoringProtocolCode
* #OTC "non prescription medicine" "Medicines designated in this way may be supplied for patient use without a prescription. The exact form of categorisation will vary in different realms."
* #OTC ^property[0].code = #status
* #OTC ^property[=].valueCode = #active
* #OTC ^property[+].code = #internalId
* #OTC ^property[=].valueCode = #23062
* #OTC ^property[+].code = #subsumedBy
* #OTC ^property[=].valueCode = #_ActMonitoringProtocolCode
* #RX "prescription only medicine" "Some form of prescription is required before the related medicine can be supplied for a patient. The exact form of regulation will vary in different realms."
* #RX ^property[0].code = #status
* #RX ^property[=].valueCode = #active
* #RX ^property[+].code = #internalId
* #RX ^property[=].valueCode = #23061
* #RX ^property[+].code = #subsumedBy
* #RX ^property[=].valueCode = #_ActMonitoringProtocolCode
* #SA "special authorization" "**Definition:**A drug that requires prior approval (to be reimbursed) before being dispensed"
* #SA ^property[0].code = #status
* #SA ^property[=].valueCode = #active
* #SA ^property[+].code = #internalId
* #SA ^property[=].valueCode = #22861
* #SA ^property[+].code = #subsumedBy
* #SA ^property[=].valueCode = #_ActMonitoringProtocolCode
* #SAC "special access" "**Description:**A drug that requires special access permission to be prescribed and dispensed."
* #SAC ^property[0].code = #status
* #SAC ^property[=].valueCode = #active
* #SAC ^property[+].code = #internalId
* #SAC ^property[=].valueCode = #22026
* #SAC ^property[+].code = #subsumedBy
* #SAC ^property[=].valueCode = #_ActMonitoringProtocolCode
* #IND01 "imaging study requiring contrast" "**Description:**Contrast agent required for imaging study."
* #IND01 ^property[0].code = #status
* #IND01 ^property[=].valueCode = #active
* #IND01 ^property[+].code = #internalId
* #IND01 ^property[=].valueCode = #21679
* #IND01 ^property[+].code = #subsumedBy
* #IND01 ^property[=].valueCode = #_ActNonObservationIndicationCode
* #IND02 "colonoscopy prep" "**Description:**Provision of prescription or direction to consume a product for purposes of bowel clearance in preparation for a colonoscopy."
* #IND02 ^property[0].code = #status
* #IND02 ^property[=].valueCode = #active
* #IND02 ^property[+].code = #internalId
* #IND02 ^property[=].valueCode = #21680
* #IND02 ^property[+].code = #subsumedBy
* #IND02 ^property[=].valueCode = #_ActNonObservationIndicationCode
* #IND03 "prophylaxis" "**Description:**Provision of medication as a preventative measure during a treatment or other period of increased risk."
* #IND03 ^property[0].code = #status
* #IND03 ^property[=].valueCode = #active
* #IND03 ^property[+].code = #internalId
* #IND03 ^property[=].valueCode = #21681
* #IND03 ^property[+].code = #subsumedBy
* #IND03 ^property[=].valueCode = #_ActNonObservationIndicationCode
* #IND04 "surgical prophylaxis" "**Description:**Provision of medication during pre-operative phase; e.g., antibiotics before dental surgery or bowel prep before colon surgery."
* #IND04 ^property[0].code = #status
* #IND04 ^property[=].valueCode = #active
* #IND04 ^property[+].code = #internalId
* #IND04 ^property[=].valueCode = #21682
* #IND04 ^property[+].code = #subsumedBy
* #IND04 ^property[=].valueCode = #_ActNonObservationIndicationCode
* #IND05 "pregnancy prophylaxis" "**Description:**Provision of medication for pregnancy --e.g., vitamins, antibiotic treatments for vaginal tract colonization, etc."
* #IND05 ^property[0].code = #status
* #IND05 ^property[=].valueCode = #active
* #IND05 ^property[+].code = #internalId
* #IND05 ^property[=].valueCode = #21683
* #IND05 ^property[+].code = #subsumedBy
* #IND05 ^property[=].valueCode = #_ActNonObservationIndicationCode
* #CARELIST "care plan" "List of acts representing a care plan. The acts can be in a varierty of moods including event (EVN) to record acts that have been carried out as part of the care plan."
* #CARELIST ^property[0].code = #status
* #CARELIST ^property[=].valueCode = #active
* #CARELIST ^property[+].code = #internalId
* #CARELIST ^property[=].valueCode = #19984
* #CARELIST ^property[+].code = #subsumedBy
* #CARELIST ^property[=].valueCode = #_ActObservationList
* #CONDLIST "condition list" "List of condition observations."
* #CONDLIST ^property[0].code = #status
* #CONDLIST ^property[=].valueCode = #active
* #CONDLIST ^property[+].code = #internalId
* #CONDLIST ^property[=].valueCode = #21322
* #CONDLIST ^property[+].code = #subsumedBy
* #CONDLIST ^property[=].valueCode = #_ActObservationList
* #GOALLIST "goal list" "List of observations in goal mood."
* #GOALLIST ^property[0].code = #status
* #GOALLIST ^property[=].valueCode = #active
* #GOALLIST ^property[+].code = #internalId
* #GOALLIST ^property[=].valueCode = #19981
* #GOALLIST ^property[+].code = #subsumedBy
* #GOALLIST ^property[=].valueCode = #_ActObservationList
* #VFPAPER "verify paper" "**Definition:**Indicates that the paper version of the record has, should be or is being verified against the electronic version."
* #VFPAPER ^property[0].code = #status
* #VFPAPER ^property[=].valueCode = #active
* #VFPAPER ^property[+].code = #synonymCode
* #VFPAPER ^property[=].valueCode = #VRFPAPER
* #VFPAPER ^property[+].code = #internalId
* #VFPAPER ^property[=].valueCode = #22862
* #VFPAPER ^property[+].code = #subsumedBy
* #VFPAPER ^property[=].valueCode = #_ActObservationVerificationType
* #VRFPAPER "verify paper" "**Definition:**Indicates that the paper version of the record has, should be or is being verified against the electronic version."
* #VRFPAPER ^property[0].code = #status
* #VRFPAPER ^property[=].valueCode = #active
* #VRFPAPER ^property[+].code = #synonymCode
* #VRFPAPER ^property[=].valueCode = #VFPAPER
* #VRFPAPER ^property[+].code = #internalId
* #VRFPAPER ^property[=].valueCode = #22862
* #VRFPAPER ^property[+].code = #subsumedBy
* #VRFPAPER ^property[=].valueCode = #_ActObservationVerificationType
* #ANNDI "diagnostic image note" "**Description:**A note that is specific to a patient's diagnostic images, either historical, current or planned."
* #ANNDI ^property[0].code = #status
* #ANNDI ^property[=].valueCode = #active
* #ANNDI ^property[+].code = #internalId
* #ANNDI ^property[=].valueCode = #22825
* #ANNDI ^property[+].code = #subsumedBy
* #ANNDI ^property[=].valueCode = #_ActPatientAnnotationType
* #ANNGEN "general note" "**Description:**A general or uncategorized note."
* #ANNGEN ^property[0].code = #status
* #ANNGEN ^property[=].valueCode = #active
* #ANNGEN ^property[+].code = #internalId
* #ANNGEN ^property[=].valueCode = #22822
* #ANNGEN ^property[+].code = #subsumedBy
* #ANNGEN ^property[=].valueCode = #_ActPatientAnnotationType
* #ANNIMM "immunization note" "A note that is specific to a patient's immunizations, either historical, current or planned."
* #ANNIMM ^property[0].code = #status
* #ANNIMM ^property[=].valueCode = #active
* #ANNIMM ^property[+].code = #internalId
* #ANNIMM ^property[=].valueCode = #23099
* #ANNIMM ^property[+].code = #subsumedBy
* #ANNIMM ^property[=].valueCode = #_ActPatientAnnotationType
* #ANNLAB "laboratory note" "**Description:**A note that is specific to a patient's laboratory results, either historical, current or planned."
* #ANNLAB ^property[0].code = #status
* #ANNLAB ^property[=].valueCode = #active
* #ANNLAB ^property[+].code = #internalId
* #ANNLAB ^property[=].valueCode = #22824
* #ANNLAB ^property[+].code = #subsumedBy
* #ANNLAB ^property[=].valueCode = #_ActPatientAnnotationType
* #ANNMED "medication note" "**Description:**A note that is specific to a patient's medications, either historical, current or planned."
* #ANNMED ^property[0].code = #status
* #ANNMED ^property[=].valueCode = #active
* #ANNMED ^property[+].code = #internalId
* #ANNMED ^property[=].valueCode = #22823
* #ANNMED ^property[+].code = #subsumedBy
* #ANNMED ^property[=].valueCode = #_ActPatientAnnotationType
* #AFOOT "pedestrian transport"
* #AFOOT ^property[0].code = #status
* #AFOOT ^property[=].valueCode = #active
* #AFOOT ^property[+].code = #synonymCode
* #AFOOT ^property[=].valueCode = #OnFoot
* #AFOOT ^property[+].code = #internalId
* #AFOOT ^property[=].valueCode = #21551
* #AFOOT ^property[+].code = #subsumedBy
* #AFOOT ^property[=].valueCode = #_ActPatientTransportationModeCode
* #OnFoot "pedestrian transport"
* #OnFoot ^property[0].code = #status
* #OnFoot ^property[=].valueCode = #retired
* #OnFoot ^property[+].code = #synonymCode
* #OnFoot ^property[=].valueCode = #AFOOT
* #OnFoot ^property[+].code = #internalId
* #OnFoot ^property[=].valueCode = #21551
* #OnFoot ^property[+].code = #subsumedBy
* #OnFoot ^property[=].valueCode = #_ActPatientTransportationModeCode
* #AMBT "ambulance transport"
* #AMBT ^property[0].code = #status
* #AMBT ^property[=].valueCode = #active
* #AMBT ^property[+].code = #synonymCode
* #AMBT ^property[=].valueCode = #Ambulance
* #AMBT ^property[+].code = #internalId
* #AMBT ^property[=].valueCode = #21547
* #AMBT ^property[+].code = #subsumedBy
* #AMBT ^property[=].valueCode = #_ActPatientTransportationModeCode
* #Ambulance "ambulance transport"
* #Ambulance ^property[0].code = #status
* #Ambulance ^property[=].valueCode = #retired
* #Ambulance ^property[+].code = #synonymCode
* #Ambulance ^property[=].valueCode = #AMBT
* #Ambulance ^property[+].code = #internalId
* #Ambulance ^property[=].valueCode = #21547
* #Ambulance ^property[+].code = #subsumedBy
* #Ambulance ^property[=].valueCode = #_ActPatientTransportationModeCode
* #LAWENF "law enforcement transport"
* #LAWENF ^property[0].code = #status
* #LAWENF ^property[=].valueCode = #active
* #LAWENF ^property[+].code = #synonymCode
* #LAWENF ^property[=].valueCode = #LawEnforcementVehicle
* #LAWENF ^property[+].code = #internalId
* #LAWENF ^property[=].valueCode = #21548
* #LAWENF ^property[+].code = #subsumedBy
* #LAWENF ^property[=].valueCode = #_ActPatientTransportationModeCode
* #LawEnforcementVehicle "law enforcement transport"
* #LawEnforcementVehicle ^property[0].code = #status
* #LawEnforcementVehicle ^property[=].valueCode = #retired
* #LawEnforcementVehicle ^property[+].code = #synonymCode
* #LawEnforcementVehicle ^property[=].valueCode = #LAWENF
* #LawEnforcementVehicle ^property[+].code = #internalId
* #LawEnforcementVehicle ^property[=].valueCode = #21548
* #LawEnforcementVehicle ^property[+].code = #subsumedBy
* #LawEnforcementVehicle ^property[=].valueCode = #_ActPatientTransportationModeCode
* #PRVTRN "private transport"
* #PRVTRN ^property[0].code = #status
* #PRVTRN ^property[=].valueCode = #active
* #PRVTRN ^property[+].code = #synonymCode
* #PRVTRN ^property[=].valueCode = #PrivateTransport
* #PRVTRN ^property[+].code = #internalId
* #PRVTRN ^property[=].valueCode = #21550
* #PRVTRN ^property[+].code = #subsumedBy
* #PRVTRN ^property[=].valueCode = #_ActPatientTransportationModeCode
* #PrivateTransport "private transport"
* #PrivateTransport ^property[0].code = #status
* #PrivateTransport ^property[=].valueCode = #retired
* #PrivateTransport ^property[+].code = #synonymCode
* #PrivateTransport ^property[=].valueCode = #PRVTRN
* #PrivateTransport ^property[+].code = #internalId
* #PrivateTransport ^property[=].valueCode = #21550
* #PrivateTransport ^property[+].code = #subsumedBy
* #PrivateTransport ^property[=].valueCode = #_ActPatientTransportationModeCode
* #PUBTRN "public transport"
* #PUBTRN ^property[0].code = #status
* #PUBTRN ^property[=].valueCode = #active
* #PUBTRN ^property[+].code = #synonymCode
* #PUBTRN ^property[=].valueCode = #PublicTransport
* #PUBTRN ^property[+].code = #internalId
* #PUBTRN ^property[=].valueCode = #21549
* #PUBTRN ^property[+].code = #subsumedBy
* #PUBTRN ^property[=].valueCode = #_ActPatientTransportationModeCode
* #PublicTransport "public transport"
* #PublicTransport ^property[0].code = #status
* #PublicTransport ^property[=].valueCode = #retired
* #PublicTransport ^property[+].code = #synonymCode
* #PublicTransport ^property[=].valueCode = #PUBTRN
* #PublicTransport ^property[+].code = #internalId
* #PublicTransport ^property[=].valueCode = #21549
* #PublicTransport ^property[+].code = #subsumedBy
* #PublicTransport ^property[=].valueCode = #_ActPatientTransportationModeCode
* #ACH "Automated Clearing House" "Automated Clearing House (ACH)."
* #ACH ^property[0].code = #status
* #ACH ^property[=].valueCode = #active
* #ACH ^property[+].code = #internalId
* #ACH ^property[=].valueCode = #17611
* #ACH ^property[+].code = #subsumedBy
* #ACH ^property[=].valueCode = #_ActPaymentCode
* #CHK "Cheque" "A written order to a bank to pay the amount specified from funds on deposit."
* #CHK ^property[0].code = #status
* #CHK ^property[=].valueCode = #active
* #CHK ^property[+].code = #internalId
* #CHK ^property[=].valueCode = #17612
* #CHK ^property[+].code = #subsumedBy
* #CHK ^property[=].valueCode = #_ActPaymentCode
* #DDP "Direct Deposit" "Electronic Funds Transfer (EFT) deposit into the payee's bank account"
* #DDP ^property[0].code = #status
* #DDP ^property[=].valueCode = #active
* #DDP ^property[+].code = #internalId
* #DDP ^property[=].valueCode = #17613
* #DDP ^property[+].code = #subsumedBy
* #DDP ^property[=].valueCode = #_ActPaymentCode
* #NON "Non-Payment Data" "Non-Payment Data."
* #NON ^property[0].code = #status
* #NON ^property[=].valueCode = #active
* #NON ^property[+].code = #internalId
* #NON ^property[=].valueCode = #17614
* #NON ^property[+].code = #subsumedBy
* #NON ^property[=].valueCode = #_ActPaymentCode
* #DF "Daily Fill" "A fill providing sufficient supply for one day"
* #DF ^property[0].code = #status
* #DF ^property[=].valueCode = #active
* #DF ^property[+].code = #internalId
* #DF ^property[=].valueCode = #16214
* #DF ^property[+].code = #subsumedBy
* #DF ^property[=].valueCode = #_ActPharmacySupplyType
* #DF ^property[+].code = #subsumedBy
* #DF ^property[=].valueCode = #RF
* #EM "Emergency Supply" "A supply action where there is no 'valid' order for the supplied medication. E.g. Emergency vacation supply, weekend supply (when prescriber is unavailable to provide a renewal prescription)"
* #EM ^property[0].code = #status
* #EM ^property[=].valueCode = #active
* #EM ^property[+].code = #internalId
* #EM ^property[=].valueCode = #16220
* #EM ^property[+].code = #subsumedBy
* #EM ^property[=].valueCode = #_ActPharmacySupplyType
* #FF "First Fill" "The initial fill against an order. (This includes initial fills against refill orders.)"
* #FF ^property[0].code = #status
* #FF ^property[=].valueCode = #active
* #FF ^property[+].code = #internalId
* #FF ^property[=].valueCode = #16209
* #FF ^property[+].code = #subsumedBy
* #FF ^property[=].valueCode = #_ActPharmacySupplyType
* #FS "Floor stock" "A supply action to restock a smaller more local dispensary."
* #FS ^property[0].code = #status
* #FS ^property[=].valueCode = #active
* #FS ^property[+].code = #internalId
* #FS ^property[=].valueCode = #16222
* #FS ^property[+].code = #subsumedBy
* #FS ^property[=].valueCode = #_ActPharmacySupplyType
* #MS "Manufacturer Sample" "A supply of a manufacturer sample"
* #MS ^property[0].code = #status
* #MS ^property[=].valueCode = #active
* #MS ^property[+].code = #internalId
* #MS ^property[=].valueCode = #16219
* #MS ^property[+].code = #subsumedBy
* #MS ^property[=].valueCode = #_ActPharmacySupplyType
* #RF "Refill" "A fill against an order that has already been filled (or partially filled) at least once."
* #RF ^property[0].code = #status
* #RF ^property[=].valueCode = #active
* #RF ^property[+].code = #internalId
* #RF ^property[=].valueCode = #16215
* #RF ^property[+].code = #subsumedBy
* #RF ^property[=].valueCode = #_ActPharmacySupplyType
* #UD "Unit Dose" "A supply action that provides sufficient material for a single dose."
* #UD ^property[0].code = #status
* #UD ^property[=].valueCode = #active
* #UD ^property[+].code = #internalId
* #UD ^property[=].valueCode = #16223
* #UD ^property[+].code = #subsumedBy
* #UD ^property[=].valueCode = #_ActPharmacySupplyType
* #UD ^property[+].code = #subsumedBy
* #UD ^property[=].valueCode = #RF
* #UDE "unit dose equivalent" "A supply action that provides sufficient material for a single dose via multiple products. E.g. 2 50mg tablets for a 100mg unit dose."
* #UDE ^property[0].code = #status
* #UDE ^property[=].valueCode = #active
* #UDE ^property[+].code = #internalId
* #UDE ^property[=].valueCode = #21824
* #UDE ^property[+].code = #subsumedBy
* #UDE ^property[=].valueCode = #_ActPharmacySupplyType
* #_ActConsent "_ActConsent" "Specifies the type or actual definition of a contractually binding agreement or a non-binding representation of that agreement between a grantor and a grantee as to the exchange of the grantee's considerations in return for the grantor's control of certain assets. The type of assets exchanged include rights, license, terms of service, valued items, information and real property assets and control over such assets such as physical and locatable property; intellectual property; biospecimen; genomic and genetic information related to an individual including that disclosed by genetically related individuals with or without the individual's consent; personal identifiable, pseudonymized, anonymized, de-identified per some rubric, and relinkable variants.\r\n\r\n*Usage Note:* Types or actual definitions of a contractually binding agreement or a non-binding representation of that agreement include:\r\n\r\n *  \\_ActDecision (formally ActConsentDirective), which specifies the type of decision made by the grantor. The decision types are mapped to ISO/TS 17975 Health informatics - Principles and data requirements for consent in the Collection, Use or Disclosure of personal health information;\r\n *  \\_ActPrivacyConsentDirective, which is the parent of types of registry participation consent directives, and of realm specific privacy consent directive policies such as \\_USPrivacyConsentDirective and \\_GDPRPrivacyConsentDirective."
* #_ActConsent ^property[0].code = #status
* #_ActConsent ^property[=].valueCode = #active
* #_ActConsent ^property[+].code = #internalId
* #_ActConsent ^property[=].valueCode = #24098
* #_ActConsent ^property[+].code = #subsumedBy
* #_ActConsent ^property[=].valueCode = #_ActPolicyType
* #_ActInformationActionPolicy "_ActInformationActionPolicy" "The type of action permitted on information by jurisdictional, organizational, or personal policy."
* #_ActInformationActionPolicy ^property[0].code = #notSelectable
* #_ActInformationActionPolicy ^property[=].valueBoolean = true
* #_ActInformationActionPolicy ^property[+].code = #status
* #_ActInformationActionPolicy ^property[=].valueCode = #active
* #_ActInformationActionPolicy ^property[+].code = #internalId
* #_ActInformationActionPolicy ^property[=].valueCode = #24087
* #_ActInformationActionPolicy ^property[+].code = #subsumedBy
* #_ActInformationActionPolicy ^property[=].valueCode = #_ActPolicyType
* #_ActInformationPolicy "_ActInformationPolicy" "Information management directives related to privacy, security, integrity, and control concerns, which may be governed by specific laws; based on private sector self-governance; adopted \"best practices\" recognized by a community of interest; or terms of license, participation, or service as implemented in jurisdictional, organizational, or personal policies."
* #_ActInformationPolicy ^property[0].code = #notSelectable
* #_ActInformationPolicy ^property[=].valueBoolean = true
* #_ActInformationPolicy ^property[+].code = #status
* #_ActInformationPolicy ^property[=].valueCode = #active
* #_ActInformationPolicy ^property[+].code = #internalId
* #_ActInformationPolicy ^property[=].valueCode = #24065
* #_ActInformationPolicy ^property[+].code = #subsumedBy
* #_ActInformationPolicy ^property[=].valueCode = #_ActPolicyType
* #_ActPrivacyPolicy "ActPrivacyPolicy" "A policy deeming certain information to be private to an individual or organization.\r\n\r\n*Definition:* A mandate, obligation, requirement, rule, or expectation relating to privacy.\r\n\r\n*Discussion:* ActPrivacyPolicyType codes support the designation of the 1..\\* policies that are applicable to an Act such as a Consent Directive, a Role such as a VIP Patient, or an Entity such as a patient who is a minor. 1..\\* ActPrivacyPolicyType values may be associated with an Act or Role to indicate the policies that govern the assignment of an Act or Role confidentialityCode. Use of multiple ActPrivacyPolicyType values enables fine grain specification of applicable policies, but must be carefully assigned to ensure cogency and avoid creation of conflicting policy mandates.\r\n\r\n*Usage Note:* Statutory title may be named in the ActClassPolicy Act Act.title to specify which privacy policy is being referenced."
* #_ActPrivacyPolicy ^property[0].code = #notSelectable
* #_ActPrivacyPolicy ^property[=].valueBoolean = true
* #_ActPrivacyPolicy ^property[+].code = #status
* #_ActPrivacyPolicy ^property[=].valueCode = #active
* #_ActPrivacyPolicy ^property[+].code = #internalId
* #_ActPrivacyPolicy ^property[=].valueCode = #23323
* #_ActPrivacyPolicy ^property[+].code = #subsumedBy
* #_ActPrivacyPolicy ^property[=].valueCode = #_ActPolicyType
* #ActTrustPolicyType "trust policy" "A mandate, obligation, requirement, rule, or expectation conveyed as security metadata between senders and receivers required to establish the reliability, authenticity, and trustworthiness of their transactions.\r\n\r\nTrust security metadata are observation made about aspects of trust applicable to an IT resource (data, information object, service, or system capability).\r\n\r\nTrust applicable to IT resources is established and maintained in and among security domains, and may be comprised of observations about the domain's trust authority, trust framework, trust policy, trust interaction rules, means for assessing and monitoring adherence to trust policies, mechanisms that enforce trust, and quality and reliability measures of assurance in those mechanisms. \\[Based on ISO IEC 10181-1 and NIST SP 800-63-2\\]\r\n\r\nFor example, identity proofing , level of assurance, and Trust Framework."
* #ActTrustPolicyType ^property[0].code = #notSelectable
* #ActTrustPolicyType ^property[=].valueBoolean = true
* #ActTrustPolicyType ^property[+].code = #status
* #ActTrustPolicyType ^property[=].valueCode = #active
* #ActTrustPolicyType ^property[+].code = #internalId
* #ActTrustPolicyType ^property[=].valueCode = #23658
* #ActTrustPolicyType ^property[+].code = #subsumedBy
* #ActTrustPolicyType ^property[=].valueCode = #_ActPolicyType
* #COVPOL "benefit policy" "**Description:**A mandate, obligation, requirement, rule, or expectation unilaterally imposed on benefit coverage under a policy or program by a sponsor, underwriter or payor on:\r\n\r\n *  The activity of another party\r\n *  The behavior of another party\r\n *  The manner in which an act is executed\r\n\r\n**Examples:**A clinical protocol imposed by a payer to which a provider must adhere in order to be paid for providing the service. A formulary from which a provider must select prescribed drugs in order for the patient to incur a lower copay."
* #COVPOL ^property[0].code = #status
* #COVPOL ^property[=].valueCode = #active
* #COVPOL ^property[+].code = #internalId
* #COVPOL ^property[=].valueCode = #22183
* #COVPOL ^property[+].code = #subsumedBy
* #COVPOL ^property[=].valueCode = #_ActPolicyType
* #SecurityPolicy "security policy" "Types of security policies that further specify the ActClassPolicy value set.\r\n\r\n**Examples:**\r\n\r\n *  obligation to encrypt\r\n *  refrain from redisclosure without consent"
* #SecurityPolicy ^property[0].code = #status
* #SecurityPolicy ^property[=].valueCode = #active
* #SecurityPolicy ^property[+].code = #internalId
* #SecurityPolicy ^property[=].valueCode = #23371
* #SecurityPolicy ^property[+].code = #subsumedBy
* #SecurityPolicy ^property[=].valueCode = #_ActPolicyType
* #_ActGDPRConsentDirective "_ActGDPRConsentDirective" "European Union General Data Protection Regulation (GDPR) consent directives."
* #_ActGDPRConsentDirective ^property[0].code = #notSelectable
* #_ActGDPRConsentDirective ^property[=].valueBoolean = true
* #_ActGDPRConsentDirective ^property[+].code = #status
* #_ActGDPRConsentDirective ^property[=].valueCode = #active
* #_ActGDPRConsentDirective ^property[+].code = #internalId
* #_ActGDPRConsentDirective ^property[=].valueCode = #24109
* #_ActGDPRConsentDirective ^property[+].code = #subsumedBy
* #_ActGDPRConsentDirective ^property[=].valueCode = #_ActPrivacyConsentDirective
* #_ActGenericConsentDirective "_ActGenericConsentDirective" "Specifies types of consent directives authorizing a registry or repository to collect and, under certain terms, manage the access, use, and disclosure of personal information, including de-identified information, and personal effects, such as biometrics, biospecimen or genetic material, which may be used to identify an individual.\r\n\r\nRegistries governed by registry consent directives are data management systems, which use metadata to support the collection, access, use, and disclosure of personal information or effects as well as observational or analytic information generated about personal information or effects stored in federated repositories. Such registries are used for a variety of purposes by federated health information exchanges, health information systems, personal record systems, and research organizations to locate and retrieve personal information or effects as well as observational or analytic information generated about personal information stored externally to their systems.\r\n\r\nRepositories governed by registry consent directives are data stores used to collect, access, use, and disclose personal information or effects as well as observational or analytic information generated about personal information or effects and metadata used to manage the repository contents. Such repositories are used for a variety of purposes by centralized health information exchanges, health information systems used by providers and payers, personal record systems, and research organizations. A repository typically includes a registry component that provides the data store with content management capabilities for internal purposes. A repository may also interface with one or more external registries, which provide federated content management."
* #_ActGenericConsentDirective ^property[0].code = #notSelectable
* #_ActGenericConsentDirective ^property[=].valueBoolean = true
* #_ActGenericConsentDirective ^property[+].code = #status
* #_ActGenericConsentDirective ^property[=].valueCode = #active
* #_ActGenericConsentDirective ^property[+].code = #internalId
* #_ActGenericConsentDirective ^property[=].valueCode = #24112
* #_ActGenericConsentDirective ^property[+].code = #subsumedBy
* #_ActGenericConsentDirective ^property[=].valueCode = #_ActPrivacyConsentDirective
* #_ActUSPrivacyConsentDirective "_ActUSPrivacyConsentDirective" "Specific US privacy consent directives in accordance with US federal, state, regional, organizational, or personal privacy policies."
* #_ActUSPrivacyConsentDirective ^property[0].code = #notSelectable
* #_ActUSPrivacyConsentDirective ^property[=].valueBoolean = true
* #_ActUSPrivacyConsentDirective ^property[+].code = #status
* #_ActUSPrivacyConsentDirective ^property[=].valueCode = #active
* #_ActUSPrivacyConsentDirective ^property[+].code = #internalId
* #_ActUSPrivacyConsentDirective ^property[=].valueCode = #24099
* #_ActUSPrivacyConsentDirective ^property[+].code = #subsumedBy
* #_ActUSPrivacyConsentDirective ^property[=].valueCode = #_ActPrivacyConsentDirective
* #_ActGDPRPrivacyLaw "General Data Protection Regulation" "GDPR is a regulation on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (Data Protection Directive). Promulgated by the European Parliament and Council of the European Union. Regulation available at L119, 4 May 2016, p. 1-88.\r\n\r\nGDPR privacy policies specifying types of lawful personal data processing based on a controller meeting one or more processing condition such as specified by law, compliance with data controller legal obligations, protection of data subject's vital interests, perform tasks in the public interest, related to legal claims, research and statistics, management of health or social care systems, legitimate interests of controller or third party. Processing sensitive personal data, including genetic, biometric and health data, as well as personal data from which racial and ethnic origin, political opinions, religious or ideological convictions or membership in a union can be attributed to a person, requires meeting at least one sensitive personal processing condition.\r\n\r\nGDPR 'processing' means any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction. Article 4 https://gdpr-info.eu/art-4-gdpr/\r\n\r\n*Usage Note:* \r\n\r\n *  Confidentiality: e.g., U (unrestricted) for anonymized personal information; L (low) for pseudonymized U (unrestricted) for anonymized personal information; M (moderate) for indirectly identifiable information such as test scores and work times; N (normal) for personal information; and R (restricted) for sensitive personal information\r\n *  DPR sensitivity \\[personal data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data for the purpose of uniquely identifying a natural person, data concerning health or data concerning a natural person's sex life or sexual orientation, some of which are defined at Article 4 https://gdpr-info.eu/art-4-gdpr/\r\n *  GDPR processing policies and GDPR ConsentDirectiveTypes, such as data subject consent and research consent.\r\n *  Other security category codes, such as compartment codes for legitimate relationship,\r\n *  Handling instructions including\r\n *  Purpose of use stipulated in a GDPR consent or contract restricting processing or related to the scope of the processing policy such as public health, research, and legal obligations\r\n *  Obligation policies such as GDPR Information Obligations https://gdpr-info.eu/issues/information-obligations, data minimization and deleting when processing is complete\r\n *  Refrain policies such as no relinking\r\n\r\nSee Intersoft GDPR at https://gdpr-info.eu/issues/personal-data/ Art. 4 GDPR Definitions https://gdpr-info.eu/art-4-gdpr/ Art. 9 GDPR Processing of special categories of personal data https://gdpr-info.eu/art-9-gdpr/ Relevant Recitals (26) Not applicable to anonymous data (30) Online identifiers for profiling and identification (34) Genetic data (35) Health data (51) Protecting sensitive personal data at Intersoft GDPR briefing papers and navigating tool https://gdpr-info.eu/\r\n\r\nAuthorities\r\n\r\n *  European Data Protection Supervisor - Security Measures for Personal Data Processing (Link)\r\n *  Data Protection Authority Isle of Man - Know your data - Mapping the 5 W's (Link)\r\n *  Data Protection Authority UK - Key definitions (Link)\r\n *  European Commission - What is personal data? (Link)\r\n *  European Commission - What personal data is considered sensitive? (Link)\r\n *  EU publications - Handbook on European data protection law - Personal data, page 83 (Link)\r\n\r\nExpert contribution A&L Goodbody - The GDPR: A Guide for Businesses - Definition of Personal & Sensitive Data, Page 8 (Link) Bird & Bird - Sensitive data and lawful processing (Link) https://ec.europa.eu/commission/priorities/justice-and-fundamental-rights/data-protection/2018-reform-eu-data-protection-rules\\_en General Data Protection Regulation https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1528874672298&uri=CELEX%3A32016R0679 Communication on data protection - guidance on direct application of the GDPR http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1517578296944&uri=CELEX%3A52018DC0043 Intersoft GDPR briefing papers and navigating tool https://gdpr-info.eu/"
* #_ActGDPRPrivacyLaw ^property[0].code = #notSelectable
* #_ActGDPRPrivacyLaw ^property[=].valueBoolean = true
* #_ActGDPRPrivacyLaw ^property[+].code = #status
* #_ActGDPRPrivacyLaw ^property[=].valueCode = #active
* #_ActGDPRPrivacyLaw ^property[+].code = #internalId
* #_ActGDPRPrivacyLaw ^property[=].valueCode = #24120
* #_ActGDPRPrivacyLaw ^property[+].code = #subsumedBy
* #_ActGDPRPrivacyLaw ^property[=].valueCode = #_ActPrivacyLaw
* #_ActUSPrivacyLaw "_ActUSPrivacyLaw" "*Definition:* A jurisdictional mandate in the U.S. relating to privacy.\r\n\r\n*Usage Note:* ActPrivacyLaw codes may be associated with an Act or a Role to indicate the legal provision to which the assignment of an Act.confidentialityCode or Role.confidentialtyCode complies. May be used to further specify rationale for assignment of other ActPrivacyPolicy codes in the US realm, e.g., ETH and 42CFRPart2 can be differentiated from ETH and Title38Part1."
* #_ActUSPrivacyLaw ^property[0].code = #status
* #_ActUSPrivacyLaw ^property[=].valueCode = #active
* #_ActUSPrivacyLaw ^property[+].code = #internalId
* #_ActUSPrivacyLaw ^property[=].valueCode = #23760
* #_ActUSPrivacyLaw ^property[+].code = #subsumedBy
* #_ActUSPrivacyLaw ^property[=].valueCode = #_ActPrivacyLaw
* #_ActConsentDirective "ActConsentDirective" "Specifies the type of agreement between one or more grantor and grantee in which rights and obligations related to one or more shared items of interest are allocated.\r\n\r\n*Usage Note:* Such agreements may be considered \"consent directives\" or \"contracts\" depending on the context, and are considered closely related or synonymous from a legal perspective.\r\n\r\n**Examples:** \r\n\r\n *  Healthcare Privacy Consent Directive permitting or restricting in whole or part the collection, access, use, and disclosure of health information, and any associated handling caveats.\r\n *  Healthcare Medical Consent Directive to receive medical procedures after being informed of risks and benefits, thereby reducing the grantee's liability.\r\n *  Research Informed Consent for participation in clinical trials and disclosure of health information after being informed of risks and benefits, thereby reducing the grantee's liability.\r\n *  Substitute decision maker delegation in which the grantee assumes responsibility to act on behalf of the grantor.\r\n *  Contracts in which the agreement requires assent/dissent by the grantor of terms offered by a grantee, a consumer opts out of an \"award\" system for use of a retailer's marketing or credit card vendor's point collection cards in exchange for allowing purchase tracking and profiling.\r\n *  A mobile device or App privacy policy and terms of service to which a user must agree in whole or in part in order to utilize the service.\r\n *  Agreements between a client and an authorization server or between an authorization server and a resource operator and/or resource owner permitting or restricting e.g., collection, access, use, and disclosure of information, and any associated handling caveats."
* #_ActConsentDirective ^property[0].code = #notSelectable
* #_ActConsentDirective ^property[=].valueBoolean = true
* #_ActConsentDirective ^property[+].code = #status
* #_ActConsentDirective ^property[=].valueCode = #active
* #_ActConsentDirective ^property[+].code = #internalId
* #_ActConsentDirective ^property[=].valueCode = #23324
* #_ActConsentDirective ^property[+].code = #subsumedBy
* #_ActConsentDirective ^property[=].valueCode = #_ActPrivacyPolicy
* #_ActPrivacyLaw "ActPrivacyLaw" "A jurisdictional mandate, regulation, obligation, requirement, rule, or expectation deeming certain information to be private to an individual or organization, which is imposed on:\r\n\r\n *  The activity of a governed party\r\n *  The behavior of a governed party\r\n *  The manner in which an act is executed by a governed party"
* #_ActPrivacyLaw ^property[0].code = #notSelectable
* #_ActPrivacyLaw ^property[=].valueBoolean = true
* #_ActPrivacyLaw ^property[+].code = #status
* #_ActPrivacyLaw ^property[=].valueCode = #active
* #_ActPrivacyLaw ^property[+].code = #internalId
* #_ActPrivacyLaw ^property[=].valueCode = #23328
* #_ActPrivacyLaw ^property[+].code = #subsumedBy
* #_ActPrivacyLaw ^property[=].valueCode = #_ActPrivacyPolicy
* #_InformationSensitivityPolicy "InformationSensitivityPolicy" "A mandate, obligation, requirement, rule, or expectation characterizing the value or importance of a resource and may include its vulnerability. (Based on ISO7498-2:1989. Note: The vulnerability of personally identifiable sensitive information may be based on concerns that the unauthorized disclosure may result in social stigmatization or discrimination.) Description: Types of Sensitivity policy that apply to Acts or Roles. A sensitivity policy is adopted by an enterprise or group of enterprises (a 'policy domain') through a formal data use agreement that stipulates the value, importance, and vulnerability of information. A sensitivity code representing a sensitivity policy may be associated with criteria such as categories of information or sets of information identifiers (e.g., a value set of clinical codes or branch in a code system hierarchy). These criteria may in turn be used for the Policy Decision Point in a Security Engine. A sensitivity code may be used to set the confidentiality code used on information about Acts and Roles to trigger the security mechanisms required to control how security principals (i.e., a person, a machine, a software application) may act on the information (e.g., collection, access, use, or disclosure). Sensitivity codes are never assigned to the transport or business envelope containing patient specific information being exchanged outside of a policy domain as this would disclose the information intended to be protected by the policy. When sensitive information is exchanged with others outside of a policy domain, the confidentiality code on the transport or business envelope conveys the receiver's responsibilities and indicates the how the information is to be safeguarded without unauthorized disclosure of the sensitive information. This ensures that sensitive information is treated by receivers as the sender intends, accomplishing interoperability without point to point negotiations.\r\n\r\n*Usage Note:* Sensitivity codes are not useful for interoperability outside of a policy domain because sensitivity policies are typically localized and vary drastically across policy domains even for the same information category because of differing organizational business rules, security policies, and jurisdictional requirements. For example, an employee's sensitivity code would make little sense for use outside of a policy domain. 'Taboo' would rarely be useful outside of a policy domain unless there are jurisdictional requirements requiring that a provider disclose sensitive information to a patient directly. Sensitivity codes may be more appropriate in a legacy system's Master Files in order to notify those who access a patient's orders and observations about the sensitivity policies that apply. Newer systems may have a security engine that uses a sensitivity policy's criteria directly. The specializable InformationSensitivityPolicy Act.code may be useful in some scenarios if used in combination with a sensitivity identifier and/or Act.title."
* #_InformationSensitivityPolicy ^property[0].code = #notSelectable
* #_InformationSensitivityPolicy ^property[=].valueBoolean = true
* #_InformationSensitivityPolicy ^property[+].code = #status
* #_InformationSensitivityPolicy ^property[=].valueCode = #active
* #_InformationSensitivityPolicy ^property[+].code = #internalId
* #_InformationSensitivityPolicy ^property[=].valueCode = #23329
* #_InformationSensitivityPolicy ^property[+].code = #subsumedBy
* #_InformationSensitivityPolicy ^property[=].valueCode = #_ActPrivacyPolicy
* #COMPT "compartment" "This is the healthcare analog to the US Intelligence Community's concept of a Special Access Program. Compartment codes may be used in as a field value in an initiator's clearance to indicate permission to access and use an IT Resource with a security label having the same compartment value in security category label field.\r\n\r\nMap: Aligns with ISO 2382-8 definition of Compartment - \"A division of data into isolated blocks with separate security controls for the purpose of reducing risk.\""
* #COMPT ^property[0].code = #status
* #COMPT ^property[=].valueCode = #active
* #COMPT ^property[+].code = #internalId
* #COMPT ^property[=].valueCode = #23577
* #COMPT ^property[+].code = #subsumedBy
* #COMPT ^property[=].valueCode = #_ActPrivacyPolicy
* #_ActBillableServiceCode "ActBillableServiceCode" "**Definition:** An identifying code for billable services, as opposed to codes for similar services used to identify them for functional purposes."
* #_ActBillableServiceCode ^property[0].code = #notSelectable
* #_ActBillableServiceCode ^property[=].valueBoolean = true
* #_ActBillableServiceCode ^property[+].code = #status
* #_ActBillableServiceCode ^property[=].valueCode = #retired
* #_ActBillableServiceCode ^property[+].code = #internalId
* #_ActBillableServiceCode ^property[=].valueCode = #22218
* #_ActBillableServiceCode ^property[+].code = #subsumedBy
* #_ActBillableServiceCode ^property[=].valueCode = #_ActProcedureCode
* #_ActOralHealthProcedureCode "ActOralHealthProcedureCode" "**Description:**An identifying code for oral health interventions/procedures."
* #_ActOralHealthProcedureCode ^property[0].code = #notSelectable
* #_ActOralHealthProcedureCode ^property[=].valueBoolean = true
* #_ActOralHealthProcedureCode ^property[+].code = #status
* #_ActOralHealthProcedureCode ^property[=].valueCode = #retired
* #_ActOralHealthProcedureCode ^property[+].code = #internalId
* #_ActOralHealthProcedureCode ^property[=].valueCode = #22178
* #_ActOralHealthProcedureCode ^property[+].code = #subsumedBy
* #_ActOralHealthProcedureCode ^property[=].valueCode = #_ActProcedureCode
* #LOAN "Loan" "Temporary supply of a product without transfer of ownership for the product."
* #LOAN ^property[0].code = #status
* #LOAN ^property[=].valueCode = #active
* #LOAN ^property[+].code = #internalId
* #LOAN ^property[=].valueCode = #17961
* #LOAN ^property[+].code = #subsumedBy
* #LOAN ^property[=].valueCode = #_ActProductAcquisitionCode
* #TRANSFER "Transfer" "Transfer of ownership for a product."
* #TRANSFER ^property[0].code = #status
* #TRANSFER ^property[=].valueCode = #active
* #TRANSFER ^property[+].code = #internalId
* #TRANSFER ^property[=].valueCode = #17959
* #TRANSFER ^property[+].code = #subsumedBy
* #TRANSFER ^property[=].valueCode = #_ActProductAcquisitionCode
* #CHAR "charity program" "**Definition:** A program that covers the cost of services provided directly to a beneficiary who typically has no other source of coverage without charge."
* #CHAR ^property[0].code = #status
* #CHAR ^property[=].valueCode = #active
* #CHAR ^property[+].code = #internalId
* #CHAR ^property[=].valueCode = #22123
* #CHAR ^property[+].code = #subsumedBy
* #CHAR ^property[=].valueCode = #_ActProgramTypeCode
* #CRIME "crime victim program" "**Definition:** A program that covers the cost of services provided to crime victims for injuries or losses related to the occurrence of a crime."
* #CRIME ^property[0].code = #status
* #CRIME ^property[=].valueCode = #active
* #CRIME ^property[+].code = #internalId
* #CRIME ^property[=].valueCode = #22124
* #CRIME ^property[+].code = #subsumedBy
* #CRIME ^property[=].valueCode = #_ActProgramTypeCode
* #EAP "employee assistance program" "**Definition:** An employee assistance program is run by an employer or employee organization for the purpose of providing benefits and covering all or part of the cost for employees to receive counseling, referrals, and advice in dealing with stressful issues in their lives. These may include substance abuse, bereavement, marital problems, weight issues, or general wellness issues. The services are usually provided by a third-party, rather than the company itself, and the company receives only summary statistical data from the service provider. Employee's names and services received are kept confidential."
* #EAP ^property[0].code = #status
* #EAP ^property[=].valueCode = #active
* #EAP ^property[+].code = #internalId
* #EAP ^property[=].valueCode = #22125
* #EAP ^property[+].code = #subsumedBy
* #EAP ^property[=].valueCode = #_ActProgramTypeCode
* #GOVEMP "government employee health program" "**Definition:** A set of codes used to indicate a government program that is an organized structure for administering and funding coverage of a benefit package for covered parties meeting eligibility criteria, typically related to employment, health and financial status. Government programs are established or permitted by legislation with provisions for ongoing government oversight. Regulation mandates the structure of the program, the manner in which it is funded and administered, covered benefits, provider types, eligibility criteria and financial participation. A government agency is charged with implementing the program in accordance to the regulation\r\n\r\n**Example:** Federal employee health benefit program in the U.S."
* #GOVEMP ^property[0].code = #status
* #GOVEMP ^property[=].valueCode = #active
* #GOVEMP ^property[+].code = #internalId
* #GOVEMP ^property[=].valueCode = #22126
* #GOVEMP ^property[+].code = #subsumedBy
* #GOVEMP ^property[=].valueCode = #_ActProgramTypeCode
* #HIRISK "high risk pool program" "**Definition:** A government program that provides health coverage to individuals who are considered medically uninsurable or high risk, and who have been denied health insurance due to a serious health condition. In certain cases, it also applies to those who have been quoted very high premiums a\" again, due to a serious health condition. The pool charges premiums for coverage. Because the pool covers high-risk people, it incurs a higher level of claims than premiums can cover. The insurance industry pays into the pool to make up the difference and help it remain viable."
* #HIRISK ^property[0].code = #status
* #HIRISK ^property[=].valueCode = #active
* #HIRISK ^property[+].code = #internalId
* #HIRISK ^property[=].valueCode = #22127
* #HIRISK ^property[+].code = #subsumedBy
* #HIRISK ^property[=].valueCode = #_ActProgramTypeCode
* #IND "indigenous peoples health program" "**Definition:** Services provided directly and through contracted and operated indigenous peoples health programs.\r\n\r\n**Example:** Indian Health Service in the U.S."
* #IND ^property[0].code = #status
* #IND ^property[=].valueCode = #active
* #IND ^property[+].code = #internalId
* #IND ^property[=].valueCode = #22128
* #IND ^property[+].code = #subsumedBy
* #IND ^property[=].valueCode = #_ActProgramTypeCode
* #MILITARY "military health program" "**Definition:** A government program that provides coverage for health services to military personnel, retirees, and dependents. A covered party who is a subscriber can choose from among Fee-for-Service (FFS) plans, and their Preferred Provider Organizations (PPO), or Plans offering a Point of Service (POS) Product, or Health Maintenance Organizations.\r\n\r\n**Example:** In the U.S., TRICARE, CHAMPUS."
* #MILITARY ^property[0].code = #status
* #MILITARY ^property[=].valueCode = #active
* #MILITARY ^property[+].code = #internalId
* #MILITARY ^property[=].valueCode = #22130
* #MILITARY ^property[+].code = #subsumedBy
* #MILITARY ^property[=].valueCode = #_ActProgramTypeCode
* #RETIRE "retiree health program" "**Definition:** A government mandated program with specific eligibility requirements based on premium contributions made during employment, length of employment, age, and employment status, e.g., being retired, disabled, or a dependent of a covered party under this program. Benefits typically include ambulatory, inpatient, and long-term care, such as hospice care, home health care and respite care."
* #RETIRE ^property[0].code = #status
* #RETIRE ^property[=].valueCode = #active
* #RETIRE ^property[+].code = #internalId
* #RETIRE ^property[=].valueCode = #22129
* #RETIRE ^property[+].code = #subsumedBy
* #RETIRE ^property[=].valueCode = #_ActProgramTypeCode
* #SOCIAL "social service program" "**Definition:** A social service program funded by a public or governmental entity.\r\n\r\n**Example:** Programs providing habilitation, food, lodging, medicine, transportation, equipment, devices, products, education, training, counseling, alteration of living or work space, and other resources to persons meeting eligibility criteria."
* #SOCIAL ^property[0].code = #status
* #SOCIAL ^property[=].valueCode = #active
* #SOCIAL ^property[+].code = #internalId
* #SOCIAL ^property[=].valueCode = #22144
* #SOCIAL ^property[+].code = #subsumedBy
* #SOCIAL ^property[=].valueCode = #_ActProgramTypeCode
* #VET "veteran health program" "**Definition:** Services provided directly and through contracted and operated veteran health programs."
* #VET ^property[0].code = #status
* #VET ^property[=].valueCode = #active
* #VET ^property[+].code = #internalId
* #VET ^property[=].valueCode = #22145
* #VET ^property[+].code = #subsumedBy
* #VET ^property[=].valueCode = #_ActProgramTypeCode
* #SREC "specimen received" "**Description:**Specimen has been received by the participating organization/department."
* #SREC ^property[0].code = #status
* #SREC ^property[=].valueCode = #active
* #SREC ^property[+].code = #internalId
* #SREC ^property[=].valueCode = #21675
* #SREC ^property[+].code = #subsumedBy
* #SREC ^property[=].valueCode = #_ActSpecimenTransportCode
* #SSTOR "specimen in storage" "**Description:**Specimen has been placed into storage at a participating location."
* #SSTOR ^property[0].code = #status
* #SSTOR ^property[=].valueCode = #active
* #SSTOR ^property[+].code = #internalId
* #SSTOR ^property[=].valueCode = #21677
* #SSTOR ^property[+].code = #subsumedBy
* #SSTOR ^property[=].valueCode = #_ActSpecimenTransportCode
* #STRAN "specimen in transit" "**Description:**Specimen has been put in transit to a participating receiver."
* #STRAN ^property[0].code = #status
* #STRAN ^property[=].valueCode = #active
* #STRAN ^property[+].code = #internalId
* #STRAN ^property[=].valueCode = #21676
* #STRAN ^property[+].code = #subsumedBy
* #STRAN ^property[=].valueCode = #_ActSpecimenTransportCode
* #ACID "Acidification" "The lowering of specimen pH through the addition of an acid"
* #ACID ^property[0].code = #status
* #ACID ^property[=].valueCode = #active
* #ACID ^property[+].code = #internalId
* #ACID ^property[=].valueCode = #14044
* #ACID ^property[+].code = #subsumedBy
* #ACID ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #ALK "Alkalization" "The act rendering alkaline by impregnating with an alkali; a conferring of alkaline qualities."
* #ALK ^property[0].code = #status
* #ALK ^property[=].valueCode = #active
* #ALK ^property[+].code = #internalId
* #ALK ^property[=].valueCode = #14046
* #ALK ^property[+].code = #subsumedBy
* #ALK ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #DEFB "Defibrination" "The removal of fibrin from whole blood or plasma through physical or chemical means"
* #DEFB ^property[0].code = #status
* #DEFB ^property[=].valueCode = #active
* #DEFB ^property[+].code = #internalId
* #DEFB ^property[=].valueCode = #14043
* #DEFB ^property[+].code = #subsumedBy
* #DEFB ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #FILT "Filtration" "The passage of a liquid through a filter, accomplished by gravity, pressure or vacuum (suction)."
* #FILT ^property[0].code = #status
* #FILT ^property[=].valueCode = #active
* #FILT ^property[+].code = #internalId
* #FILT ^property[=].valueCode = #14047
* #FILT ^property[+].code = #subsumedBy
* #FILT ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #LDLP "LDL Precipitation"
* #LDLP ^property[0].code = #status
* #LDLP ^property[=].valueCode = #active
* #LDLP ^property[+].code = #internalId
* #LDLP ^property[=].valueCode = #14041
* #LDLP ^property[+].code = #subsumedBy
* #LDLP ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #NEUT "Neutralization" "The act or process by which an acid and a base are combined in such proportions that the resulting compound is neutral."
* #NEUT ^property[0].code = #status
* #NEUT ^property[=].valueCode = #active
* #NEUT ^property[+].code = #internalId
* #NEUT ^property[=].valueCode = #14045
* #NEUT ^property[+].code = #subsumedBy
* #NEUT ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #RECA "Recalcification" "The addition of calcium back to a specimen after it was removed by chelating agents"
* #RECA ^property[0].code = #status
* #RECA ^property[=].valueCode = #active
* #RECA ^property[+].code = #internalId
* #RECA ^property[=].valueCode = #14042
* #RECA ^property[+].code = #subsumedBy
* #RECA ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #UFIL "Ultrafiltration" "The filtration of a colloidal substance through a semipermeable medium that allows only the passage of small molecules."
* #UFIL ^property[0].code = #status
* #UFIL ^property[=].valueCode = #active
* #UFIL ^property[+].code = #internalId
* #UFIL ^property[=].valueCode = #14048
* #UFIL ^property[+].code = #subsumedBy
* #UFIL ^property[=].valueCode = #_ActSpecimenTreatmentCode
* #ARTBLD "ActSpecObsArtBldCode" "Describes the artificial blood identifier that is associated with the specimen."
* #ARTBLD ^property[0].code = #status
* #ARTBLD ^property[=].valueCode = #active
* #ARTBLD ^property[+].code = #internalId
* #ARTBLD ^property[=].valueCode = #14387
* #ARTBLD ^property[+].code = #subsumedBy
* #ARTBLD ^property[=].valueCode = #_ActSpecObsCode
* #DILUTION "ActSpecObsDilutionCode" "An observation that reports the dilution of a sample."
* #DILUTION ^property[0].code = #status
* #DILUTION ^property[=].valueCode = #active
* #DILUTION ^property[+].code = #internalId
* #DILUTION ^property[=].valueCode = #14352
* #DILUTION ^property[+].code = #subsumedBy
* #DILUTION ^property[=].valueCode = #_ActSpecObsCode
* #EVNFCTS "ActSpecObsEvntfctsCode" "Domain provides codes that qualify the ActLabObsEnvfctsCode domain. (Environmental Factors)"
* #EVNFCTS ^property[0].code = #status
* #EVNFCTS ^property[=].valueCode = #active
* #EVNFCTS ^property[+].code = #internalId
* #EVNFCTS ^property[=].valueCode = #14390
* #EVNFCTS ^property[+].code = #subsumedBy
* #EVNFCTS ^property[=].valueCode = #_ActSpecObsCode
* #INTFR "ActSpecObsInterferenceCode" "An observation that relates to factors that may potentially cause interference with the observation"
* #INTFR ^property[0].code = #status
* #INTFR ^property[=].valueCode = #active
* #INTFR ^property[+].code = #internalId
* #INTFR ^property[=].valueCode = #14382
* #INTFR ^property[+].code = #subsumedBy
* #INTFR ^property[=].valueCode = #_ActSpecObsCode
* #VOLUME "ActSpecObsVolumeCode" "An observation that reports the volume of a sample."
* #VOLUME ^property[0].code = #status
* #VOLUME ^property[=].valueCode = #active
* #VOLUME ^property[+].code = #internalId
* #VOLUME ^property[=].valueCode = #14369
* #VOLUME ^property[+].code = #subsumedBy
* #VOLUME ^property[=].valueCode = #_ActSpecObsCode
* #DRUG "Drug therapy" "The introduction of a drug into a subject with the intention of altering its biologic state with the intent of improving its health status."
* #DRUG ^property[0].code = #status
* #DRUG ^property[=].valueCode = #active
* #DRUG ^property[+].code = #internalId
* #DRUG ^property[=].valueCode = #21518
* #DRUG ^property[+].code = #subsumedBy
* #DRUG ^property[=].valueCode = #_ActSubstanceAdministrationCode
* #FD "food" "**Description:** The introduction of material into a subject with the intent of providing nutrition or other dietary supplements (e.g. minerals or vitamins)."
* #FD ^property[0].code = #status
* #FD ^property[=].valueCode = #active
* #FD ^property[+].code = #internalId
* #FD ^property[=].valueCode = #23110
* #FD ^property[+].code = #subsumedBy
* #FD ^property[=].valueCode = #_ActSubstanceAdministrationCode
* #IMMUNIZ "Immunization" "The introduction of an immunogen with the intent of stimulating an immune response, aimed at preventing subsequent infections by more viable agents."
* #IMMUNIZ ^property[0].code = #status
* #IMMUNIZ ^property[=].valueCode = #active
* #IMMUNIZ ^property[+].code = #internalId
* #IMMUNIZ ^property[=].valueCode = #21519
* #IMMUNIZ ^property[+].code = #subsumedBy
* #IMMUNIZ ^property[=].valueCode = #_ActSubstanceAdministrationCode
* #_AdministrationDetectedIssueCode "AdministrationDetectedIssueCode" "Administration of the proposed therapy may be inappropriate or contraindicated as proposed"
* #_AdministrationDetectedIssueCode ^property[0].code = #notSelectable
* #_AdministrationDetectedIssueCode ^property[=].valueBoolean = true
* #_AdministrationDetectedIssueCode ^property[+].code = #status
* #_AdministrationDetectedIssueCode ^property[=].valueCode = #active
* #_AdministrationDetectedIssueCode ^property[+].code = #rim-ClassifiesClassCode
* #_AdministrationDetectedIssueCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_AdministrationDetectedIssueCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_AdministrationDetectedIssueCode ^property[+].code = #internalId
* #_AdministrationDetectedIssueCode ^property[=].valueCode = #20908
* #_AdministrationDetectedIssueCode ^property[+].code = #subsumedBy
* #_AdministrationDetectedIssueCode ^property[=].valueCode = #_ActSuppliedItemDetectedIssueCode
* #_SupplyDetectedIssueCode "SupplyDetectedIssueCode" "Supplying the product at this time may be inappropriate or indicate compliance issues with the associated therapy"
* #_SupplyDetectedIssueCode ^property[0].code = #notSelectable
* #_SupplyDetectedIssueCode ^property[=].valueBoolean = true
* #_SupplyDetectedIssueCode ^property[+].code = #status
* #_SupplyDetectedIssueCode ^property[=].valueCode = #active
* #_SupplyDetectedIssueCode ^property[+].code = #internalId
* #_SupplyDetectedIssueCode ^property[=].valueCode = #20933
* #_SupplyDetectedIssueCode ^property[+].code = #subsumedBy
* #_SupplyDetectedIssueCode ^property[=].valueCode = #_ActSuppliedItemDetectedIssueCode
* #HISTORIC "record recorded as historical" "**Description:** While the record was accepted in the repository, there is a more recent version of a record of this type."
* #HISTORIC ^property[0].code = #status
* #HISTORIC ^property[=].valueCode = #active
* #HISTORIC ^property[+].code = #internalId
* #HISTORIC ^property[=].valueCode = #23273
* #HISTORIC ^property[+].code = #subsumedBy
* #HISTORIC ^property[=].valueCode = #_ActSuppliedItemDetectedIssueCode
* #PATPREF "violates stated preferences" "**Definition:**The proposed therapy goes against preferences or consent constraints recorded in the patient's record."
* #PATPREF ^property[0].code = #status
* #PATPREF ^property[=].valueCode = #active
* #PATPREF ^property[+].code = #internalId
* #PATPREF ^property[=].valueCode = #22835
* #PATPREF ^property[+].code = #subsumedBy
* #PATPREF ^property[=].valueCode = #_ActSuppliedItemDetectedIssueCode
* #OE "order entry task" "A clinician creates a request for a service to be performed for a given patient."
* #OE ^property[0].code = #status
* #OE ^property[=].valueCode = #active
* #OE ^property[+].code = #internalId
* #OE ^property[=].valueCode = #22048
* #OE ^property[+].code = #subsumedBy
* #OE ^property[=].valueCode = #_ActTaskCode
* #PATDOC "patient documentation task" "A person enters documentation about a given patient."
* #PATDOC ^property[0].code = #status
* #PATDOC ^property[=].valueCode = #active
* #PATDOC ^property[+].code = #internalId
* #PATDOC ^property[=].valueCode = #22067
* #PATDOC ^property[+].code = #subsumedBy
* #PATDOC ^property[=].valueCode = #_ActTaskCode
* #PATINFO "patient information review task" "A person (e.g., clinician, the patient herself) reviews patient information in the electronic medical record."
* #PATINFO ^property[0].code = #status
* #PATINFO ^property[=].valueCode = #active
* #PATINFO ^property[+].code = #internalId
* #PATINFO ^property[=].valueCode = #22051
* #PATINFO ^property[+].code = #subsumedBy
* #PATINFO ^property[=].valueCode = #_ActTaskCode
* #_ActMedicationTherapyDurationWorkingListCode "act medication therapy duration working list" "**Definition:**A collection of concepts that identifies different types of 'duration-based' mediation working lists.\r\n\r\n**Examples:**\"Continuous/Chronic\" \"Short-Term\" and \"As Needed\""
* #_ActMedicationTherapyDurationWorkingListCode ^property[0].code = #notSelectable
* #_ActMedicationTherapyDurationWorkingListCode ^property[=].valueBoolean = true
* #_ActMedicationTherapyDurationWorkingListCode ^property[+].code = #status
* #_ActMedicationTherapyDurationWorkingListCode ^property[=].valueCode = #active
* #_ActMedicationTherapyDurationWorkingListCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActMedicationTherapyDurationWorkingListCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActMedicationTherapyDurationWorkingListCode ^property[=].valueCoding = $v3-ActClass#LIST
* #_ActMedicationTherapyDurationWorkingListCode ^property[+].code = #internalId
* #_ActMedicationTherapyDurationWorkingListCode ^property[=].valueCode = #21754
* #_ActMedicationTherapyDurationWorkingListCode ^property[+].code = #subsumedBy
* #_ActMedicationTherapyDurationWorkingListCode ^property[=].valueCode = #_ActTherapyDurationWorkingListCode
* #_ActPatientTransportationModeCode "ActPatientTransportationModeCode" "Definition: Characterizes how a patient was or will be transported to the site of a patient encounter.\r\n\r\n*Examples:* Via ambulance, via public transit, on foot."
* #_ActPatientTransportationModeCode ^property[0].code = #notSelectable
* #_ActPatientTransportationModeCode ^property[=].valueBoolean = true
* #_ActPatientTransportationModeCode ^property[+].code = #status
* #_ActPatientTransportationModeCode ^property[=].valueCode = #active
* #_ActPatientTransportationModeCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActPatientTransportationModeCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActPatientTransportationModeCode ^property[=].valueCoding = $v3-ActClass#TRNS
* #_ActPatientTransportationModeCode ^property[+].code = #internalId
* #_ActPatientTransportationModeCode ^property[=].valueCode = #21546
* #_ActPatientTransportationModeCode ^property[+].code = #subsumedBy
* #_ActPatientTransportationModeCode ^property[=].valueCode = #_ActTransportationModeCode
* #42CFRPart2CD "42 CFR Part 2 consent directive" "A code representing an individual's privacy consent directive that complies with 42 CFR Part 2.31 Consent requirements https://www.gpo.gov/fdsys/pkg/CFR-2017-title42-vol1/pdf/CFR-2017-title42-vol1-sec2-31.pdf, which is a US Federal law stipulating the policy elements of a written consent to a disclosure under the regulations in Part 2.\r\n\r\n(1) The name of the patient. (2) The specific name(s) or general designation(s) of the part 2 program(s), entity(ies), or individual(s) permitted to make the disclosure. (3) How much and what kind of information is to be disclosed, including an explicit description of the substance use disorder information that may be disclosed. (4) (i) The name(s) of the individual(s) to whom a disclosure is to be made; or (ii)Entities with a treating provider relationship with the patient. If the recipient entity has a treating provider relationship with the patient whose information is being disclosed, such as a hospital, a health care clinic, or a private practice, the name of that entity; or (iii)Entities without a treating provider relationship with the patient. (A) If the recipient entity does not have a treating provider relationship with the patient whose information is being disclosed and is a third-party payer, the name of the entity; or (B) If the recipient entity does not have a treating provider relationship with the patient whose information is being disclosed and is not covered by paragraph (a)(4)(iii)(A) of this section, such as an entity that facilitates the exchange of health information or a research institution, the name(s) of the entity(-ies); and (1) The name(s) of an individual participant(s); or (2) The name(s) of an entity participant(s) that has a treating provider relationship with the patient whose information is being disclosed; or (3) A general designation of an individual or entity participant(s) or class of participants that must be limited to a participant(s) who has a treating provider relationship with the patient whose information is being disclosed. (i) When using a general designation, a statement must be included on the consent form that the patient (or other individual authorized to sign in lieu of the patient), confirms their understanding that, upon their request and consistent with this part, they must be provided a list of entities to which their information has been disclosed pursuant to the general designation (see Section 2.13(d)). (ii) \\[Reserved\\] (5) The purpose of the disclosure. In accordance with Section 2.13(a), the disclosure must be limited to that information which is necessary to carry out the stated purpose. (6) A statement that the consent is subject to revocation at any time except to the extent that the part 2 program or other lawful holder of patient identifying information that is permitted to make the disclosure has already acted in reliance on it. Acting in reliance includes the provision of treatment services in reliance on a valid consent to disclose information to a third-party payer (7) The date, event, or condition upon which the consent will expire if not revoked before. This date, event, or condition must ensure that the consent will last no longer than reasonably necessary to serve the purpose for which it is provided. (8) The signature of the patient and, when required for a patient who is a minor, the signature of an individual authorized to give consent under Section 2.14; or, when required for a patient who is incompetent or deceased, the signature of an individual authorized to sign under Section 2.15. Electronic signatures are permitted to the extent that they are not prohibited by any applicable law. (9) The date on which the consent is signed.\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by an individual's 42 CFR Part 2.31 consent directive, \"42CFRPart2CD\" as the security label policy code.\r\n\r\nSince information governed by an individual's 42 CFR Part 2.31 consent directive has a level of confidentiality protection that is more stringent than the normal level of protection under HIPAA 45 CFR Â§ 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code \"R\" (restricted)."
* #42CFRPart2CD ^property[0].code = #status
* #42CFRPart2CD ^property[=].valueCode = #active
* #42CFRPart2CD ^property[+].code = #internalId
* #42CFRPart2CD ^property[=].valueCode = #24100
* #42CFRPart2CD ^property[+].code = #subsumedBy
* #42CFRPart2CD ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #CompoundResearchCD "Compound HIPAA Research Authorization and Informed Consent for Research" "A code representing an individual's consent directive that complies with HIPAA Privacy rule 45 CFR Section 164.508 Uses and disclosures for which an authorization is required https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which is a US Federal law stipulating the policy elements of a valid authorization under this Section specific to disclosures for purposes of research when combined with a Common Rule or Federal Drug Administration consent to participate in research also known as a compound authorization.\r\n\r\n*Usage Note:* The Agency for Healthcare Research and Quality (AHRQ) has developed the Informed Consent and Authorization Toolkit for Minimal Risk Research to facilitate the process of obtaining informed consent and Health Insurance Portability and Accountability Act (HIPAA) authorization from potential research subjects. This toolkit contains information for people responsible for ensuring that potential research subjects are informed in a manner that is consistent with medical ethics and regulatory guidelines. From https://www.ahrq.gov/sites/default/files/publications/files/ictoolkit.pdf.\r\n\r\nUsed to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by an individual's right of access directive under 45 CFR Section 164.508 use \"CompoundResearchCD\" as the security label policy code.\r\n\r\nInformation or biospecimen disclosed under the Common Rule are not protected by the HIPAA Privacy Rule. If protected under other laws such as confidentiality provisions under the Common Rule, assign the HL7 Confidentiality code \"M\" (moderate).\r\n\r\nSee ActCode.\\_ActPolicyType.\\_ActPrivacyPolicy.\\_ActPrivacyLaw.\\_ActUSPrivacyLaw.HIPAAAuth (HIPAA Authorization for Disclosure). See: HIPAAAuth and NIH Sample Authorization Language for Research Uses and Disclosures of Individually Identifiable Health Information by a Covered Health Care Provider https://privacyruleandresearch.nih.gov/authorization.asp"
* #CompoundResearchCD ^property[0].code = #status
* #CompoundResearchCD ^property[=].valueCode = #active
* #CompoundResearchCD ^property[+].code = #internalId
* #CompoundResearchCD ^property[=].valueCode = #24105
* #CompoundResearchCD ^property[+].code = #subsumedBy
* #CompoundResearchCD ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #HIPAAAuthCD "HIPAA Authorization Consent Directive" "A code representing an individual's consent directive that complies with HIPAA Privacy rule 45 CFR Section 164.508 Uses and disclosures for which an authorization is required https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which is a US Federal law stipulating the policy elements of a valid authorization under this Section.\r\n\r\nAn \"authorization\" is required by the Privacy Rule for uses and disclosures of protected health information not otherwise allowed by the Rule. Where the Privacy Rule requires patient authorization, voluntary consent is not sufficient to permit a use or disclosure of protected health information unless it also satisfies the requirements of a valid authorization. An authorization is a detailed document that gives covered entities permission to use protected health information for specified purposes, which are generally other than treatment, payment, or health care operations, or to disclose protected health information to a third party specified by the individual.\r\n\r\nAn authorization must specify a number of elements, including a description of the protected health information to be used and disclosed, the person authorized to make the use or disclosure, the person to whom the covered entity may make the disclosure, an expiration date, and, in some cases, the purpose for which the information may be used or disclosed. With limited exceptions, covered entities may not condition treatment or coverage on the individual providing an authorization. https://www.hhs.gov/hipaa/for-professionals/faq/264/what-is-the-difference-between-consent-and-authorization/index.html\r\n\r\nA HIPAA Authorization must comply with 45 CFR Section164.508(c) Implementation specifications: Core elements and requirements - (1) Core elements. A valid authorization under this Section must contain at least the following elements: (i) A description of the information to be used or disclosed that identifies the information in a specific and meaningful fashion. (ii) The name or other specific identification of the person(s), or class of persons, authorized to make the requested use or disclosure. (iii) The name or other specific identification of the person(s), or class of persons, to whom the covered entity may make the requested use or disclosure. (iv) A description of each purpose of the requested use or disclosure. The statement \"at the request of the individual\" is a sufficient description of the purpose when an individual initiates the authorization and does not, or elects not to, provide a statement of the purpose. (v) An expiration date or an expiration event that relates to the individual or the purpose of the use or disclosure. The statement \"end of the research study,\" \"none,\" or similar language is sufficient if the authorization is for a use or disclosure of protected health information for research, including for the creation and maintenance of a research database or research repository. (vi) Signature of the individual and date. If the authorization is signed by a personal representative of the individual, a description of such representative's authority to act for the individual must also be provided. (2)Required statements. In addition to the core elements, the authorization must contain statements adequate to place the individual on notice of all of the following: (i) The individual's right to revoke the authorization in writing, and either: (A) The exceptions to the right to revoke and a description of how the individual may revoke the authorization; or (B) To the extent that the information in paragraph (c)(2)(i)(A) of this section is included in the notice required by Section 164.520, a reference to the covered entity's notice. https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to HIPAA governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by a an individual's HIPAA Authorization for Disclosure, use \"HIPAAAuthCD\" as the security label policy code.\r\n\r\nInformation governed under a HIPAA Authorization for Disclosure has the level of confidentiality protection afforded under the 45 CFR Section 164.506 - Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, which is considered the \"norm\", assign the HL7 Confidentiality code \"N\" (normal)."
* #HIPAAAuthCD ^property[0].code = #status
* #HIPAAAuthCD ^property[=].valueCode = #active
* #HIPAAAuthCD ^property[+].code = #internalId
* #HIPAAAuthCD ^property[=].valueCode = #24101
* #HIPAAAuthCD ^property[+].code = #subsumedBy
* #HIPAAAuthCD ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #HIPAAConsentCD "HIPAA Consent Directive" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule 45 CFR Section 164.522 Rights to request privacy protection for protected health information https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-522.pdf, which stipulates the process by which a covered entity seeks agreement from an individual regarding how it will use and disclose the individual's protected health information for treatment, payment, and health care operations is termed a \"consent.\"\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by an individual's consent directive under 45 CFR Section 164.522 use \"HIPAAConsentCD\" as the security label policy code.\r\n\r\nSince information governed by a 45 CFR Section 164.522 has a level of confidentiality protection that is more stringent than the normal level of protection under HIPAA 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code \"R\" (restricted)."
* #HIPAAConsentCD ^property[0].code = #status
* #HIPAAConsentCD ^property[=].valueCode = #active
* #HIPAAConsentCD ^property[+].code = #internalId
* #HIPAAConsentCD ^property[=].valueCode = #24102
* #HIPAAConsentCD ^property[+].code = #subsumedBy
* #HIPAAConsentCD ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #HIPAAResearchAuthCD "HIPAA Authorization for Disclosure for Research Consent Directive" "A code representing an individual's consent directive that complies with HIPAA Privacy rule 45 CFR Section 164.508 Uses and disclosures for which an authorization is required https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which is a US Federal law stipulating the policy elements of a valid authorization under this Section specific to disclosures for purposes of research.\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by an individual's HIPAA Authorization for Disclosure for Research under 45 CFR Section 164.508 use \"HIPAAResearchAuthCD\" as the security label policy code.\r\n\r\nInformation disclosed under an individual's HIPAA Authorization for Disclosure for Research are not protected by the HIPAA Privacy Rule. If protected under other laws such as confidentiality provisions under the Common Rule, assign the HL7 Confidentiality code \"M\" (moderate).\r\n\r\nSee ActCode.\\_ActPolicyType.\\_ActPrivacyPolicy.\\_ActPrivacyLaw.\\_ActUSPrivacyLaw.HIPAAAuth (HIPAA Authorization for Disclosure). See: HIPAAAuth and NIH Sample Authorization Language for Research Uses and Disclosures of Individually Identifiable Health Information by a Covered Health Care Provider https://privacyruleandresearch.nih.gov/authorization.asp"
* #HIPAAResearchAuthCD ^property[0].code = #status
* #HIPAAResearchAuthCD ^property[=].valueCode = #active
* #HIPAAResearchAuthCD ^property[+].code = #internalId
* #HIPAAResearchAuthCD ^property[=].valueCode = #24104
* #HIPAAResearchAuthCD ^property[+].code = #subsumedBy
* #HIPAAResearchAuthCD ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #HIPAAROAD "HIPAA Right of Access Directive" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule 45 CFR Section 164.524 Access of individuals to protected health information https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-524.pdf, stipulating the policy elements of an individual's written and signed right of access directive requesting that a covered entity send the individual's protected health information (PHI) to a third party.\r\n\r\nSee 45 CFR 164.524(c)(3)(ii) If an individual's request for access directs the covered entity to transmit the copy of protected health information directly to another person designated by the individual, the covered entity must provide the copy to the person designated by the individual. The individual's request must be in writing, signed by the individual, and clearly identify the designated person and where to send the copy of protected health information. https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-524.pdf\r\n\r\nThis right applies to PHI in a designated record set, which is defined as \"Designated record set means: (1) A group of records maintained by or for a covered entity that is: (i) The medical records and billing records about individuals maintained by or for a covered health care provider; (ii) The enrollment, payment, claims adjudication, and case or medical management record systems maintained by or for a health plan; or (iii) Used, in whole or in part, by or for the covered entity to make decisions about individuals. \\[https://www.law.cornell.edu/cfr/text/45/164.501\\]. Also see HHS Individuals' Right under HIPAA to Access their Health Information 45 CFR Section 164.524 \\[https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/access/index.html\\#maximumflatfee\\].\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by an individual's right of access directive under 45 CFR Section 164.524 use \"HIPAAROAD\" as the security label policy code.\r\n\r\nInformation disclosed under a HIPAA 42 CFR Section 164.524 no longer has the level of confidentiality protection afforded under the 45 CFR Section 164.506 - Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which is considered the \"norm\", assign the HL7 Confidentiality code \"M\" (moderate), which may be protected under other laws such as the Federal Trade Commission privacy and security regulations."
* #HIPAAROAD ^property[0].code = #status
* #HIPAAROAD ^property[=].valueCode = #active
* #HIPAAROAD ^property[+].code = #internalId
* #HIPAAROAD ^property[=].valueCode = #24103
* #HIPAAROAD ^property[+].code = #subsumedBy
* #HIPAAROAD ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #MDHHS-5515 "Michigan Consent to Share Behavioral Health Information for Care Coordination Purposes" "The State of Michigan standard privacy consent form for sharing of health information specific to behavioral health and substance use treatment in accordance with Public Act 129 of 2014. In Michigan, while providers are not required to use this new standard form (MDHHS-5515), they are required to accept it.\r\n\r\n*Usage Note:* For legislative background, current MDHHS-5515 consent directive form, and provider and patient FAQs see http://www.michigan.gov/mdhhs/0,5885,7-339-71550\\_2941\\_58005-343686--,00.html"
* #MDHHS-5515 ^property[0].code = #status
* #MDHHS-5515 ^property[=].valueCode = #active
* #MDHHS-5515 ^property[+].code = #internalId
* #MDHHS-5515 ^property[=].valueCode = #24106
* #MDHHS-5515 ^property[+].code = #subsumedBy
* #MDHHS-5515 ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #42CFRPart2 "42 CFR Part2" "A code representing 42 CFR Part 2 Confidentiality of Substance Use Disorder Patient Records. 42 CFR Part 2 stipulates the privacy rights of an individual who has applied for or been given diagnosis or treatment for alcohol or drug abuse at a federally assisted program, which includes non-disclosure of health information relating to health care paid for by a federally assisted substance use disorder program without patient consent. https://www.gpo.gov/fdsys/pkg/CFR-2010-title42-vol1/pdf/CFR-2010-title42-vol1-part2.pdf\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, the collection, access, use, and disclosure of healthcare information is governed by 42 CFR Part 2 Confidentiality of Substance Use Disorder Patient Records https://www.gpo.gov/fdsys/pkg/CFR-2010-title42-vol1/pdf/CFR-2010-title42-vol1-part2.pdf use \"42CFRPart2\" as the security label policy code.\r\n\r\nSince information governed by a 42 CFR Part 2 has a level of confidentiality protection that is more stringent than the normal level of protection under HIPAA 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf assign the HL7 Confidentiality code \"R\" (restricted)."
* #42CFRPart2 ^property[0].code = #status
* #42CFRPart2 ^property[=].valueCode = #active
* #42CFRPart2 ^property[+].code = #internalId
* #42CFRPart2 ^property[=].valueCode = #23761
* #42CFRPart2 ^property[+].code = #subsumedBy
* #42CFRPart2 ^property[=].valueCode = #_ActUSPrivacyLaw
* #CommonRule "Common Rule" "A code representing U.S. Federal laws governing research-related privacy policies known as the \"Common Rule\". The Common Rule is the U.S. Federal regulations governing the protection of human subjects in research (codified at Subpart A of 45 CFR part 46), which has been adopted by 15 U.S. Federal departments and agencies in an effort to promote uniformity, understanding, and compliance with human subject protections. Existing regulations governing the protection of human subjects in Food and Drug Administration (FDA)-regulated research (21 CFR parts 50, 56, 312, and 812) are separate from the Common Rule but include similar requirements.\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information or biospecimen is governed by the Common Rule use \"COMMONRULE\" as the security label policy code. Information or biospecimen disclosed under the Common Rule are not protected by the HIPAA Privacy Rule. If protected under other laws such as confidentiality provisions under the Common Rule, assign the HL7 Confidentiality code \"M\" (moderate)."
* #CommonRule ^property[0].code = #status
* #CommonRule ^property[=].valueCode = #active
* #CommonRule ^property[+].code = #internalId
* #CommonRule ^property[=].valueCode = #23762
* #CommonRule ^property[+].code = #subsumedBy
* #CommonRule ^property[=].valueCode = #_ActUSPrivacyLaw
* #HIPAAAuth "HIPAA Authorization for Disclosure" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule (45 CFR Section 164.508) Uses and disclosures for which an authorization is required https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which stipulates the process by which a covered entity seeks agreement from an individual to use or disclose protected health information for other purposes, or to authorize another covered entity to disclose protected health information to the requesting covered entity, are termed \"authorizations\".\r\n\r\nAn \"authorization\" is required by the Privacy Rule for uses and disclosures of protected health information not otherwise allowed by the Rule. Where the Privacy Rule requires patient authorization, voluntary consent is not sufficient to permit a use or disclosure of protected health information unless it also satisfies the requirements of a valid authorization. An authorization is a detailed document that gives covered entities permission to use protected health information for specified purposes, which are generally other than treatment, payment, or health care operations, or to disclose protected health information to a third party specified by the individual.\r\n\r\nAn authorization must specify a number of elements, including a description of the protected health information to be used and disclosed, the person authorized to make the use or disclosure, the person to whom the covered entity may make the disclosure, an expiration date, and, in some cases, the purpose for which the information may be used or disclosed. With limited exceptions, covered entities may not condition treatment or coverage on the individual providing an authorization. https://www.hhs.gov/hipaa/for-professionals/faq/264/what-is-the-difference-between-consent-and-authorization/index.html\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to HIPAA governed information. In this case, where use or disclosure of healthcare information is governed by a covered entity's HIPAA Authorization for Disclosure, use \"HIPAAAuth\" as the security label policy code.\r\n\r\nInformation disclosed under a HIPAA Authorization for Disclosure no longer has the level of confidentiality protection afforded under the 45 CFR Section 164.506 - Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which is considered the \"norm\", assign the HL7 Confidentiality code \"M\" (moderate), which may be protected under other laws such as the Federal Trade Commission privacy and security regulations."
* #HIPAAAuth ^property[0].code = #status
* #HIPAAAuth ^property[=].valueCode = #active
* #HIPAAAuth ^property[+].code = #internalId
* #HIPAAAuth ^property[=].valueCode = #24118
* #HIPAAAuth ^property[+].code = #subsumedBy
* #HIPAAAuth ^property[=].valueCode = #_ActUSPrivacyLaw
* #HIPAAConsent "HIPAA Consent" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule (45 CFR Section 164.522), which stipulates the process by which a covered entity seeks agreement from an individual regarding how it will use and disclose the individual's protected health information for treatment, payment, and health care operations is termed a \"consent\".\r\n\r\nThe Privacy Rule permits, but does not require, a covered entity to voluntarily obtain patient consent for uses and disclosures of protected health information for treatment, payment, and health care operations. Covered entities that do so have complete discretion to design a process that best suits their needs. From https://www.hhs.gov/hipaa/for-professionals/faq/264/what-is-the-difference-between-consent-and-authorization/index.html. The provisions relating to consent are largely contained in Section 164.522 Rights to request privacy protection for protected health information https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-522.pdf.\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by 45 CFR Section 164.522 use 'HIPAAConsent' as the security label policy code.\r\n\r\nSince information governed by a 45 CFR Section 164.522 has a level of confidentiality protection that is more stringent than the normal level of protection under HIPAA 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code 'R' (restricted)."
* #HIPAAConsent ^property[0].code = #status
* #HIPAAConsent ^property[=].valueCode = #active
* #HIPAAConsent ^property[+].code = #internalId
* #HIPAAConsent ^property[=].valueCode = #24135
* #HIPAAConsent ^property[+].code = #subsumedBy
* #HIPAAConsent ^property[=].valueCode = #_ActUSPrivacyLaw
* #HIPAANOPP "HIPAA notice of privacy practices" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule (45 CFR Section 164.520), which stipulates an individual's right to adequate notice of the uses and disclosures of protected health information that may be made by the covered entity, and of the individual's rights and the covered entity's legal duties with respect to protected health information. Relevant HIPAA Privacy Rule provisions are at Section 164.520 (a) Standard: Notice of privacy practices. https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-520.pdf\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to HIPAA governed information. In this case, if collection, access, use, or disclosure of healthcare information is governed by a covered entity's HIPAA Notice of Privacy Practices, use \"HIPAANOPP\" as the security label policy code.\r\n\r\nInformation governed under a HIPAA Notice of Privacy Practices has the level of confidentiality protection afforded under the 45 CFR Section 164.506 - Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf , which is considered the \"norm\", assign the HL7 Confidentiality code \"N\" (normal)."
* #HIPAANOPP ^property[0].code = #status
* #HIPAANOPP ^property[=].valueCode = #active
* #HIPAANOPP ^property[+].code = #internalId
* #HIPAANOPP ^property[=].valueCode = #23763
* #HIPAANOPP ^property[+].code = #subsumedBy
* #HIPAANOPP ^property[=].valueCode = #_ActUSPrivacyLaw
* #HIPAAPsyNotes "HIPAA psychotherapy notes" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule (45 CFR Section 164.508), which stipulates the privacy rights of an individual who is the subject of psychotherapy notes, and requires authorization for certain uses and disclosure of that information.\r\n\r\nDefinition of Psychotherapy notes 45 CFR Section 164.501 https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-501.pdf: Psychotherapy notes means notes recorded (in any medium) by a health care provider who is a mental health professional documenting or analyzing the contents of conversation during a private counseling session or a group, joint, or family counseling session and that are separated from the rest of the individual's medical record. Psychotherapy notes excludes medication prescription and monitoring, counseling session start and stop times, the modalities and frequencies of treatment furnished, results of clinical tests, and any summary of the following items: Diagnosis, functional status, the treatment plan, symptoms, prognosis, and progress to date.\r\n\r\nSee Section 164.508 Uses and disclosures for which an authorization is required. (2)Authorization required: Psychotherapy notes https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf: Notwithstanding any provision of this subpart, other than the transition provisions in Section 164.532, a covered entity must obtain an authorization for any use or disclosure of psychotherapy notes, except: (i) To carry out the following treatment, payment, or health care operations: (A) Use by the originator of the psychotherapy notes for treatment; (B) Use or disclosure by the covered entity for its own training programs in which students, trainees, or practitioners in mental health learn under supervision to practice or improve their skills in group, joint, family, or individual counseling; or (C) Use or disclosure by the covered entity to defend itself in a legal action or other proceeding brought by the individual; and (ii) A use or disclosure that is required by Section 164.502(a)(2)(ii) or permitted by Section 164.512(a); Section 164.512(d) with respect to the oversight of the originator of the psychotherapy notes; Section 164.512(g)(1); Section 164.512(j)(1)(i).\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to HIPAA governed information. In this case, the collection, access, use, or disclosure of healthcare information is governed by HIPAA 45 CFR 164.508 (2) Authorization required: Psychotherapy notes https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf , use \"HIPAAPsyNotes\" as the security label policy code.\r\n\r\nSince information governed by a HIPAA 45 CFR 164.508 (2) has a level of confidentiality protection that is more stringent than the normal level of protection under 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code \"R\" (restricted)."
* #HIPAAPsyNotes ^property[0].code = #status
* #HIPAAPsyNotes ^property[=].valueCode = #active
* #HIPAAPsyNotes ^property[+].code = #internalId
* #HIPAAPsyNotes ^property[=].valueCode = #23764
* #HIPAAPsyNotes ^property[+].code = #subsumedBy
* #HIPAAPsyNotes ^property[=].valueCode = #_ActUSPrivacyLaw
* #HIPAAROA "HIPAA Right of Access" "A code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule 45 CFR Section 164.524 Access of individuals to protected health information https://www.govinfo.gov/app/details/CFR-2017-title45-vol1/CFR-2017-title45-vol1-sec164-524, which stipulates that an individual has a right of access to inspect and obtain a copy of protected health information about the individual in a designated record set, for as long as the protected health information is maintained in the designated record set with exceptions stipulated in HIPAA Privacy Rule Section 164.524. Exceptions include psychotherapy notes and information compiled in reasonable anticipation of, or for use in, a civil, criminal, or administrative action or proceeding.\r\n\r\nIf an individual's request for access directs the covered entity to transmit the copy of protected health information directly to another person designated by the individual, the covered entity must provide the copy to the person designated by the individual. The individual's request must be in writing, signed by the individual, and clearly identify the designated person and where to send the copy of protected health information.\r\n\r\nFor discussion on extent of right, grounds for denial, and documentation requirements see: HHS Individuals' Right under HIPAA to Access their Health Information 45 CFR Section 164.524 https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/access/index.html and HHS FAQ on Right of Access vs. HIPAA Authorization https://www.hhs.gov/hipaa/for-professionals/faq/2041/why-depend-on-the-individuals-right/index.html\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed under 45 CFR Section 164.5224 use \"HIPAAROA\" as the security label policy code.\r\n\r\nInformation disclosed under a HIPAA 42 CFR Section 164.524 no longer has the level of confidentiality protection afforded under the 45 CFR Section 164.506 - Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-508.pdf, which is considered the \"norm\", assign the HL7 Confidentiality code \"M\" (moderate), which may be protected under other laws such as the Federal Trade Commission privacy and security regulations."
* #HIPAAROA ^property[0].code = #status
* #HIPAAROA ^property[=].valueCode = #active
* #HIPAAROA ^property[+].code = #internalId
* #HIPAAROA ^property[=].valueCode = #24119
* #HIPAAROA ^property[+].code = #subsumedBy
* #HIPAAROA ^property[=].valueCode = #_ActUSPrivacyLaw
* #HIPAASelfPay "HIPAA self-pay" "A code representing 45 CFR 164.522 Rights to request privacy protection for protected health information, which is a US Federal law stipulating the privacy rights of an individual to restrict disclosure of information related to health care items or services for which the individual pays out of pocket in full to a health plan or payer.\r\n\r\nSee 45 CFR 164.522 https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-522.pdf. (vi) A covered entity must agree to the request of an individual to restrict disclosure of protected health information about the individual to a health plan if: (A) The disclosure is for the purpose of carrying out payment or health care operations and is not otherwise required by law; and (B) The protected health information pertains solely to a health care item or service for which the individual, or person other than the health plan on behalf of the individual, has paid the covered entity in full.\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to HIPAA governed information. In this case, the collection, access, use, or disclosure of healthcare information is governed by HIPAA 45 CFR 164.522 https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-522.pdf use \"HIPAASelfPay\" as the security label policy code.\r\n\r\nSince information governed by a HIPAA 45 CFR 164.522 has a level of confidentiality protection that is more stringent than the normal level of protection under 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code \"R\" (restricted)."
* #HIPAASelfPay ^property[0].code = #status
* #HIPAASelfPay ^property[=].valueCode = #active
* #HIPAASelfPay ^property[+].code = #internalId
* #HIPAASelfPay ^property[=].valueCode = #23765
* #HIPAASelfPay ^property[+].code = #subsumedBy
* #HIPAASelfPay ^property[=].valueCode = #_ActUSPrivacyLaw
* #Title38Section7332 "Title 38 Section 7332" "A code representing Title 38 Section 7332, which is a US Federal law stipulating the privacy rights of veterans diagnosed and treated for substance use disorders, infection with the human immunodeficiency virus, or sickle cell anemia.\r\n\r\nhttps://www.gpo.gov/fdsys/granule/USCODE-2011-title38/USCODE-2011-title38-partV-chap73-subchapIII-sec7332/content-detail.html . (1) Records of the identity, diagnosis, prognosis, or treatment of any patient or subject which are maintained in connection with the performance of any program or activity (including education, training, treatment, rehabilitation, or research) relating to drug abuse, alcoholism or alcohol abuse, infection with the human immunodeficiency virus, or sickle cell anemia which is carried out by or for the Department under this title shall, except as provided in subsections (e) and (f), be confidential, and (section 5701 of this title to the contrary notwithstanding) such records may be disclosed only for the purposes and under the circumstances expressly authorized under subsection (b). (2) Paragraph (1) prohibits the disclosure to any person or entity other than the patient or subject concerned of the fact that a special written consent is required in order for such records to be disclosed. (b) (1) The content of any record referred to in subsection (a) may be disclosed by the Secretary in accordance with the prior written consent of the patient or subject with respect to whom such record is maintained, but only to such extent, under such circumstances, and for such purposes as may be allowed in regulations prescribed by the Secretary. (2) Whether or not any patient or subject, with respect to whom any given record referred to in subsection (a) is maintained, gives written consent, the content of such record may be disclosed by the Secretary as follows: (A) To medical personnel to the extent necessary to meet a bona fide medical emergency. (B) To qualified personnel for the purpose of conducting scientific research, management audits, financial audits, or program evaluation, but such personnel may not identify, directly or indirectly, any individual patient or subject in any report of such research, audit, or evaluation, or otherwise disclose patient or subject identities in any manner. (C) (i) In the case of any record which is maintained in connection with the performance of any program or activity relating to infection with the human immunodeficiency virus, to a Federal, State, or local public-health authority charged under Federal or State law with the protection of the public health, and to which Federal or State law requires disclosure of such record, if a qualified representative of such authority has made a written request that such record be provided as required pursuant to such law for a purpose authorized by such law. (ii) A person to whom a record is disclosed under this paragraph may not redisclose or use such record for a purpose other than that for which the disclosure was made. (D) If authorized by an appropriate order of a court of competent jurisdiction granted after application showing good cause therefor. In assessing good cause the court shall weigh the public interest and the need for disclosure against the injury to the patient or subject, to the physician-patient relationship, and to the treatment services. Upon the granting of such order, the court, in determining the extent to which any disclosure of all or any part of any record is necessary, shall impose appropriate safeguards against unauthorized disclosure. (E) To an entity described in paragraph (1)(B) of section 5701(k) of this title, but only to the extent authorized by such section. (F) (i) To a representative of a patient who lacks decision-making capacity, when a practitioner deems the content of the given record necessary for that representative to make an informed decision regarding the patient's treatment. (ii) In this subparagraph, the term \"representative\" means an individual, organization, or other body authorized under section 7331 of this title and its implementing regulations to give informed consent on behalf of a patient who lacks decision-making capacity. (G) To a State controlled substance monitoring program, including a program approved by the Secretary of Health and Human Services under section 399O of the Public Health Service Act (42 U.S.C. 280g-3), to the extent necessary to prevent misuse and diversion of prescription medicines. (H) (i) To a non-Department entity (including private entities and other Federal agencies) for purposes of providing health care, including hospital care, medical services, and extended care services, to Veterans or performing other health care-related activities or functions. (ii) An entity to which a record is disclosed under this subparagraph may not disclose or use such record for a purpose other than that for which the disclosure was made or as permitted by law. (I) To a third party in order to recover or collect reasonable charges for care furnished to, or paid on behalf of, a Veteran in connection with a non-service connected disability as permitted by section 1729 of this title or for a condition for which recovery is authorized or with respect to which the United States is deemed to be a third party beneficiary under the Act entitled 'An Act to provide for the recovery from tortiously liable third persons of the cost of hospital and medical care and treatment furnished by the United States' (Public Law 87-693; 42 U.S.C. 2651 et seq.; commonly known as the 'Federal Medical Care Recovery Act').\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by 38 U.S. Code Section 7332 - Confidentiality of certain medical records https://www.gpo.gov/fdsys/granule/USCODE-2011-title38/USCODE-2011-title38-partV-chap73-subchapIII-sec7332/content-detail.html use \"Title38Section7332\" as the security label policy code.\r\n\r\nSince information governed by a Title 38 Section 7332 has a level of confidentiality protection that is more stringent than the normal level of protection under HIPAA 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code \"R\" (restricted)."
* #Title38Section7332 ^property[0].code = #status
* #Title38Section7332 ^property[=].valueCode = #active
* #Title38Section7332 ^property[+].code = #internalId
* #Title38Section7332 ^property[=].valueCode = #23766
* #Title38Section7332 ^property[+].code = #subsumedBy
* #Title38Section7332 ^property[=].valueCode = #_ActUSPrivacyLaw
* #"a) HIPAAConsent" "HIPAA Consent" "Code retired in December 2019 and replaced by code HIPAAConsent. Originally entered with copy/paste error in code value.\r\n\r\nA code representing U.S. Public Law 104-191 Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule (45 CFR Section 164.522), which stipulates the process by which a covered entity seeks agreement from an individual regarding how it will use and disclose the individual's protected health information for treatment, payment, and health care operations is termed a \"consent.\" The Privacy Rule permits, but does not require, a covered entity to voluntarily obtain patient consent for uses and disclosures of protected health information for treatment, payment, and health care operations. Covered entities that do so have complete discretion to design a process that best suits their needs. From https://www.hhs.gov/hipaa/for-professionals/faq/264/what-is-the-difference-between-consent-and-authorization/index.html. The provisions relating to consent are largely contained in Section 164.522 Rights to request privacy protection for protected health information https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-522.pdf.\r\n\r\n*Usage Note:* Used to indicate the legal authority for assigning security labels to governed information. In this case, where collection, access, use, or disclosure of healthcare information is governed by 45 CFR Section 164.522 use \"HIPAAConsent\" as the security label policy code.\r\n\r\nSince information governed by a 45 CFR Section 164.522 has a level of confidentiality protection that is more stringent than the normal level of protection under HIPAA 45 CFR Section 164.506 Uses and disclosures to carry out treatment, payment, or health care operations https://www.gpo.gov/fdsys/pkg/CFR-2017-title45-vol1/pdf/CFR-2017-title45-vol1-sec164-506.pdf, assign the HL7 Confidentiality code \"R\" (restricted)."
* #HIPAAConsent ^property[0].code = #status
* #HIPAAConsent ^property[=].valueCode = #retired
* #HIPAAConsent ^property[+].code = #internalId
* #HIPAAConsent ^property[=].valueCode = #24117
* #HIPAAConsent ^property[+].code = #subsumedBy
* #HIPAAConsent ^property[=].valueCode = #_ActUSPrivacyLaw
* #USResearchInformedAssent "Informed Assent for Research" "An informed assertion by a minor who is a candidate research subject, of the individual's willingness to participate in research. Assent means a child's affirmative agreement to participate in a clinical investigation. Mere failure to object should not, absent affirmative agreement, be construed as assent. The minor's assent must be accompanied by parental or guardian consent that the minor participate in a specified research. The assent is not legally binding, however, the accompanying consent is legally binding. Background: In the US, informed assent is governed under 21 CFR Part 50, Subpart D - Additional Safeguards for Children in Clinical Investigations. Available at https://www.law.cornell.edu/cfr/text/21/part-50/subpart-D"
* #USResearchInformedAssent ^property[0].code = #status
* #USResearchInformedAssent ^property[=].valueCode = #active
* #USResearchInformedAssent ^property[+].code = #internalId
* #USResearchInformedAssent ^property[=].valueCode = #25100
* #USResearchInformedAssent ^property[+].code = #subsumedBy
* #USResearchInformedAssent ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #USResearchInformedConsent "Informed Consent for Research" "An informed assertion by an adult, or the parent/guardian of a minor who is a candidate research subject, of the individual's willingness to participate in a specified research study. The consent is legally binding. Background: In the US, informed assent is governed under 49 CFR § 11.116 - General Requirements for Informed Consent. Available at https://www.law.cornell.edu/cfr/text/49/11.116"
* #USResearchInformedConsent ^property[0].code = #status
* #USResearchInformedConsent ^property[=].valueCode = #active
* #USResearchInformedConsent ^property[+].code = #internalId
* #USResearchInformedConsent ^property[=].valueCode = #25101
* #USResearchInformedConsent ^property[+].code = #subsumedBy
* #USResearchInformedConsent ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #USBroadResearchConsent "Broad Consent for Research" "An informed assertion by an adult, or the parent/guardian of a minor who is a candidate research subject, of the individual's willingness to participate in unspecified research studies, including storage, maintenance, and secondary research use of identifiable biospecimens and data.  If broad consent is obtained, any subsequent storage, maintenance, and secondary research uses of the individual’s identifiable biospecimens and data consistent with the broad consent would not require additional consent, so long as additional conditions are met, including limited review by an IRB. The consent is legally binding. Background: In the US, informed assent is governed under 49 CFR § 11.116 - General Requirements for Informed Consent. Available at https://www.law.cornell.edu/cfr/text/49/11.116"
* #USBroadResearchConsent ^property[0].code = #status
* #USBroadResearchConsent ^property[=].valueCode = #active
* #USBroadResearchConsent ^property[+].code = #internalId
* #USBroadResearchConsent ^property[=].valueCode = #25102
* #USBroadResearchConsent ^property[+].code = #subsumedBy
* #USBroadResearchConsent ^property[=].valueCode = #_ActUSPrivacyConsentDirective
* #_AppropriatenessDetectedIssueCode "AppropriatenessDetectedIssueCode"
* #_AppropriatenessDetectedIssueCode ^property[0].code = #notSelectable
* #_AppropriatenessDetectedIssueCode ^property[=].valueBoolean = true
* #_AppropriatenessDetectedIssueCode ^property[+].code = #status
* #_AppropriatenessDetectedIssueCode ^property[=].valueCode = #active
* #_AppropriatenessDetectedIssueCode ^property[+].code = #rim-ClassifiesClassCode
* #_AppropriatenessDetectedIssueCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_AppropriatenessDetectedIssueCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_AppropriatenessDetectedIssueCode ^property[+].code = #internalId
* #_AppropriatenessDetectedIssueCode ^property[=].valueCode = #20910
* #_AppropriatenessDetectedIssueCode ^property[+].code = #subsumedBy
* #_AppropriatenessDetectedIssueCode ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #COMPLY "Compliance Alert" "There may be an issue with the patient complying with the intentions of the proposed therapy"
* #COMPLY ^property[0].code = #status
* #COMPLY ^property[=].valueCode = #active
* #COMPLY ^property[+].code = #internalId
* #COMPLY ^property[=].valueCode = #16687
* #COMPLY ^property[+].code = #subsumedBy
* #COMPLY ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #COMPLY ^property[+].code = #subsumedBy
* #COMPLY ^property[=].valueCode = #VALIDAT
* #DACT "drug action detected issue" "**Description:**Proposed therapy may be contraindicated or ineffective based on an existing or recent drug therapy."
* #DACT ^property[0].code = #status
* #DACT ^property[=].valueCode = #active
* #DACT ^property[+].code = #internalId
* #DACT ^property[=].valueCode = #21699
* #DACT ^property[+].code = #subsumedBy
* #DACT ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #DOSE "Dosage problem" "Proposed dosage instructions for therapy differ from standard practice."
* #DOSE ^property[0].code = #status
* #DOSE ^property[=].valueCode = #active
* #DOSE ^property[+].code = #internalId
* #DOSE ^property[=].valueCode = #16680
* #DOSE ^property[+].code = #subsumedBy
* #DOSE ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #DOSE ^property[+].code = #subsumedBy
* #DOSE ^property[=].valueCode = #VALIDAT
* #DUPTHPY "Duplicate Therapy Alert" "The proposed therapy appears to duplicate an existing therapy"
* #DUPTHPY ^property[0].code = #status
* #DUPTHPY ^property[=].valueCode = #active
* #DUPTHPY ^property[+].code = #internalId
* #DUPTHPY ^property[=].valueCode = #16688
* #DUPTHPY ^property[+].code = #subsumedBy
* #DUPTHPY ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #DUPTHPY ^property[+].code = #subsumedBy
* #DUPTHPY ^property[=].valueCode = #COMPLY
* #TIME "timing detected issue" "**Description:**Proposed therapy may be inappropriate or ineffective based on the proposed start or end time."
* #TIME ^property[0].code = #status
* #TIME ^property[=].valueCode = #active
* #TIME ^property[+].code = #internalId
* #TIME ^property[=].valueCode = #21700
* #TIME ^property[+].code = #subsumedBy
* #TIME ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #_DrugActionDetectedIssueCode "DrugActionDetectedIssueCode" "Proposed therapy may be contraindicated or ineffective based on an existing or recent drug therapy"
* #_DrugActionDetectedIssueCode ^property[0].code = #notSelectable
* #_DrugActionDetectedIssueCode ^property[=].valueBoolean = true
* #_DrugActionDetectedIssueCode ^property[+].code = #status
* #_DrugActionDetectedIssueCode ^property[=].valueCode = #retired
* #_DrugActionDetectedIssueCode ^property[+].code = #internalId
* #_DrugActionDetectedIssueCode ^property[=].valueCode = #20914
* #_DrugActionDetectedIssueCode ^property[+].code = #subsumedBy
* #_DrugActionDetectedIssueCode ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #_TimingDetectedIssueCode "TimingDetectedIssueCode" "Proposed therapy may be inappropriate or ineffective based on the proposed start or end time."
* #_TimingDetectedIssueCode ^property[0].code = #notSelectable
* #_TimingDetectedIssueCode ^property[=].valueBoolean = true
* #_TimingDetectedIssueCode ^property[+].code = #status
* #_TimingDetectedIssueCode ^property[=].valueCode = #retired
* #_TimingDetectedIssueCode ^property[+].code = #internalId
* #_TimingDetectedIssueCode ^property[=].valueCode = #20934
* #_TimingDetectedIssueCode ^property[+].code = #subsumedBy
* #_TimingDetectedIssueCode ^property[=].valueCode = #_AdministrationDetectedIssueCode
* #_ActPatientAnnotationType "ActPatientAnnotationType" "**Description:**Provides a categorization for annotations recorded directly against the patient ."
* #_ActPatientAnnotationType ^property[0].code = #status
* #_ActPatientAnnotationType ^property[=].valueCode = #active
* #_ActPatientAnnotationType ^property[+].code = #internalId
* #_ActPatientAnnotationType ^property[=].valueCode = #22821
* #_ActPatientAnnotationType ^property[+].code = #subsumedBy
* #_ActPatientAnnotationType ^property[=].valueCode = #_AnnotationType
* #_ECGAnnotationType "ECGAnnotationType"
* #_ECGAnnotationType ^property[0].code = #notSelectable
* #_ECGAnnotationType ^property[=].valueBoolean = true
* #_ECGAnnotationType ^property[+].code = #status
* #_ECGAnnotationType ^property[=].valueCode = #retired
* #_ECGAnnotationType ^property[+].code = #internalId
* #_ECGAnnotationType ^property[=].valueCode = #20915
* #_ECGAnnotationType ^property[+].code = #subsumedBy
* #_ECGAnnotationType ^property[=].valueCode = #_AnnotationType
* #_InteractionDetectedIssueCode "InteractionDetectedIssueCode"
* #_InteractionDetectedIssueCode ^property[0].code = #notSelectable
* #_InteractionDetectedIssueCode ^property[=].valueBoolean = true
* #_InteractionDetectedIssueCode ^property[+].code = #status
* #_InteractionDetectedIssueCode ^property[=].valueCode = #active
* #_InteractionDetectedIssueCode ^property[+].code = #rim-ClassifiesClassCode
* #_InteractionDetectedIssueCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_InteractionDetectedIssueCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_InteractionDetectedIssueCode ^property[+].code = #internalId
* #_InteractionDetectedIssueCode ^property[=].valueCode = #20923
* #_InteractionDetectedIssueCode ^property[+].code = #subsumedBy
* #_InteractionDetectedIssueCode ^property[=].valueCode = #_AppropriatenessDetectedIssueCode
* #OBSA "Observation Alert" "Proposed therapy may be inappropriate or contraindicated due to conditions or characteristics of the patient"
* #OBSA ^property[0].code = #status
* #OBSA ^property[=].valueCode = #active
* #OBSA ^property[+].code = #internalId
* #OBSA ^property[=].valueCode = #16664
* #OBSA ^property[+].code = #subsumedBy
* #OBSA ^property[=].valueCode = #_AppropriatenessDetectedIssueCode
* #OBSA ^property[+].code = #subsumedBy
* #OBSA ^property[=].valueCode = #VALIDAT
* #PREVINEF "previously ineffective" "**Definition:**The same or similar treatment has previously been attempted with the patient without achieving a positive effect."
* #PREVINEF ^property[0].code = #status
* #PREVINEF ^property[=].valueCode = #active
* #PREVINEF ^property[+].code = #internalId
* #PREVINEF ^property[=].valueCode = #22834
* #PREVINEF ^property[+].code = #subsumedBy
* #PREVINEF ^property[=].valueCode = #_AppropriatenessDetectedIssueCode
* #EMAUTH "emergency authorization override" "Used to temporarily override normal authorization rules to gain access to data in a case of emergency. Use of this override code will typically be monitored, and a procedure to verify its proper use may be triggered when used."
* #EMAUTH ^property[0].code = #status
* #EMAUTH ^property[=].valueCode = #active
* #EMAUTH ^property[+].code = #internalId
* #EMAUTH ^property[=].valueCode = #21388
* #EMAUTH ^property[+].code = #subsumedBy
* #EMAUTH ^property[=].valueCode = #_AuthorizationIssueManagementCode
* #AIRTRNS "airborne transmission" "Communication of an agent from a living subject or environmental source to a living subject through indirect contact via oral or nasal inhalation."
* #AIRTRNS ^property[0].code = #status
* #AIRTRNS ^property[=].valueCode = #active
* #AIRTRNS ^property[+].code = #internalId
* #AIRTRNS ^property[=].valueCode = #21915
* #AIRTRNS ^property[+].code = #subsumedBy
* #AIRTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #ANANTRNS "animal to animal transmission" "Communication of an agent from one animal to another proximate animal."
* #ANANTRNS ^property[0].code = #status
* #ANANTRNS ^property[=].valueCode = #active
* #ANANTRNS ^property[+].code = #internalId
* #ANANTRNS ^property[=].valueCode = #21909
* #ANANTRNS ^property[+].code = #subsumedBy
* #ANANTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #ANHUMTRNS "animal to human transmission" "Communication of an agent from an animal to a proximate person."
* #ANHUMTRNS ^property[0].code = #status
* #ANHUMTRNS ^property[=].valueCode = #active
* #ANHUMTRNS ^property[+].code = #internalId
* #ANHUMTRNS ^property[=].valueCode = #21910
* #ANHUMTRNS ^property[+].code = #subsumedBy
* #ANHUMTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #BDYFLDTRNS "body fluid contact transmission" "Communication of an agent from one living subject to another living subject through direct contact with any body fluid."
* #BDYFLDTRNS ^property[0].code = #status
* #BDYFLDTRNS ^property[=].valueCode = #active
* #BDYFLDTRNS ^property[+].code = #internalId
* #BDYFLDTRNS ^property[=].valueCode = #21911
* #BDYFLDTRNS ^property[+].code = #subsumedBy
* #BDYFLDTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #BLDTRNS "blood borne transmission" "Communication of an agent to a living subject through direct contact with blood or blood products whether the contact with blood is part of a therapeutic procedure or not."
* #BLDTRNS ^property[0].code = #status
* #BLDTRNS ^property[=].valueCode = #active
* #BLDTRNS ^property[+].code = #internalId
* #BLDTRNS ^property[=].valueCode = #21912
* #BLDTRNS ^property[+].code = #subsumedBy
* #BLDTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #DERMTRNS "transdermal transmission" "Communication of an agent from a living subject or environmental source to a living subject via agent migration through intact skin."
* #DERMTRNS ^property[0].code = #status
* #DERMTRNS ^property[=].valueCode = #active
* #DERMTRNS ^property[+].code = #internalId
* #DERMTRNS ^property[=].valueCode = #21923
* #DERMTRNS ^property[+].code = #subsumedBy
* #DERMTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #ENVTRNS "environmental exposure transmission" "Communication of an agent from an environmental surface or source to a living subject by direct contact."
* #ENVTRNS ^property[0].code = #status
* #ENVTRNS ^property[=].valueCode = #active
* #ENVTRNS ^property[+].code = #internalId
* #ENVTRNS ^property[=].valueCode = #21914
* #ENVTRNS ^property[+].code = #subsumedBy
* #ENVTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #FECTRNS "fecal-oral transmission" "Communication of an agent from a living subject or environmental source to a living subject through oral contact with material contaminated by person or animal fecal material."
* #FECTRNS ^property[0].code = #status
* #FECTRNS ^property[=].valueCode = #active
* #FECTRNS ^property[+].code = #internalId
* #FECTRNS ^property[=].valueCode = #21916
* #FECTRNS ^property[+].code = #subsumedBy
* #FECTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #FOMTRNS "fomite transmission" "Communication of an agent from an non-living material to a living subject through direct contact."
* #FOMTRNS ^property[0].code = #status
* #FOMTRNS ^property[=].valueCode = #active
* #FOMTRNS ^property[+].code = #internalId
* #FOMTRNS ^property[=].valueCode = #21917
* #FOMTRNS ^property[+].code = #subsumedBy
* #FOMTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #FOODTRNS "food-borne transmission" "Communication of an agent from a food source to a living subject via oral consumption."
* #FOODTRNS ^property[0].code = #status
* #FOODTRNS ^property[=].valueCode = #active
* #FOODTRNS ^property[+].code = #internalId
* #FOODTRNS ^property[=].valueCode = #21918
* #FOODTRNS ^property[+].code = #subsumedBy
* #FOODTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #HUMHUMTRNS "human to human transmission" "Communication of an agent from a person to a proximate person."
* #HUMHUMTRNS ^property[0].code = #status
* #HUMHUMTRNS ^property[=].valueCode = #active
* #HUMHUMTRNS ^property[+].code = #internalId
* #HUMHUMTRNS ^property[=].valueCode = #21919
* #HUMHUMTRNS ^property[+].code = #subsumedBy
* #HUMHUMTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #INDTRNS "indeterminate disease transmission mode" "Communication of an agent to a living subject via an undetermined route."
* #INDTRNS ^property[0].code = #status
* #INDTRNS ^property[=].valueCode = #active
* #INDTRNS ^property[+].code = #internalId
* #INDTRNS ^property[=].valueCode = #21920
* #INDTRNS ^property[+].code = #subsumedBy
* #INDTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #LACTTRNS "lactation transmission" "Communication of an agent from one living subject to another living subject through direct contact with mammalian milk or colostrum."
* #LACTTRNS ^property[0].code = #status
* #LACTTRNS ^property[=].valueCode = #active
* #LACTTRNS ^property[+].code = #internalId
* #LACTTRNS ^property[=].valueCode = #21913
* #LACTTRNS ^property[+].code = #subsumedBy
* #LACTTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #NOSTRNS "nosocomial transmission" "Communication of an agent from any entity to a living subject while the living subject is in the patient role in a healthcare facility."
* #NOSTRNS ^property[0].code = #status
* #NOSTRNS ^property[=].valueCode = #active
* #NOSTRNS ^property[+].code = #internalId
* #NOSTRNS ^property[=].valueCode = #21921
* #NOSTRNS ^property[+].code = #subsumedBy
* #NOSTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #PARTRNS "parenteral transmission" "Communication of an agent from a living subject or environmental source to a living subject where the acquisition of the agent is not via the alimentary canal."
* #PARTRNS ^property[0].code = #status
* #PARTRNS ^property[=].valueCode = #active
* #PARTRNS ^property[+].code = #internalId
* #PARTRNS ^property[=].valueCode = #21922
* #PARTRNS ^property[+].code = #subsumedBy
* #PARTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #PLACTRNS "transplacental transmission" "Communication of an agent from a living subject to the progeny of that living subject via agent migration across the maternal-fetal placental membranes while in utero."
* #PLACTRNS ^property[0].code = #status
* #PLACTRNS ^property[=].valueCode = #active
* #PLACTRNS ^property[+].code = #internalId
* #PLACTRNS ^property[=].valueCode = #21926
* #PLACTRNS ^property[+].code = #subsumedBy
* #PLACTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #SEXTRNS "sexual transmission" "Communication of an agent from one living subject to another living subject through direct contact with genital or oral tissues as part of a sexual act."
* #SEXTRNS ^property[0].code = #status
* #SEXTRNS ^property[=].valueCode = #active
* #SEXTRNS ^property[+].code = #internalId
* #SEXTRNS ^property[=].valueCode = #21925
* #SEXTRNS ^property[+].code = #subsumedBy
* #SEXTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #TRNSFTRNS "transfusion transmission" "Communication of an agent from one living subject to another living subject through direct contact with blood or blood products where the contact with blood is part of a therapeutic procedure."
* #TRNSFTRNS ^property[0].code = #status
* #TRNSFTRNS ^property[=].valueCode = #active
* #TRNSFTRNS ^property[+].code = #internalId
* #TRNSFTRNS ^property[=].valueCode = #21924
* #TRNSFTRNS ^property[+].code = #subsumedBy
* #TRNSFTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #VECTRNS "vector-borne transmission" "Communication of an agent from a living subject acting as a required intermediary in the agent transmission process to a recipient living subject via direct contact."
* #VECTRNS ^property[0].code = #status
* #VECTRNS ^property[=].valueCode = #active
* #VECTRNS ^property[+].code = #internalId
* #VECTRNS ^property[=].valueCode = #21927
* #VECTRNS ^property[+].code = #subsumedBy
* #VECTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #WATTRNS "water-borne transmission" "Communication of an agent from a contaminated water source to a living subject whether the water is ingested as a food or not. The route of entry of the water may be through any bodily orifice."
* #WATTRNS ^property[0].code = #status
* #WATTRNS ^property[=].valueCode = #active
* #WATTRNS ^property[+].code = #internalId
* #WATTRNS ^property[=].valueCode = #21928
* #WATTRNS ^property[+].code = #subsumedBy
* #WATTRNS ^property[=].valueCode = #_CaseTransmissionMode
* #REPRESENTATIVE_BEAT "ECG representative beat waveforms" "This Observation Series type contains waveforms of a \"representative beat\" (a.k.a. \"median beat\" or \"average beat\"). The waveform samples are measured in relative time, relative to the beginning of the beat as defined by the Observation Series effective time. The waveforms are not directly acquired from the subject, but rather algorithmically derived from the \"rhythm\" waveforms."
* #REPRESENTATIVE_BEAT ^property[0].code = #status
* #REPRESENTATIVE_BEAT ^property[=].valueCode = #active
* #REPRESENTATIVE_BEAT ^property[+].code = #internalId
* #REPRESENTATIVE_BEAT ^property[=].valueCode = #19324
* #REPRESENTATIVE_BEAT ^property[+].code = #subsumedBy
* #REPRESENTATIVE_BEAT ^property[=].valueCode = #_ECGObservationSeriesType
* #RHYTHM "ECG rhythm waveforms" "This Observation type contains ECG \"rhythm\" waveforms. The waveform samples are measured in absolute time (a.k.a. \"subject time\" or \"effective time\"). These waveforms are usually \"raw\" with some minimal amount of noise reduction and baseline filtering applied."
* #RHYTHM ^property[0].code = #status
* #RHYTHM ^property[=].valueCode = #active
* #RHYTHM ^property[+].code = #internalId
* #RHYTHM ^property[=].valueCode = #19323
* #RHYTHM ^property[+].code = #subsumedBy
* #RHYTHM ^property[=].valueCode = #_ECGObservationSeriesType
* #DEMO "all demographic information sensitivity" "Policy for handling all demographic information about an information subject, which will be afforded heightened confidentiality. Policies may govern sensitivity of information related to all demographic about an information subject, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #DEMO ^property[0].code = #status
* #DEMO ^property[=].valueCode = #active
* #DEMO ^property[+].code = #internalId
* #DEMO ^property[=].valueCode = #23352
* #DEMO ^property[+].code = #subsumedBy
* #DEMO ^property[=].valueCode = #_EntitySensitivityPolicyType
* #DOB "date of birth information sensitivity" "Policy for handling information related to an information subject's date of birth, which will be afforded heightened confidentiality.Policies may govern sensitivity of information related to an information subject's date of birth, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #DOB ^property[0].code = #status
* #DOB ^property[=].valueCode = #active
* #DOB ^property[+].code = #internalId
* #DOB ^property[=].valueCode = #23353
* #DOB ^property[+].code = #subsumedBy
* #DOB ^property[=].valueCode = #_EntitySensitivityPolicyType
* #GENDER "gender and sexual orientation information sensitivity" "Policy for handling information related to an information subject's gender and sexual orientation, which will be afforded heightened confidentiality. Policies may govern sensitivity of information related to an information subject's gender and sexual orientation, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #GENDER ^property[0].code = #status
* #GENDER ^property[=].valueCode = #active
* #GENDER ^property[+].code = #internalId
* #GENDER ^property[=].valueCode = #23354
* #GENDER ^property[+].code = #subsumedBy
* #GENDER ^property[=].valueCode = #_EntitySensitivityPolicyType
* #LIVARG "living arrangement information sensitivity" "Policy for handling information related to an information subject's living arrangement, which will be afforded heightened confidentiality. Policies may govern sensitivity of information related to an information subject's living arrangement, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #LIVARG ^property[0].code = #status
* #LIVARG ^property[=].valueCode = #active
* #LIVARG ^property[+].code = #internalId
* #LIVARG ^property[=].valueCode = #23355
* #LIVARG ^property[+].code = #subsumedBy
* #LIVARG ^property[=].valueCode = #_EntitySensitivityPolicyType
* #MARST "marital status information sensitivity" "Policy for handling information related to an information subject's marital status, which will be afforded heightened confidentiality. Policies may govern sensitivity of information related to an information subject's marital status, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #MARST ^property[0].code = #status
* #MARST ^property[=].valueCode = #active
* #MARST ^property[+].code = #internalId
* #MARST ^property[=].valueCode = #23356
* #MARST ^property[+].code = #subsumedBy
* #MARST ^property[=].valueCode = #_EntitySensitivityPolicyType
* #PATLOC "patient location" "Policy for handling information related to an individual's location, which is deemed sensitive when the disclosure could impact the privacy, well-being, or safety of that subject, and requires additional protection.\r\n\r\n*Usage Note:* If there is a jurisdictional, organizational, or individual mandate, then use the applicable ActPrivacyLaw or ActConsentDirective code from the ActCode system to and specify the law in addition to this more generic code."
* #PATLOC ^property[0].code = #status
* #PATLOC ^property[=].valueCode = #active
* #PATLOC ^property[+].code = #internalId
* #PATLOC ^property[=].valueCode = #24041
* #PATLOC ^property[+].code = #subsumedBy
* #PATLOC ^property[=].valueCode = #_EntitySensitivityPolicyType
* #RACE "race information sensitivity" "Policy for handling information related to an information subject's race, which will be afforded heightened confidentiality. Policies may govern sensitivity of information related to an information subject's race, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #RACE ^property[0].code = #status
* #RACE ^property[=].valueCode = #active
* #RACE ^property[+].code = #internalId
* #RACE ^property[=].valueCode = #23357
* #RACE ^property[+].code = #subsumedBy
* #RACE ^property[=].valueCode = #_EntitySensitivityPolicyType
* #REL "religion information sensitivity" "Policy for handling information related to an information subject's religious affiliation, which will be afforded heightened confidentiality. Policies may govern sensitivity of information related to an information subject's religion, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Notes:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #REL ^property[0].code = #status
* #REL ^property[=].valueCode = #active
* #REL ^property[+].code = #HL7usageNotes
* #REL ^property[=].valueString = "If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #REL ^property[+].code = #internalId
* #REL ^property[=].valueCode = #23358
* #REL ^property[+].code = #subsumedBy
* #REL ^property[=].valueCode = #_EntitySensitivityPolicyType
* #FDACOATING "coating" "FDA label coating"
* #FDACOATING ^property[0].code = #status
* #FDACOATING ^property[=].valueCode = #retired
* #FDACOATING ^property[+].code = #internalId
* #FDACOATING ^property[=].valueCode = #19260
* #FDACOATING ^property[+].code = #subsumedBy
* #FDACOATING ^property[=].valueCode = #_FDALabelData
* #FDACOLOR "color" "FDA label color"
* #FDACOLOR ^property[0].code = #status
* #FDACOLOR ^property[=].valueCode = #retired
* #FDACOLOR ^property[+].code = #internalId
* #FDACOLOR ^property[=].valueCode = #19259
* #FDACOLOR ^property[+].code = #subsumedBy
* #FDACOLOR ^property[=].valueCode = #_FDALabelData
* #FDAIMPRINTCD "imprint code" "FDA label imprint code"
* #FDAIMPRINTCD ^property[0].code = #status
* #FDAIMPRINTCD ^property[=].valueCode = #retired
* #FDAIMPRINTCD ^property[+].code = #internalId
* #FDAIMPRINTCD ^property[=].valueCode = #19256
* #FDAIMPRINTCD ^property[+].code = #subsumedBy
* #FDAIMPRINTCD ^property[=].valueCode = #_FDALabelData
* #FDALOGO "logo" "FDA label logo"
* #FDALOGO ^property[0].code = #status
* #FDALOGO ^property[=].valueCode = #retired
* #FDALOGO ^property[+].code = #internalId
* #FDALOGO ^property[=].valueCode = #19262
* #FDALOGO ^property[+].code = #subsumedBy
* #FDALOGO ^property[=].valueCode = #_FDALabelData
* #FDASCORING "scoring" "FDA label scoring"
* #FDASCORING ^property[0].code = #status
* #FDASCORING ^property[=].valueCode = #retired
* #FDASCORING ^property[+].code = #internalId
* #FDASCORING ^property[=].valueCode = #19261
* #FDASCORING ^property[+].code = #subsumedBy
* #FDASCORING ^property[=].valueCode = #_FDALabelData
* #FDASHAPE "shape" "FDA label shape"
* #FDASHAPE ^property[0].code = #status
* #FDASHAPE ^property[=].valueCode = #retired
* #FDASHAPE ^property[+].code = #internalId
* #FDASHAPE ^property[=].valueCode = #19258
* #FDASHAPE ^property[+].code = #subsumedBy
* #FDASHAPE ^property[=].valueCode = #_FDALabelData
* #FDASIZE "size" "FDA label size"
* #FDASIZE ^property[0].code = #status
* #FDASIZE ^property[=].valueCode = #retired
* #FDASIZE ^property[+].code = #internalId
* #FDASIZE ^property[=].valueCode = #19257
* #FDASIZE ^property[+].code = #subsumedBy
* #FDASIZE ^property[=].valueCode = #_FDALabelData
* #GENE "gene" "**Description:** A DNA segment that contributes to phenotype/function. In the absence of demonstrated function a gene may be characterized by sequence, transcription or homology"
* #GENE ^property[0].code = #status
* #GENE ^property[=].valueCode = #active
* #GENE ^property[+].code = #internalId
* #GENE ^property[=].valueCode = #22651
* #GENE ^property[+].code = #subsumedBy
* #GENE ^property[=].valueCode = #_GeneticObservationType
* #I "Isolation" "Accommodations used in the care of diseases that are transmitted through casual contact or respiratory transmission."
* #I ^property[0].code = #status
* #I ^property[=].valueCode = #active
* #I ^property[+].code = #internalId
* #I ^property[=].valueCode = #16134
* #I ^property[+].code = #subsumedBy
* #I ^property[=].valueCode = #_HL7AccommodationCode
* #P "Private" "Accommodations in which there is only 1 bed."
* #P ^property[0].code = #status
* #P ^property[=].valueCode = #active
* #P ^property[+].code = #internalId
* #P ^property[=].valueCode = #16131
* #P ^property[+].code = #subsumedBy
* #P ^property[=].valueCode = #_HL7AccommodationCode
* #S "Suite" "Uniquely designed and elegantly decorated accommodations with many amenities available for an additional charge."
* #S ^property[0].code = #status
* #S ^property[=].valueCode = #active
* #S ^property[+].code = #internalId
* #S ^property[=].valueCode = #16133
* #S ^property[+].code = #subsumedBy
* #S ^property[=].valueCode = #_HL7AccommodationCode
* #SP "Semi-private" "Accommodations in which there are 2 beds."
* #SP ^property[0].code = #status
* #SP ^property[=].valueCode = #active
* #SP ^property[+].code = #internalId
* #SP ^property[=].valueCode = #16132
* #SP ^property[+].code = #subsumedBy
* #SP ^property[=].valueCode = #_HL7AccommodationCode
* #W "Ward" "Accommodations in which there are 3 or more beds."
* #W ^property[0].code = #status
* #W ^property[=].valueCode = #active
* #W ^property[+].code = #internalId
* #W ^property[=].valueCode = #16135
* #W ^property[+].code = #subsumedBy
* #W ^property[=].valueCode = #_HL7AccommodationCode
* #_ActDetectedIssueCode "ActDetectedIssueCode" "Identifies types of detected issues for Act class \"ALRT\""
* #_ActDetectedIssueCode ^property[0].code = #notSelectable
* #_ActDetectedIssueCode ^property[=].valueBoolean = true
* #_ActDetectedIssueCode ^property[+].code = #status
* #_ActDetectedIssueCode ^property[=].valueCode = #retired
* #_ActDetectedIssueCode ^property[+].code = #internalId
* #_ActDetectedIssueCode ^property[=].valueCode = #20866
* #_ActDetectedIssueCode ^property[+].code = #subsumedBy
* #_ActDetectedIssueCode ^property[=].valueCode = #_HL7DefinedActCodes
* #_HL7TriggerEventCode "HL7TriggerEventCode" "The trigger event referenced by the Control Act instance. Values are drawn from the available trigger events used in the release of HL7 identified by the versionCode."
* #_HL7TriggerEventCode ^property[0].code = #notSelectable
* #_HL7TriggerEventCode ^property[=].valueBoolean = true
* #_HL7TriggerEventCode ^property[+].code = #status
* #_HL7TriggerEventCode ^property[=].valueCode = #retired
* #_HL7TriggerEventCode ^property[+].code = #internalId
* #_HL7TriggerEventCode ^property[=].valueCode = #20922
* #_HL7TriggerEventCode ^property[+].code = #subsumedBy
* #_HL7TriggerEventCode ^property[=].valueCode = #_HL7DefinedActCodes
* #_SubstanceAdministrationActCode "SubstanceAdministrationActCode" "The specific chemical or radiological substance administered or to be administered into the body for therapeutic effect."
* #_SubstanceAdministrationActCode ^property[0].code = #notSelectable
* #_SubstanceAdministrationActCode ^property[=].valueBoolean = true
* #_SubstanceAdministrationActCode ^property[+].code = #status
* #_SubstanceAdministrationActCode ^property[=].valueCode = #retired
* #_SubstanceAdministrationActCode ^property[+].code = #internalId
* #_SubstanceAdministrationActCode ^property[=].valueCode = #20932
* #_SubstanceAdministrationActCode ^property[+].code = #subsumedBy
* #_SubstanceAdministrationActCode ^property[=].valueCode = #_HL7DefinedActCodes
* #OBSANTC "antigen count" "**Description:** Indicates the valid antigen count."
* #OBSANTC ^property[0].code = #status
* #OBSANTC ^property[=].valueCode = #active
* #OBSANTC ^property[+].code = #internalId
* #OBSANTC ^property[=].valueCode = #23243
* #OBSANTC ^property[+].code = #subsumedBy
* #OBSANTC ^property[=].valueCode = #_ImmunizationObservationType
* #OBSANTV "antigen validity" "**Description:** Indicates whether an antigen is valid or invalid."
* #OBSANTV ^property[0].code = #status
* #OBSANTV ^property[=].valueCode = #active
* #OBSANTV ^property[+].code = #internalId
* #OBSANTV ^property[=].valueCode = #23242
* #OBSANTV ^property[+].code = #subsumedBy
* #OBSANTV ^property[=].valueCode = #_ImmunizationObservationType
* #PAT_ADV_EVNT "patient adverse event" "Indicates that the ICSR is describing problems that a patient experienced after receiving a vaccine product."
* #PAT_ADV_EVNT ^property[0].code = #status
* #PAT_ADV_EVNT ^property[=].valueCode = #active
* #PAT_ADV_EVNT ^property[+].code = #internalId
* #PAT_ADV_EVNT ^property[=].valueCode = #23104
* #PAT_ADV_EVNT ^property[+].code = #subsumedBy
* #PAT_ADV_EVNT ^property[=].valueCode = #_IndividualCaseSafetyReportType
* #VAC_PROBLEM "vaccine product problem" "Indicates that the ICSR is describing a problem with the actual vaccine product such as physical defects (cloudy, particulate matter) or inability to confer immunity."
* #VAC_PROBLEM ^property[0].code = #status
* #VAC_PROBLEM ^property[=].valueCode = #active
* #VAC_PROBLEM ^property[+].code = #internalId
* #VAC_PROBLEM ^property[=].valueCode = #23103
* #VAC_PROBLEM ^property[+].code = #subsumedBy
* #VAC_PROBLEM ^property[=].valueCode = #_IndividualCaseSafetyReportType
* #_ActInformationSensitivityPolicy "ActInformationSensitivityPolicy" "Types of sensitivity policies that apply to Acts. Act.confidentialityCode is defined in the RIM as \"constraints around appropriate disclosure of information about this Act, regardless of mood.\"\r\n\r\n*Usage Note:* ActSensitivity codes are used to bind information to an Act.confidentialityCode according to local sensitivity policy so that those confidentiality codes can then govern its handling across enterprises. Internally to a policy domain, however, local policies guide the access control system on how end users in that policy domain are able to use information tagged with these sensitivity values."
* #_ActInformationSensitivityPolicy ^property[0].code = #notSelectable
* #_ActInformationSensitivityPolicy ^property[=].valueBoolean = true
* #_ActInformationSensitivityPolicy ^property[+].code = #status
* #_ActInformationSensitivityPolicy ^property[=].valueCode = #active
* #_ActInformationSensitivityPolicy ^property[+].code = #internalId
* #_ActInformationSensitivityPolicy ^property[=].valueCode = #23337
* #_ActInformationSensitivityPolicy ^property[+].code = #subsumedBy
* #_ActInformationSensitivityPolicy ^property[=].valueCode = #_InformationSensitivityPolicy
* #_EntitySensitivityPolicyType "EntityInformationSensitivityPolicy" "Types of sensitivity policies that may apply to a sensitive attribute on an Entity.\r\n\r\n*Usage Note:* EntitySensitivity codes are used to convey a policy that is applicable to sensitive information conveyed by an entity attribute. May be used to bind a Role.confidentialityCode associated with an Entity per organizational policy. Role.confidentialityCode is defined in the RIM as \"an indication of the appropriate disclosure of information about this Role with respect to the playing Entity.\""
* #_EntitySensitivityPolicyType ^property[0].code = #notSelectable
* #_EntitySensitivityPolicyType ^property[=].valueBoolean = true
* #_EntitySensitivityPolicyType ^property[+].code = #status
* #_EntitySensitivityPolicyType ^property[=].valueCode = #active
* #_EntitySensitivityPolicyType ^property[+].code = #internalId
* #_EntitySensitivityPolicyType ^property[=].valueCode = #23351
* #_EntitySensitivityPolicyType ^property[+].code = #subsumedBy
* #_EntitySensitivityPolicyType ^property[=].valueCode = #_InformationSensitivityPolicy
* #_RoleInformationSensitivityPolicy "RoleInformationSensitivityPolicy" "Types of sensitivity policies that apply to Roles.\r\n\r\n*Usage Notes:* RoleSensitivity codes are used to bind information to a Role.confidentialityCode per organizational policy. Role.confidentialityCode is defined in the RIM as \"an indication of the appropriate disclosure of information about this Role with respect to the playing Entity.\""
* #_RoleInformationSensitivityPolicy ^property[0].code = #notSelectable
* #_RoleInformationSensitivityPolicy ^property[=].valueBoolean = true
* #_RoleInformationSensitivityPolicy ^property[+].code = #status
* #_RoleInformationSensitivityPolicy ^property[=].valueCode = #active
* #_RoleInformationSensitivityPolicy ^property[+].code = #HL7usageNotes
* #_RoleInformationSensitivityPolicy ^property[=].valueString = "RoleSensitivity codes are used to bind information to a Role.confidentialityCode per organizational policy.  Role.confidentialityCode is defined in the RIM as \"an indication of the appropriate disclosure of information about this Role with respect to the playing Entity.\""
* #_RoleInformationSensitivityPolicy ^property[+].code = #internalId
* #_RoleInformationSensitivityPolicy ^property[=].valueCode = #23346
* #_RoleInformationSensitivityPolicy ^property[+].code = #subsumedBy
* #_RoleInformationSensitivityPolicy ^property[=].valueCode = #_InformationSensitivityPolicy
* #ADOL "adolescent information sensitivity" "Policy for handling information related to an adolescent, which will be afforded heightened confidentiality per applicable organizational or jurisdictional policy. An enterprise may have a policy that requires that adolescent patient information be provided heightened confidentiality. Information deemed sensitive typically includes health information and patient role information including patient status, demographics, next of kin, and location.\r\n\r\n*Usage Note:* For use within an enterprise in which an adolescent is the information subject. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #ADOL ^property[0].code = #status
* #ADOL ^property[=].valueCode = #active
* #ADOL ^property[+].code = #internalId
* #ADOL ^property[=].valueCode = #23330
* #ADOL ^property[+].code = #subsumedBy
* #ADOL ^property[=].valueCode = #_InformationSensitivityPolicy
* #CEL "celebrity information sensitivity" "Policy for handling information related to a celebrity (people of public interest (VIP), which will be afforded heightened confidentiality. Celebrities are people of public interest (VIP) about whose information an enterprise may have a policy that requires heightened confidentiality. Information deemed sensitive may include health information and patient role information including patient status, demographics, next of kin, and location.\r\n\r\n*Usage Note:*  For use within an enterprise in which the information subject is deemed a celebrity or very important person. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #CEL ^property[0].code = #status
* #CEL ^property[=].valueCode = #active
* #CEL ^property[+].code = #synonymCode
* #CEL ^property[=].valueCode = #VIP
* #CEL ^property[+].code = #internalId
* #CEL ^property[=].valueCode = #23331
* #CEL ^property[+].code = #subsumedBy
* #CEL ^property[=].valueCode = #_InformationSensitivityPolicy
* #VIP "celebrity information sensitivity" "Policy for handling information related to a celebrity (people of public interest (VIP), which will be afforded heightened confidentiality. Celebrities are people of public interest (VIP) about whose information an enterprise may have a policy that requires heightened confidentiality. Information deemed sensitive may include health information and patient role information including patient status, demographics, next of kin, and location.\r\n\r\n*Usage Note:*  For use within an enterprise in which the information subject is deemed a celebrity or very important person. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #VIP ^property[0].code = #status
* #VIP ^property[=].valueCode = #active
* #VIP ^property[+].code = #synonymCode
* #VIP ^property[=].valueCode = #CEL
* #VIP ^property[+].code = #internalId
* #VIP ^property[=].valueCode = #23331
* #VIP ^property[+].code = #subsumedBy
* #VIP ^property[=].valueCode = #_InformationSensitivityPolicy
* #DIA "diagnosis information sensitivity" "Policy for handling information related to a diagnosis, health condition or health problem, which will be afforded heightened confidentiality. Diagnostic, health condition or health problem related information may be deemed sensitive by organizational policy, and require heightened confidentiality.\r\n\r\n*Usage Note:* For use within an enterprise that provides heightened confidentiality to diagnostic, health condition or health problem related information deemed sensitive. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #DIA ^property[0].code = #status
* #DIA ^property[=].valueCode = #active
* #DIA ^property[+].code = #internalId
* #DIA ^property[=].valueCode = #23332
* #DIA ^property[+].code = #subsumedBy
* #DIA ^property[=].valueCode = #_InformationSensitivityPolicy
* #DRGIS "drug information sensitivity" "Policy for handling information related to a drug, which will be afforded heightened confidentiality. Drug information may be deemed sensitive by organizational policy, and require heightened confidentiality.\r\n\r\n*Usage Note:* For use within an enterprise that provides heightened confidentiality to drug information deemed sensitive. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #DRGIS ^property[0].code = #status
* #DRGIS ^property[=].valueCode = #active
* #DRGIS ^property[+].code = #internalId
* #DRGIS ^property[=].valueCode = #23333
* #DRGIS ^property[+].code = #subsumedBy
* #DRGIS ^property[=].valueCode = #_InformationSensitivityPolicy
* #EMP "employee information sensitivity" "Policy for handling information related to an employee, which will be afforded heightened confidentiality. When a patient is an employee, an enterprise may have a policy that requires heightened confidentiality. Information deemed sensitive typically includes health information and patient role information including patient status, demographics, next of kin, and location.\r\n\r\n*Usage Note:* Policy for handling information related to an employee, which will be afforded heightened confidentiality. Description: When a patient is an employee, an enterprise may have a policy that requires heightened confidentiality. Information deemed sensitive typically includes health information and patient role information including patient status, demographics, next of kin, and location."
* #EMP ^property[0].code = #status
* #EMP ^property[=].valueCode = #active
* #EMP ^property[+].code = #internalId
* #EMP ^property[=].valueCode = #23334
* #EMP ^property[+].code = #subsumedBy
* #EMP ^property[=].valueCode = #_InformationSensitivityPolicy
* #PDS "patient default information sensitivity" "Policy for specially protecting information reported by or about a patient, which is deemed sensitive within the enterprise (i.e., by default regardless of whether the patient requested that the information be deemed sensitive for another reason.) For example information reported by the patient about another person, e.g., a family member, may be deemed sensitive by default. Organizational policy may allow the sensitivity tag to be cleared on patient's request.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code.\r\n\r\nFor example, VA deems employee information sensitive by default. Information about a patient who is being stalked or a victim of abuse or violence may be deemed sensitive by default per a provider organization's policies."
* #PDS ^property[0].code = #status
* #PDS ^property[=].valueCode = #active
* #PDS ^property[+].code = #internalId
* #PDS ^property[=].valueCode = #23336
* #PDS ^property[+].code = #subsumedBy
* #PDS ^property[=].valueCode = #_InformationSensitivityPolicy
* #PHY "physician requested information sensitivity" "Policy for handling information about a patient, which a physician or other licensed healthcare provider deems sensitive. Once tagged by the provider, this may trigger alerts for follow up actions according to organizational policy or jurisdictional law.\r\n\r\n*Usage Note:* For use within an enterprise that provides heightened confidentiality to certain types of information designated by a physician as sensitive. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code.\r\n\r\nUse cases in which this code could be used are, e.g., in systems that lack the ability to automatically detect sensitive information and must rely on manual tagging; a system that lacks an applicable sensitivity tag, or for ad hoc situations where criticality of the situation requires that the tagging be done immediately by the provider before coding or transcription of consult notes can be completed, e.g., upon detection of a patient with suicidal tendencies or potential for violence."
* #PHY ^property[0].code = #status
* #PHY ^property[=].valueCode = #active
* #PHY ^property[+].code = #internalId
* #PHY ^property[=].valueCode = #23931
* #PHY ^property[+].code = #subsumedBy
* #PHY ^property[=].valueCode = #_InformationSensitivityPolicy
* #PRS "patient requested information sensitivity" "Policy for specially protecting information reported by or about a patient, which the patient deems sensitive, and the patient requests that collection, access, use, or disclosure of that information be restricted. For example, a minor patient may request that information about reproductive health not be disclosed to the patient's family or to particular providers and payers.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #PRS ^property[0].code = #status
* #PRS ^property[=].valueCode = #active
* #PRS ^property[+].code = #internalId
* #PRS ^property[=].valueCode = #23335
* #PRS ^property[+].code = #subsumedBy
* #PRS ^property[=].valueCode = #_InformationSensitivityPolicy
* #FOOD "Food Interaction Alert" "Proposed therapy may interact with certain foods"
* #FOOD ^property[0].code = #status
* #FOOD ^property[=].valueCode = #active
* #FOOD ^property[+].code = #internalId
* #FOOD ^property[=].valueCode = #16662
* #FOOD ^property[+].code = #subsumedBy
* #FOOD ^property[=].valueCode = #_InteractionDetectedIssueCode
* #TPROD "Therapeutic Product Alert" "Proposed therapy may interact with an existing or recent therapeutic product"
* #TPROD ^property[0].code = #status
* #TPROD ^property[=].valueCode = #active
* #TPROD ^property[+].code = #internalId
* #TPROD ^property[=].valueCode = #17807
* #TPROD ^property[+].code = #subsumedBy
* #TPROD ^property[=].valueCode = #_InteractionDetectedIssueCode
* #ADNFPPELAT "adjud. nullified prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted electronically."
* #ADNFPPELAT ^property[0].code = #status
* #ADNFPPELAT ^property[=].valueCode = #active
* #ADNFPPELAT ^property[+].code = #synonymCode
* #ADNFPPELAT ^property[=].valueCode = #ADCNPPELAT
* #ADNFPPELAT ^property[+].code = #internalId
* #ADNFPPELAT ^property[=].valueCode = #20007
* #ADNFPPELAT ^property[+].code = #subsumedBy
* #ADNFPPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNPPELAT "adjud. nullified prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted electronically."
* #ADCNPPELAT ^property[0].code = #status
* #ADCNPPELAT ^property[=].valueCode = #retired
* #ADCNPPELAT ^property[+].code = #synonymCode
* #ADCNPPELAT ^property[=].valueCode = #ADNFPPELAT
* #ADCNPPELAT ^property[+].code = #internalId
* #ADCNPPELAT ^property[=].valueCode = #20007
* #ADCNPPELAT ^property[+].code = #subsumedBy
* #ADCNPPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFPPELCT "adjud. nullified prior-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted electronically."
* #ADNFPPELCT ^property[0].code = #status
* #ADNFPPELCT ^property[=].valueCode = #active
* #ADNFPPELCT ^property[+].code = #synonymCode
* #ADNFPPELCT ^property[=].valueCode = #ADCNPPELCT
* #ADNFPPELCT ^property[+].code = #internalId
* #ADNFPPELCT ^property[=].valueCode = #20006
* #ADNFPPELCT ^property[+].code = #subsumedBy
* #ADNFPPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNPPELCT "adjud. nullified prior-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted electronically."
* #ADCNPPELCT ^property[0].code = #status
* #ADCNPPELCT ^property[=].valueCode = #retired
* #ADCNPPELCT ^property[+].code = #synonymCode
* #ADCNPPELCT ^property[=].valueCode = #ADNFPPELCT
* #ADCNPPELCT ^property[+].code = #internalId
* #ADCNPPELCT ^property[=].valueCode = #20006
* #ADCNPPELCT ^property[+].code = #subsumedBy
* #ADCNPPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFPPMNAT "adjud. nullified prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADNFPPMNAT ^property[0].code = #status
* #ADNFPPMNAT ^property[=].valueCode = #active
* #ADNFPPMNAT ^property[+].code = #synonymCode
* #ADNFPPMNAT ^property[=].valueCode = #ADCNPPMNAT
* #ADNFPPMNAT ^property[+].code = #internalId
* #ADNFPPMNAT ^property[=].valueCode = #20009
* #ADNFPPMNAT ^property[+].code = #subsumedBy
* #ADNFPPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNPPMNAT "adjud. nullified prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADCNPPMNAT ^property[0].code = #status
* #ADCNPPMNAT ^property[=].valueCode = #retired
* #ADCNPPMNAT ^property[+].code = #synonymCode
* #ADCNPPMNAT ^property[=].valueCode = #ADNFPPMNAT
* #ADCNPPMNAT ^property[+].code = #internalId
* #ADCNPPMNAT ^property[=].valueCode = #20009
* #ADCNPPMNAT ^property[+].code = #subsumedBy
* #ADCNPPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFPPMNCT "adjud. nullified prior-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADNFPPMNCT ^property[0].code = #status
* #ADNFPPMNCT ^property[=].valueCode = #active
* #ADNFPPMNCT ^property[+].code = #synonymCode
* #ADNFPPMNCT ^property[=].valueCode = #ADCNPPMNCT
* #ADNFPPMNCT ^property[+].code = #internalId
* #ADNFPPMNCT ^property[=].valueCode = #20008
* #ADNFPPMNCT ^property[+].code = #subsumedBy
* #ADNFPPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNPPMNCT "adjud. nullified prior-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADCNPPMNCT ^property[0].code = #status
* #ADCNPPMNCT ^property[=].valueCode = #retired
* #ADCNPPMNCT ^property[+].code = #synonymCode
* #ADCNPPMNCT ^property[=].valueCode = #ADNFPPMNCT
* #ADCNPPMNCT ^property[+].code = #internalId
* #ADCNPPMNCT ^property[=].valueCode = #20008
* #ADCNPPMNCT ^property[+].code = #subsumedBy
* #ADCNPPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFSPELAT "adjud. nullified same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently nullified in the specified period and submitted electronically."
* #ADNFSPELAT ^property[0].code = #status
* #ADNFSPELAT ^property[=].valueCode = #active
* #ADNFSPELAT ^property[+].code = #synonymCode
* #ADNFSPELAT ^property[=].valueCode = #ADCNSPELAT
* #ADNFSPELAT ^property[+].code = #internalId
* #ADNFSPELAT ^property[=].valueCode = #20005
* #ADNFSPELAT ^property[+].code = #subsumedBy
* #ADNFSPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNSPELAT "adjud. nullified same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently nullified in the specified period and submitted electronically."
* #ADCNSPELAT ^property[0].code = #status
* #ADCNSPELAT ^property[=].valueCode = #retired
* #ADCNSPELAT ^property[+].code = #synonymCode
* #ADCNSPELAT ^property[=].valueCode = #ADNFSPELAT
* #ADCNSPELAT ^property[+].code = #internalId
* #ADCNSPELAT ^property[=].valueCode = #20005
* #ADCNSPELAT ^property[+].code = #subsumedBy
* #ADCNSPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFSPELCT "adjud. nullified same-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently nullified in the specified period and submitted electronically."
* #ADNFSPELCT ^property[0].code = #status
* #ADNFSPELCT ^property[=].valueCode = #active
* #ADNFSPELCT ^property[+].code = #synonymCode
* #ADNFSPELCT ^property[=].valueCode = #ADCNSPELCT
* #ADNFSPELCT ^property[+].code = #internalId
* #ADNFSPELCT ^property[=].valueCode = #20004
* #ADNFSPELCT ^property[+].code = #subsumedBy
* #ADNFSPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNSPELCT "adjud. nullified same-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently nullified in the specified period and submitted electronically."
* #ADCNSPELCT ^property[0].code = #status
* #ADCNSPELCT ^property[=].valueCode = #retired
* #ADCNSPELCT ^property[+].code = #synonymCode
* #ADCNSPELCT ^property[=].valueCode = #ADNFSPELCT
* #ADCNSPELCT ^property[+].code = #internalId
* #ADCNSPELCT ^property[=].valueCode = #20004
* #ADCNSPELCT ^property[+].code = #subsumedBy
* #ADCNSPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFSPMNAT "adjud. nullified same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADNFSPMNAT ^property[0].code = #status
* #ADNFSPMNAT ^property[=].valueCode = #active
* #ADNFSPMNAT ^property[+].code = #synonymCode
* #ADNFSPMNAT ^property[=].valueCode = #ADCNSPMNAT
* #ADNFSPMNAT ^property[+].code = #internalId
* #ADNFSPMNAT ^property[=].valueCode = #20011
* #ADNFSPMNAT ^property[+].code = #subsumedBy
* #ADNFSPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNSPMNAT "adjud. nullified same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADCNSPMNAT ^property[0].code = #status
* #ADCNSPMNAT ^property[=].valueCode = #retired
* #ADCNSPMNAT ^property[+].code = #synonymCode
* #ADCNSPMNAT ^property[=].valueCode = #ADNFSPMNAT
* #ADCNSPMNAT ^property[+].code = #internalId
* #ADCNSPMNAT ^property[=].valueCode = #20011
* #ADCNSPMNAT ^property[+].code = #subsumedBy
* #ADCNSPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNFSPMNCT "adjud. nullified same-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADNFSPMNCT ^property[0].code = #status
* #ADNFSPMNCT ^property[=].valueCode = #active
* #ADNFSPMNCT ^property[+].code = #synonymCode
* #ADNFSPMNCT ^property[=].valueCode = #ADCNSPMNCT
* #ADNFSPMNCT ^property[+].code = #internalId
* #ADNFSPMNCT ^property[=].valueCode = #20010
* #ADNFSPMNCT ^property[+].code = #subsumedBy
* #ADNFSPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADCNSPMNCT "adjud. nullified same-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date), subsequently cancelled in the specified period and submitted manually."
* #ADCNSPMNCT ^property[0].code = #status
* #ADCNSPMNCT ^property[=].valueCode = #retired
* #ADCNSPMNCT ^property[+].code = #synonymCode
* #ADCNSPMNCT ^property[=].valueCode = #ADNFSPMNCT
* #ADCNSPMNCT ^property[+].code = #internalId
* #ADCNSPMNCT ^property[=].valueCode = #20010
* #ADCNSPMNCT ^property[+].code = #subsumedBy
* #ADCNSPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPPPELAT "adjud. non-payee payable prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #ADNPPPELAT ^property[0].code = #status
* #ADNPPPELAT ^property[=].valueCode = #active
* #ADNPPPELAT ^property[+].code = #internalId
* #ADNPPPELAT ^property[=].valueCode = #17544
* #ADNPPPELAT ^property[+].code = #subsumedBy
* #ADNPPPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPPPELCT "adjud. non-payee payable prior-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #ADNPPPELCT ^property[0].code = #status
* #ADNPPPELCT ^property[=].valueCode = #active
* #ADNPPPELCT ^property[+].code = #internalId
* #ADNPPPELCT ^property[=].valueCode = #17543
* #ADNPPPELCT ^property[+].code = #subsumedBy
* #ADNPPPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPPPMNAT "adjud. non-payee payable prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #ADNPPPMNAT ^property[0].code = #status
* #ADNPPPMNAT ^property[=].valueCode = #active
* #ADNPPPMNAT ^property[+].code = #internalId
* #ADNPPPMNAT ^property[=].valueCode = #17546
* #ADNPPPMNAT ^property[+].code = #subsumedBy
* #ADNPPPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPPPMNCT "adjud. non-payee payable prior-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #ADNPPPMNCT ^property[0].code = #status
* #ADNPPPMNCT ^property[=].valueCode = #active
* #ADNPPPMNCT ^property[+].code = #internalId
* #ADNPPPMNCT ^property[=].valueCode = #17545
* #ADNPPPMNCT ^property[+].code = #subsumedBy
* #ADNPPPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPSPELAT "adjud. non-payee payable same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #ADNPSPELAT ^property[0].code = #status
* #ADNPSPELAT ^property[=].valueCode = #active
* #ADNPSPELAT ^property[+].code = #internalId
* #ADNPSPELAT ^property[=].valueCode = #17540
* #ADNPSPELAT ^property[+].code = #subsumedBy
* #ADNPSPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPSPELCT "adjud. non-payee payable same-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #ADNPSPELCT ^property[0].code = #status
* #ADNPSPELCT ^property[=].valueCode = #active
* #ADNPSPELCT ^property[+].code = #internalId
* #ADNPSPELCT ^property[=].valueCode = #17539
* #ADNPSPELCT ^property[+].code = #subsumedBy
* #ADNPSPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPSPMNAT "adjud. non-payee payable same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #ADNPSPMNAT ^property[0].code = #status
* #ADNPSPMNAT ^property[=].valueCode = #active
* #ADNPSPMNAT ^property[+].code = #internalId
* #ADNPSPMNAT ^property[=].valueCode = #17542
* #ADNPSPMNAT ^property[+].code = #subsumedBy
* #ADNPSPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADNPSPMNCT "adjud. non-payee payable same-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #ADNPSPMNCT ^property[0].code = #status
* #ADNPSPMNCT ^property[=].valueCode = #active
* #ADNPSPMNCT ^property[+].code = #internalId
* #ADNPSPMNCT ^property[=].valueCode = #17541
* #ADNPSPMNCT ^property[+].code = #subsumedBy
* #ADNPSPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPPPELAT "adjud. payee payable prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #ADPPPPELAT ^property[0].code = #status
* #ADPPPPELAT ^property[=].valueCode = #active
* #ADPPPPELAT ^property[+].code = #internalId
* #ADPPPPELAT ^property[=].valueCode = #17536
* #ADPPPPELAT ^property[+].code = #subsumedBy
* #ADPPPPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPPPELCT "adjud. payee payable prior-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #ADPPPPELCT ^property[0].code = #status
* #ADPPPPELCT ^property[=].valueCode = #active
* #ADPPPPELCT ^property[+].code = #internalId
* #ADPPPPELCT ^property[=].valueCode = #17535
* #ADPPPPELCT ^property[+].code = #subsumedBy
* #ADPPPPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPPPMNAT "adjud. payee payable prior-period manual amout" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted manually."
* #ADPPPPMNAT ^property[0].code = #status
* #ADPPPPMNAT ^property[=].valueCode = #active
* #ADPPPPMNAT ^property[+].code = #internalId
* #ADPPPPMNAT ^property[=].valueCode = #17538
* #ADPPPPMNAT ^property[+].code = #subsumedBy
* #ADPPPPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPPPMNCT "adjud. payee payable prior-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable prior to the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted manually."
* #ADPPPPMNCT ^property[0].code = #status
* #ADPPPPMNCT ^property[=].valueCode = #active
* #ADPPPPMNCT ^property[+].code = #internalId
* #ADPPPPMNCT ^property[=].valueCode = #17537
* #ADPPPPMNCT ^property[+].code = #subsumedBy
* #ADPPPPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPSPELAT "adjud. payee payable same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #ADPPSPELAT ^property[0].code = #status
* #ADPPSPELAT ^property[=].valueCode = #active
* #ADPPSPELAT ^property[+].code = #internalId
* #ADPPSPELAT ^property[=].valueCode = #17532
* #ADPPSPELAT ^property[+].code = #subsumedBy
* #ADPPSPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPSPELCT "adjud. payee payable same-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #ADPPSPELCT ^property[0].code = #status
* #ADPPSPELCT ^property[=].valueCode = #active
* #ADPPSPELCT ^property[+].code = #internalId
* #ADPPSPELCT ^property[=].valueCode = #17531
* #ADPPSPELCT ^property[+].code = #subsumedBy
* #ADPPSPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPSPMNAT "adjud. payee payable same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted manually."
* #ADPPSPMNAT ^property[0].code = #status
* #ADPPSPMNAT ^property[=].valueCode = #active
* #ADPPSPMNAT ^property[+].code = #internalId
* #ADPPSPMNAT ^property[=].valueCode = #17534
* #ADPPSPMNAT ^property[+].code = #subsumedBy
* #ADPPSPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADPPSPMNCT "adjud. payee payable same-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as payable during the specified time period (based on adjudication date) that match a specified payee (e.g. pay provider) and submitted manually."
* #ADPPSPMNCT ^property[0].code = #status
* #ADPPSPMNCT ^property[=].valueCode = #active
* #ADPPSPMNCT ^property[+].code = #internalId
* #ADPPSPMNCT ^property[=].valueCode = #17533
* #ADPPSPMNCT ^property[+].code = #subsumedBy
* #ADPPSPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFPPELAT "adjud. refused prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as refused prior to the specified time period (based on adjudication date) and submitted electronically."
* #ADRFPPELAT ^property[0].code = #status
* #ADRFPPELAT ^property[=].valueCode = #active
* #ADRFPPELAT ^property[+].code = #internalId
* #ADRFPPELAT ^property[=].valueCode = #17560
* #ADRFPPELAT ^property[+].code = #subsumedBy
* #ADRFPPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFPPELCT "adjud. refused prior-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as refused prior to the specified time period (based on adjudication date) and submitted electronically."
* #ADRFPPELCT ^property[0].code = #status
* #ADRFPPELCT ^property[=].valueCode = #active
* #ADRFPPELCT ^property[+].code = #internalId
* #ADRFPPELCT ^property[=].valueCode = #17559
* #ADRFPPELCT ^property[+].code = #subsumedBy
* #ADRFPPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFPPMNAT "adjud. refused prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as refused prior to the specified time period (based on adjudication date) and submitted manually."
* #ADRFPPMNAT ^property[0].code = #status
* #ADRFPPMNAT ^property[=].valueCode = #active
* #ADRFPPMNAT ^property[+].code = #internalId
* #ADRFPPMNAT ^property[=].valueCode = #17562
* #ADRFPPMNAT ^property[+].code = #subsumedBy
* #ADRFPPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFPPMNCT "adjud. refused prior-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as refused prior to the specified time period (based on adjudication date) and submitted manually."
* #ADRFPPMNCT ^property[0].code = #status
* #ADRFPPMNCT ^property[=].valueCode = #active
* #ADRFPPMNCT ^property[+].code = #internalId
* #ADRFPPMNCT ^property[=].valueCode = #17561
* #ADRFPPMNCT ^property[+].code = #subsumedBy
* #ADRFPPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFSPELAT "adjud. refused same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as refused during the specified time period (based on adjudication date) and submitted electronically."
* #ADRFSPELAT ^property[0].code = #status
* #ADRFSPELAT ^property[=].valueCode = #active
* #ADRFSPELAT ^property[+].code = #internalId
* #ADRFSPELAT ^property[=].valueCode = #17556
* #ADRFSPELAT ^property[+].code = #subsumedBy
* #ADRFSPELAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFSPELCT "adjud. refused same-period electronic count" "Identifies the total number of all Invoice Groupings that were adjudicated as refused during the specified time period (based on adjudication date) and submitted electronically."
* #ADRFSPELCT ^property[0].code = #status
* #ADRFSPELCT ^property[=].valueCode = #active
* #ADRFSPELCT ^property[+].code = #internalId
* #ADRFSPELCT ^property[=].valueCode = #17555
* #ADRFSPELCT ^property[+].code = #subsumedBy
* #ADRFSPELCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFSPMNAT "adjud. refused same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were adjudicated as refused during the specified time period (based on adjudication date) and submitted manually."
* #ADRFSPMNAT ^property[0].code = #status
* #ADRFSPMNAT ^property[=].valueCode = #active
* #ADRFSPMNAT ^property[+].code = #internalId
* #ADRFSPMNAT ^property[=].valueCode = #17558
* #ADRFSPMNAT ^property[+].code = #subsumedBy
* #ADRFSPMNAT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #ADRFSPMNCT "adjud. refused same-period manual count" "Identifies the total number of all Invoice Groupings that were adjudicated as refused during the specified time period (based on adjudication date) and submitted manually."
* #ADRFSPMNCT ^property[0].code = #status
* #ADRFSPMNCT ^property[=].valueCode = #active
* #ADRFSPMNCT ^property[+].code = #internalId
* #ADRFSPMNCT ^property[=].valueCode = #17557
* #ADRFSPMNCT ^property[+].code = #subsumedBy
* #ADRFSPMNCT ^property[=].valueCode = #_InvoiceElementAdjudicated
* #PDNFPPELAT "paid nullified prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted electronically."
* #PDNFPPELAT ^property[0].code = #status
* #PDNFPPELAT ^property[=].valueCode = #active
* #PDNFPPELAT ^property[+].code = #synonymCode
* #PDNFPPELAT ^property[=].valueCode = #PDCNPPELAT
* #PDNFPPELAT ^property[+].code = #internalId
* #PDNFPPELAT ^property[=].valueCode = #20017
* #PDNFPPELAT ^property[+].code = #subsumedBy
* #PDNFPPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNPPELAT "paid nullified prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted electronically."
* #PDCNPPELAT ^property[0].code = #status
* #PDCNPPELAT ^property[=].valueCode = #retired
* #PDCNPPELAT ^property[+].code = #synonymCode
* #PDCNPPELAT ^property[=].valueCode = #PDNFPPELAT
* #PDCNPPELAT ^property[+].code = #internalId
* #PDCNPPELAT ^property[=].valueCode = #20017
* #PDCNPPELAT ^property[+].code = #subsumedBy
* #PDCNPPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFPPELCT "paid nullified prior-period electronic count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted electronically."
* #PDNFPPELCT ^property[0].code = #status
* #PDNFPPELCT ^property[=].valueCode = #active
* #PDNFPPELCT ^property[+].code = #synonymCode
* #PDNFPPELCT ^property[=].valueCode = #PDCNPPELCT
* #PDNFPPELCT ^property[+].code = #internalId
* #PDNFPPELCT ^property[=].valueCode = #20016
* #PDNFPPELCT ^property[+].code = #subsumedBy
* #PDNFPPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNPPELCT "paid nullified prior-period electronic count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted electronically."
* #PDCNPPELCT ^property[0].code = #status
* #PDCNPPELCT ^property[=].valueCode = #retired
* #PDCNPPELCT ^property[+].code = #synonymCode
* #PDCNPPELCT ^property[=].valueCode = #PDNFPPELCT
* #PDCNPPELCT ^property[+].code = #internalId
* #PDCNPPELCT ^property[=].valueCode = #20016
* #PDCNPPELCT ^property[+].code = #subsumedBy
* #PDCNPPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFPPMNAT "paid nullified prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDNFPPMNAT ^property[0].code = #status
* #PDNFPPMNAT ^property[=].valueCode = #active
* #PDNFPPMNAT ^property[+].code = #synonymCode
* #PDNFPPMNAT ^property[=].valueCode = #PDCNPPMNAT
* #PDNFPPMNAT ^property[+].code = #internalId
* #PDNFPPMNAT ^property[=].valueCode = #20019
* #PDNFPPMNAT ^property[+].code = #subsumedBy
* #PDNFPPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNPPMNAT "paid nullified prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDCNPPMNAT ^property[0].code = #status
* #PDCNPPMNAT ^property[=].valueCode = #retired
* #PDCNPPMNAT ^property[+].code = #synonymCode
* #PDCNPPMNAT ^property[=].valueCode = #PDNFPPMNAT
* #PDCNPPMNAT ^property[+].code = #internalId
* #PDCNPPMNAT ^property[=].valueCode = #20019
* #PDCNPPMNAT ^property[+].code = #subsumedBy
* #PDCNPPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFPPMNCT "paid nullified prior-period manual count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDNFPPMNCT ^property[0].code = #status
* #PDNFPPMNCT ^property[=].valueCode = #active
* #PDNFPPMNCT ^property[+].code = #synonymCode
* #PDNFPPMNCT ^property[=].valueCode = #PDCNPPMNCT
* #PDNFPPMNCT ^property[+].code = #internalId
* #PDNFPPMNCT ^property[=].valueCode = #20018
* #PDNFPPMNCT ^property[+].code = #subsumedBy
* #PDNFPPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNPPMNCT "paid nullified prior-period manual count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDCNPPMNCT ^property[0].code = #status
* #PDCNPPMNCT ^property[=].valueCode = #retired
* #PDCNPPMNCT ^property[+].code = #synonymCode
* #PDCNPPMNCT ^property[=].valueCode = #PDNFPPMNCT
* #PDCNPPMNCT ^property[+].code = #internalId
* #PDCNPPMNCT ^property[=].valueCode = #20018
* #PDCNPPMNCT ^property[+].code = #subsumedBy
* #PDCNPPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFSPELAT "paid nullified same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently nullified in the specified period and submitted electronically."
* #PDNFSPELAT ^property[0].code = #status
* #PDNFSPELAT ^property[=].valueCode = #active
* #PDNFSPELAT ^property[+].code = #synonymCode
* #PDNFSPELAT ^property[=].valueCode = #PDCNSPELAT
* #PDNFSPELAT ^property[+].code = #internalId
* #PDNFSPELAT ^property[=].valueCode = #20013
* #PDNFSPELAT ^property[+].code = #subsumedBy
* #PDNFSPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNSPELAT "paid nullified same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently nullified in the specified period and submitted electronically."
* #PDCNSPELAT ^property[0].code = #status
* #PDCNSPELAT ^property[=].valueCode = #retired
* #PDCNSPELAT ^property[+].code = #synonymCode
* #PDCNSPELAT ^property[=].valueCode = #PDNFSPELAT
* #PDCNSPELAT ^property[+].code = #internalId
* #PDCNSPELAT ^property[=].valueCode = #20013
* #PDCNSPELAT ^property[+].code = #subsumedBy
* #PDCNSPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFSPELCT "paid nullified same-period electronic count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently cancelled in the specified period and submitted electronically."
* #PDNFSPELCT ^property[0].code = #status
* #PDNFSPELCT ^property[=].valueCode = #active
* #PDNFSPELCT ^property[+].code = #synonymCode
* #PDNFSPELCT ^property[=].valueCode = #PDCNSPELCT
* #PDNFSPELCT ^property[+].code = #internalId
* #PDNFSPELCT ^property[=].valueCode = #20012
* #PDNFSPELCT ^property[+].code = #subsumedBy
* #PDNFSPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNSPELCT "paid nullified same-period electronic count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently cancelled in the specified period and submitted electronically."
* #PDCNSPELCT ^property[0].code = #status
* #PDCNSPELCT ^property[=].valueCode = #retired
* #PDCNSPELCT ^property[+].code = #synonymCode
* #PDCNSPELCT ^property[=].valueCode = #PDNFSPELCT
* #PDCNSPELCT ^property[+].code = #internalId
* #PDCNSPELCT ^property[=].valueCode = #20012
* #PDCNSPELCT ^property[+].code = #subsumedBy
* #PDCNSPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFSPMNAT "paid nullified same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDNFSPMNAT ^property[0].code = #status
* #PDNFSPMNAT ^property[=].valueCode = #active
* #PDNFSPMNAT ^property[+].code = #synonymCode
* #PDNFSPMNAT ^property[=].valueCode = #PDCNSPMNAT
* #PDNFSPMNAT ^property[+].code = #internalId
* #PDNFSPMNAT ^property[=].valueCode = #20015
* #PDNFSPMNAT ^property[+].code = #subsumedBy
* #PDNFSPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNSPMNAT "paid nullified same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDCNSPMNAT ^property[0].code = #status
* #PDCNSPMNAT ^property[=].valueCode = #retired
* #PDCNSPMNAT ^property[+].code = #synonymCode
* #PDCNSPMNAT ^property[=].valueCode = #PDNFSPMNAT
* #PDCNSPMNAT ^property[+].code = #internalId
* #PDCNSPMNAT ^property[=].valueCode = #20015
* #PDCNSPMNAT ^property[+].code = #subsumedBy
* #PDCNSPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNFSPMNCT "paid nullified same-period manual count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDNFSPMNCT ^property[0].code = #status
* #PDNFSPMNCT ^property[=].valueCode = #active
* #PDNFSPMNCT ^property[+].code = #synonymCode
* #PDNFSPMNCT ^property[=].valueCode = #PDCNSPMNCT
* #PDNFSPMNCT ^property[+].code = #internalId
* #PDNFSPMNCT ^property[=].valueCode = #20014
* #PDNFSPMNCT ^property[+].code = #subsumedBy
* #PDNFSPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDCNSPMNCT "paid nullified same-period manual count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date), subsequently nullified in the specified period and submitted manually."
* #PDCNSPMNCT ^property[0].code = #status
* #PDCNSPMNCT ^property[=].valueCode = #retired
* #PDCNSPMNCT ^property[+].code = #synonymCode
* #PDCNSPMNCT ^property[=].valueCode = #PDNFSPMNCT
* #PDCNSPMNCT ^property[+].code = #internalId
* #PDCNSPMNCT ^property[=].valueCode = #20014
* #PDCNSPMNCT ^property[+].code = #subsumedBy
* #PDCNSPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPPPELAT "paid non-payee payable prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #PDNPPPELAT ^property[0].code = #status
* #PDNPPPELAT ^property[=].valueCode = #active
* #PDNPPPELAT ^property[+].code = #internalId
* #PDNPPPELAT ^property[=].valueCode = #17577
* #PDNPPPELAT ^property[+].code = #subsumedBy
* #PDNPPPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPPPELCT "paid non-payee payable prior-period electronic count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #PDNPPPELCT ^property[0].code = #status
* #PDNPPPELCT ^property[=].valueCode = #active
* #PDNPPPELCT ^property[+].code = #internalId
* #PDNPPPELCT ^property[=].valueCode = #17576
* #PDNPPPELCT ^property[+].code = #subsumedBy
* #PDNPPPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPPPMNAT "paid non-payee payable prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #PDNPPPMNAT ^property[0].code = #status
* #PDNPPPMNAT ^property[=].valueCode = #active
* #PDNPPPMNAT ^property[+].code = #internalId
* #PDNPPPMNAT ^property[=].valueCode = #17579
* #PDNPPPMNAT ^property[+].code = #subsumedBy
* #PDNPPPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPPPMNCT "paid non-payee payable prior-period manual count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #PDNPPPMNCT ^property[0].code = #status
* #PDNPPPMNCT ^property[=].valueCode = #active
* #PDNPPPMNCT ^property[+].code = #internalId
* #PDNPPPMNCT ^property[=].valueCode = #17578
* #PDNPPPMNCT ^property[+].code = #subsumedBy
* #PDNPPPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPSPELAT "paid non-payee payable same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #PDNPSPELAT ^property[0].code = #status
* #PDNPSPELAT ^property[=].valueCode = #active
* #PDNPSPELAT ^property[+].code = #internalId
* #PDNPSPELAT ^property[=].valueCode = #17573
* #PDNPSPELAT ^property[+].code = #subsumedBy
* #PDNPSPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPSPELCT "paid non-payee payable same-period electronic count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted electronically."
* #PDNPSPELCT ^property[0].code = #status
* #PDNPSPELCT ^property[=].valueCode = #active
* #PDNPSPELCT ^property[+].code = #internalId
* #PDNPSPELCT ^property[=].valueCode = #17572
* #PDNPSPELCT ^property[+].code = #subsumedBy
* #PDNPSPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPSPMNAT "paid non-payee payable same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #PDNPSPMNAT ^property[0].code = #status
* #PDNPSPMNAT ^property[=].valueCode = #active
* #PDNPSPMNAT ^property[+].code = #internalId
* #PDNPSPMNAT ^property[=].valueCode = #17575
* #PDNPSPMNAT ^property[+].code = #subsumedBy
* #PDNPSPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDNPSPMNCT "paid non-payee payable same-period manual count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date) that do not match a specified payee (e.g. pay patient) and submitted manually."
* #PDNPSPMNCT ^property[0].code = #status
* #PDNPSPMNCT ^property[=].valueCode = #active
* #PDNPSPMNCT ^property[+].code = #internalId
* #PDNPSPMNCT ^property[=].valueCode = #17574
* #PDNPSPMNCT ^property[+].code = #subsumedBy
* #PDNPSPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPPPELAT "paid payee payable prior-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #PDPPPPELAT ^property[0].code = #status
* #PDPPPPELAT ^property[=].valueCode = #active
* #PDPPPPELAT ^property[+].code = #internalId
* #PDPPPPELAT ^property[=].valueCode = #17569
* #PDPPPPELAT ^property[+].code = #subsumedBy
* #PDPPPPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPPPELCT "paid payee payable prior-period electronic count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #PDPPPPELCT ^property[0].code = #status
* #PDPPPPELCT ^property[=].valueCode = #active
* #PDPPPPELCT ^property[+].code = #internalId
* #PDPPPPELCT ^property[=].valueCode = #17568
* #PDPPPPELCT ^property[+].code = #subsumedBy
* #PDPPPPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPPPMNAT "paid payee payable prior-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted manually."
* #PDPPPPMNAT ^property[0].code = #status
* #PDPPPPMNAT ^property[=].valueCode = #active
* #PDPPPPMNAT ^property[+].code = #internalId
* #PDPPPPMNAT ^property[=].valueCode = #17571
* #PDPPPPMNAT ^property[+].code = #subsumedBy
* #PDPPPPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPPPMNCT "paid payee payable prior-period manual count" "Identifies the total number of all Invoice Groupings that were paid prior to the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted manually."
* #PDPPPPMNCT ^property[0].code = #status
* #PDPPPPMNCT ^property[=].valueCode = #active
* #PDPPPPMNCT ^property[+].code = #internalId
* #PDPPPPMNCT ^property[=].valueCode = #17570
* #PDPPPPMNCT ^property[+].code = #subsumedBy
* #PDPPPPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPSPELAT "paid payee payable same-period electronic amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #PDPPSPELAT ^property[0].code = #status
* #PDPPSPELAT ^property[=].valueCode = #active
* #PDPPSPELAT ^property[+].code = #internalId
* #PDPPSPELAT ^property[=].valueCode = #17565
* #PDPPSPELAT ^property[+].code = #subsumedBy
* #PDPPSPELAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPSPELCT "paid payee payable same-period electronic count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted electronically."
* #PDPPSPELCT ^property[0].code = #status
* #PDPPSPELCT ^property[=].valueCode = #active
* #PDPPSPELCT ^property[+].code = #internalId
* #PDPPSPELCT ^property[=].valueCode = #17564
* #PDPPSPELCT ^property[+].code = #subsumedBy
* #PDPPSPELCT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPSPMNAT "paid payee payable same-period manual amount" "Identifies the total net amount of all Invoice Groupings that were paid during the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted manually."
* #PDPPSPMNAT ^property[0].code = #status
* #PDPPSPMNAT ^property[=].valueCode = #active
* #PDPPSPMNAT ^property[+].code = #internalId
* #PDPPSPMNAT ^property[=].valueCode = #17567
* #PDPPSPMNAT ^property[+].code = #subsumedBy
* #PDPPSPMNAT ^property[=].valueCode = #_InvoiceElementPaid
* #PDPPSPMNCT "paid payee payable same-period manual count" "Identifies the total number of all Invoice Groupings that were paid during the specified time period (based on payment date) that match a specified payee (e.g. pay provider) and submitted manually."
* #PDPPSPMNCT ^property[0].code = #status
* #PDPPSPMNCT ^property[=].valueCode = #active
* #PDPPSPMNCT ^property[+].code = #internalId
* #PDPPSPMNCT ^property[=].valueCode = #17566
* #PDPPSPMNCT ^property[+].code = #subsumedBy
* #PDPPSPMNCT ^property[=].valueCode = #_InvoiceElementPaid
* #SBBLELAT "submitted billed electronic amount" "Identifies the total net amount billed for all submitted Invoice Groupings within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBBLELAT ^property[0].code = #status
* #SBBLELAT ^property[=].valueCode = #active
* #SBBLELAT ^property[+].code = #synonymCode
* #SBBLELAT ^property[=].valueCode = #SBBLAT
* #SBBLELAT ^property[+].code = #internalId
* #SBBLELAT ^property[=].valueCode = #19999
* #SBBLELAT ^property[+].code = #subsumedBy
* #SBBLELAT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBBLAT "submitted billed electronic amount" "Identifies the total net amount billed for all submitted Invoice Groupings within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBBLAT ^property[0].code = #status
* #SBBLAT ^property[=].valueCode = #retired
* #SBBLAT ^property[+].code = #synonymCode
* #SBBLAT ^property[=].valueCode = #SBBLELAT
* #SBBLAT ^property[+].code = #internalId
* #SBBLAT ^property[=].valueCode = #19999
* #SBBLAT ^property[+].code = #subsumedBy
* #SBBLAT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBBLELCT "submitted billed electronic count" "Identifies the total number of submitted Invoice Groupings within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBBLELCT ^property[0].code = #status
* #SBBLELCT ^property[=].valueCode = #active
* #SBBLELCT ^property[+].code = #synonymCode
* #SBBLELCT ^property[=].valueCode = #SBBLCT
* #SBBLELCT ^property[+].code = #internalId
* #SBBLELCT ^property[=].valueCode = #19998
* #SBBLELCT ^property[+].code = #subsumedBy
* #SBBLELCT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBBLCT "submitted billed electronic count" "Identifies the total number of submitted Invoice Groupings within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBBLCT ^property[0].code = #status
* #SBBLCT ^property[=].valueCode = #retired
* #SBBLCT ^property[+].code = #synonymCode
* #SBBLCT ^property[=].valueCode = #SBBLELCT
* #SBBLCT ^property[+].code = #internalId
* #SBBLCT ^property[=].valueCode = #19998
* #SBBLCT ^property[+].code = #subsumedBy
* #SBBLCT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBNFELAT "submitted nullified electronic amount" "Identifies the total net amount billed for all submitted Invoice Groupings that were nullified within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBNFELAT ^property[0].code = #status
* #SBNFELAT ^property[=].valueCode = #active
* #SBNFELAT ^property[+].code = #synonymCode
* #SBNFELAT ^property[=].valueCode = #SBCNAT
* #SBNFELAT ^property[+].code = #internalId
* #SBNFELAT ^property[=].valueCode = #20001
* #SBNFELAT ^property[+].code = #subsumedBy
* #SBNFELAT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBCNAT "submitted nullified electronic amount" "Identifies the total net amount billed for all submitted Invoice Groupings that were nullified within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBCNAT ^property[0].code = #status
* #SBCNAT ^property[=].valueCode = #retired
* #SBCNAT ^property[+].code = #synonymCode
* #SBCNAT ^property[=].valueCode = #SBNFELAT
* #SBCNAT ^property[+].code = #internalId
* #SBCNAT ^property[=].valueCode = #20001
* #SBCNAT ^property[+].code = #subsumedBy
* #SBCNAT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBNFELCT "submitted cancelled electronic count" "Identifies the total number of submitted Invoice Groupings that were nullified within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBNFELCT ^property[0].code = #status
* #SBNFELCT ^property[=].valueCode = #active
* #SBNFELCT ^property[+].code = #synonymCode
* #SBNFELCT ^property[=].valueCode = #SBCNCT
* #SBNFELCT ^property[+].code = #internalId
* #SBNFELCT ^property[=].valueCode = #20000
* #SBNFELCT ^property[+].code = #subsumedBy
* #SBNFELCT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBCNCT "submitted cancelled electronic count" "Identifies the total number of submitted Invoice Groupings that were nullified within a time period and submitted electronically. Adjudicated invoice elements are included."
* #SBCNCT ^property[0].code = #status
* #SBCNCT ^property[=].valueCode = #retired
* #SBCNCT ^property[+].code = #synonymCode
* #SBCNCT ^property[=].valueCode = #SBNFELCT
* #SBCNCT ^property[+].code = #internalId
* #SBCNCT ^property[=].valueCode = #20000
* #SBCNCT ^property[+].code = #subsumedBy
* #SBCNCT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBPDELAT "submitted pending electronic amount" "Identifies the total net amount billed for all submitted Invoice Groupings that are pended or held by the payor, within a time period and submitted electronically. Adjudicated invoice elements are not included."
* #SBPDELAT ^property[0].code = #status
* #SBPDELAT ^property[=].valueCode = #active
* #SBPDELAT ^property[+].code = #synonymCode
* #SBPDELAT ^property[=].valueCode = #SBPDAT
* #SBPDELAT ^property[+].code = #internalId
* #SBPDELAT ^property[=].valueCode = #20003
* #SBPDELAT ^property[+].code = #subsumedBy
* #SBPDELAT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBPDAT "submitted pending electronic amount" "Identifies the total net amount billed for all submitted Invoice Groupings that are pended or held by the payor, within a time period and submitted electronically. Adjudicated invoice elements are not included."
* #SBPDAT ^property[0].code = #status
* #SBPDAT ^property[=].valueCode = #retired
* #SBPDAT ^property[+].code = #synonymCode
* #SBPDAT ^property[=].valueCode = #SBPDELAT
* #SBPDAT ^property[+].code = #internalId
* #SBPDAT ^property[=].valueCode = #20003
* #SBPDAT ^property[+].code = #subsumedBy
* #SBPDAT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBPDELCT "submitted pending electronic count" "Identifies the total number of submitted Invoice Groupings that are pended or held by the payor, within a time period and submitted electronically. Adjudicated invoice elements are not included."
* #SBPDELCT ^property[0].code = #status
* #SBPDELCT ^property[=].valueCode = #active
* #SBPDELCT ^property[+].code = #synonymCode
* #SBPDELCT ^property[=].valueCode = #SBPDCT
* #SBPDELCT ^property[+].code = #internalId
* #SBPDELCT ^property[=].valueCode = #20002
* #SBPDELCT ^property[+].code = #subsumedBy
* #SBPDELCT ^property[=].valueCode = #_InvoiceElementSubmitted
* #SBPDCT "submitted pending electronic count" "Identifies the total number of submitted Invoice Groupings that are pended or held by the payor, within a time period and submitted electronically. Adjudicated invoice elements are not included."
* #SBPDCT ^property[0].code = #status
* #SBPDCT ^property[=].valueCode = #retired
* #SBPDCT ^property[+].code = #synonymCode
* #SBPDCT ^property[=].valueCode = #SBPDELCT
* #SBPDCT ^property[+].code = #internalId
* #SBPDCT ^property[=].valueCode = #20002
* #SBPDCT ^property[+].code = #subsumedBy
* #SBPDCT ^property[=].valueCode = #_InvoiceElementSubmitted
* #21611-9 "age patient qn est" "**Definition:**Estimated age."
* #21611-9 ^property[0].code = #status
* #21611-9 ^property[=].valueCode = #active
* #21611-9 ^property[+].code = #internalId
* #21611-9 ^property[=].valueCode = #21630
* #21611-9 ^property[+].code = #subsumedBy
* #21611-9 ^property[=].valueCode = #_LOINCObservationActContextAgeType
* #21612-7 "age patient qn reported" "**Definition:**Reported age."
* #21612-7 ^property[0].code = #status
* #21612-7 ^property[=].valueCode = #active
* #21612-7 ^property[+].code = #internalId
* #21612-7 ^property[=].valueCode = #21631
* #21612-7 ^property[+].code = #subsumedBy
* #21612-7 ^property[=].valueCode = #_LOINCObservationActContextAgeType
* #29553-5 "age patient qn calc" "**Definition:**Calculated age."
* #29553-5 ^property[0].code = #status
* #29553-5 ^property[=].valueCode = #active
* #29553-5 ^property[+].code = #internalId
* #29553-5 ^property[=].valueCode = #21632
* #29553-5 ^property[+].code = #subsumedBy
* #29553-5 ^property[=].valueCode = #_LOINCObservationActContextAgeType
* #30525-0 "age patient qn definition" "**Definition:**General specification of age with no implied method of determination."
* #30525-0 ^property[0].code = #status
* #30525-0 ^property[=].valueCode = #active
* #30525-0 ^property[+].code = #internalId
* #30525-0 ^property[=].valueCode = #21629
* #30525-0 ^property[+].code = #subsumedBy
* #30525-0 ^property[=].valueCode = #_LOINCObservationActContextAgeType
* #30972-4 "age at onset of adverse event" "**Definition:**Age at onset of associated adverse event; no implied method of determination."
* #30972-4 ^property[0].code = #status
* #30972-4 ^property[=].valueCode = #active
* #30972-4 ^property[+].code = #internalId
* #30972-4 ^property[=].valueCode = #21633
* #30972-4 ^property[+].code = #subsumedBy
* #30972-4 ^property[=].valueCode = #_LOINCObservationActContextAgeType
* #REP_HALF_LIFE "representative half-life" "**Description:**This observation represents an 'average' or 'expected' half-life typical of the product."
* #REP_HALF_LIFE ^property[0].code = #status
* #REP_HALF_LIFE ^property[=].valueCode = #active
* #REP_HALF_LIFE ^property[+].code = #internalId
* #REP_HALF_LIFE ^property[=].valueCode = #21678
* #REP_HALF_LIFE ^property[+].code = #subsumedBy
* #REP_HALF_LIFE ^property[=].valueCode = #_MedicationObservationType
* #SPLCOATING "coating" "**Definition:** A characteristic of an oral solid dosage form of a medicinal product, indicating whether it has one or more coatings such as sugar coating, film coating, or enteric coating. Only coatings to the external surface or the dosage form should be considered (for example, coatings to individual pellets or granules inside a capsule or tablet are excluded from consideration).\r\n\r\n**Constraints:** The Observation.value must be a Boolean (BL) with true for the presence or false for the absence of one or more coatings on a solid dosage form."
* #SPLCOATING ^property[0].code = #status
* #SPLCOATING ^property[=].valueCode = #active
* #SPLCOATING ^property[+].code = #internalId
* #SPLCOATING ^property[=].valueCode = #21604
* #SPLCOATING ^property[+].code = #subsumedBy
* #SPLCOATING ^property[=].valueCode = #_MedicationObservationType
* #SPLCOLOR "color" "**Definition:** A characteristic of an oral solid dosage form of a medicinal product, specifying the color or colors that most predominantly define the appearance of the dose form. SPLCOLOR is not an FDA specification for the actual color of solid dosage forms or the names of colors that can appear in labeling.\r\n\r\n**Constraints:** The Observation.value must be a single coded value or a list of multiple coded values, specifying one or more distinct colors that approximate of the color(s) of distinct areas of the solid dosage form, such as the different sides of a tablet or one-part capsule, or the different halves of a two-part capsule. Bands on banded capsules, regardless of the color, are not considered when assigning an SPLCOLOR. Imprints on the dosage form, regardless of their color are not considered when assigning an SPLCOLOR. If more than one color exists on a particular side or half, then the most predominant color on that side or half is recorded. If the gelatin capsule shell is colorless and transparent, use the predominant color of the contents that appears through the colorless and transparent capsule shell. Colors can include: Black;Gray;White;Red;Pink;Purple;Green;Yellow;Orange;Brown;Blue;Turquoise."
* #SPLCOLOR ^property[0].code = #status
* #SPLCOLOR ^property[=].valueCode = #active
* #SPLCOLOR ^property[+].code = #internalId
* #SPLCOLOR ^property[=].valueCode = #21608
* #SPLCOLOR ^property[+].code = #subsumedBy
* #SPLCOLOR ^property[=].valueCode = #_MedicationObservationType
* #SPLIMAGE "image" "**Description:** A characteristic representing a single file reference that contains two or more views of the same dosage form of the product; in most cases this should represent front and back views of the dosage form, but occasionally additional views might be needed in order to capture all of the important physical characteristics of the dosage form. Any imprint and/or symbol should be clearly identifiable, and the viewer should not normally need to rotate the image in order to read it. Images that are submitted with SPL should be included in the same directory as the SPL file."
* #SPLIMAGE ^property[0].code = #status
* #SPLIMAGE ^property[=].valueCode = #active
* #SPLIMAGE ^property[+].code = #internalId
* #SPLIMAGE ^property[=].valueCode = #21610
* #SPLIMAGE ^property[+].code = #subsumedBy
* #SPLIMAGE ^property[=].valueCode = #_MedicationObservationType
* #SPLIMPRINT "imprint" "**Definition:** A characteristic of an oral solid dosage form of a medicinal product, specifying the alphanumeric text that appears on the solid dosage form, including text that is embossed, debossed, engraved or printed with ink. The presence of other non-textual distinguishing marks or symbols is recorded by SPLSYMBOL.\r\n\r\n**Examples:** Included in SPLIMPRINT are alphanumeric text that appears on the bands of banded capsules and logos and other symbols that can be interpreted as letters or numbers.\r\n\r\n**Constraints:** The Observation.value must be of type Character String (ST). Excluded from SPLIMPRINT are internal and external cut-outs in the form of alphanumeric text and the letter 'R' with a circle around it (when referring to a registered trademark) and the letters 'TM' (when referring to a 'trade mark'). To record text, begin on either side or part of the dosage form. Start at the top left and progress as one would normally read a book. Enter a semicolon to show separation between words or line divisions."
* #SPLIMPRINT ^property[0].code = #status
* #SPLIMPRINT ^property[=].valueCode = #active
* #SPLIMPRINT ^property[+].code = #internalId
* #SPLIMPRINT ^property[=].valueCode = #21607
* #SPLIMPRINT ^property[+].code = #subsumedBy
* #SPLIMPRINT ^property[=].valueCode = #_MedicationObservationType
* #SPLSCORING "scoring" "**Definition:** A characteristic of an oral solid dosage form of a medicinal product, specifying the number of equal pieces that the solid dosage form can be divided into using score line(s).\r\n\r\n**Example:** One score line creating two equal pieces is given a value of 2, two parallel score lines creating three equal pieces is given a value of 3.\r\n\r\n**Constraints:** Whether three parallel score lines create four equal pieces or two intersecting score lines create two equal pieces using one score line and four equal pieces using both score lines, both have the scoring value of 4. Solid dosage forms that are not scored are given a value of 1. Solid dosage forms that can only be divided into unequal pieces are given a null-value with nullFlavor other (OTH)."
* #SPLSCORING ^property[0].code = #status
* #SPLSCORING ^property[=].valueCode = #active
* #SPLSCORING ^property[+].code = #internalId
* #SPLSCORING ^property[=].valueCode = #21606
* #SPLSCORING ^property[+].code = #subsumedBy
* #SPLSCORING ^property[=].valueCode = #_MedicationObservationType
* #SPLSHAPE "shape" "**Description:** A characteristic of an oral solid dosage form of a medicinal product, specifying the two dimensional representation of the solid dose form, in terms of the outside perimeter of a solid dosage form when the dosage form, resting on a flat surface, is viewed from directly above, including slight rounding of corners. SPLSHAPE does not include embossing, scoring, debossing, or internal cut-outs. SPLSHAPE is independent of the orientation of the imprint and logo. Shapes can include: Triangle (3 sided); Square; Round; Semicircle; Pentagon (5 sided); Diamond; Double circle; Bullet; Hexagon (6 sided); Rectangle; Gear; Capsule; Heptagon (7 sided); Trapezoid; Oval; Clover; Octagon (8 sided); Tear; Freeform."
* #SPLSHAPE ^property[0].code = #status
* #SPLSHAPE ^property[=].valueCode = #active
* #SPLSHAPE ^property[+].code = #internalId
* #SPLSHAPE ^property[=].valueCode = #21609
* #SPLSHAPE ^property[+].code = #subsumedBy
* #SPLSHAPE ^property[=].valueCode = #_MedicationObservationType
* #SPLSIZE "size" "**Definition:** A characteristic of an oral solid dosage form of a medicinal product, specifying the longest single dimension of the solid dosage form as a physical quantity in the dimension of length (e.g., 3 mm). The length is should be specified in millimeters and should be rounded to the nearest whole millimeter.\r\n\r\n**Example:** SPLSIZE for a rectangular shaped tablet is the length and SPLSIZE for a round shaped tablet is the diameter."
* #SPLSIZE ^property[0].code = #status
* #SPLSIZE ^property[=].valueCode = #active
* #SPLSIZE ^property[+].code = #internalId
* #SPLSIZE ^property[=].valueCode = #21605
* #SPLSIZE ^property[+].code = #subsumedBy
* #SPLSIZE ^property[=].valueCode = #_MedicationObservationType
* #SPLSYMBOL "symbol" "**Definition:** A characteristic of an oral solid dosage form of a medicinal product, to describe whether or not the medicinal product has a mark or symbol appearing on it for easy and definite recognition. Score lines, letters, numbers, and internal and external cut-outs are not considered marks or symbols. See SPLSCORING and SPLIMPRINT for these characteristics.\r\n\r\n**Constraints:** The Observation.value must be a Boolean (BL) with <u>true</u> indicating the presence and <u>false</u> for the absence of marks or symbols.\r\n\r\n**Example:**"
* #SPLSYMBOL ^property[0].code = #status
* #SPLSYMBOL ^property[=].valueCode = #active
* #SPLSYMBOL ^property[+].code = #internalId
* #SPLSYMBOL ^property[=].valueCode = #21603
* #SPLSYMBOL ^property[+].code = #subsumedBy
* #SPLSYMBOL ^property[=].valueCode = #_MedicationObservationType
* #ADMDX "admitting diagnosis" "Admitting diagnosis are the diagnoses documented for administrative purposes as the basis for a hospital admission."
* #ADMDX ^property[0].code = #status
* #ADMDX ^property[=].valueCode = #active
* #ADMDX ^property[+].code = #internalId
* #ADMDX ^property[=].valueCode = #16839
* #ADMDX ^property[+].code = #subsumedBy
* #ADMDX ^property[=].valueCode = #_ObservationDiagnosisTypes
* #ADMDX ^property[+].code = #subsumedBy
* #ADMDX ^property[=].valueCode = #DX
* #DISDX "discharge diagnosis" "Discharge diagnosis are the diagnoses documented for administrative purposes as the time of hospital discharge."
* #DISDX ^property[0].code = #status
* #DISDX ^property[=].valueCode = #active
* #DISDX ^property[+].code = #internalId
* #DISDX ^property[=].valueCode = #16840
* #DISDX ^property[+].code = #subsumedBy
* #DISDX ^property[=].valueCode = #_ObservationDiagnosisTypes
* #DISDX ^property[+].code = #subsumedBy
* #DISDX ^property[=].valueCode = #DX
* #INTDX "intermediate diagnosis" "Intermediate diagnoses are those diagnoses documented for administrative purposes during the course of a hospital stay."
* #INTDX ^property[0].code = #status
* #INTDX ^property[=].valueCode = #active
* #INTDX ^property[+].code = #internalId
* #INTDX ^property[=].valueCode = #16841
* #INTDX ^property[+].code = #subsumedBy
* #INTDX ^property[=].valueCode = #_ObservationDiagnosisTypes
* #INTDX ^property[+].code = #subsumedBy
* #INTDX ^property[=].valueCode = #DX
* #NOI "nature of injury" "The type of injury that the injury coding specifies."
* #NOI ^property[0].code = #status
* #NOI ^property[=].valueCode = #active
* #NOI ^property[+].code = #internalId
* #NOI ^property[=].valueCode = #20026
* #NOI ^property[+].code = #subsumedBy
* #NOI ^property[=].valueCode = #_ObservationDiagnosisTypes
* #NOI ^property[+].code = #subsumedBy
* #NOI ^property[=].valueCode = #DX
* #_CaseTransmissionMode "case transmission mode" "Code for the mechanism by which disease was acquired by the living subject involved in the public health case. Includes sexually transmitted, airborne, bloodborne, vectorborne, foodborne, zoonotic, nosocomial, mechanical, dermal, congenital, environmental exposure, indeterminate."
* #_CaseTransmissionMode ^property[0].code = #notSelectable
* #_CaseTransmissionMode ^property[=].valueBoolean = true
* #_CaseTransmissionMode ^property[+].code = #status
* #_CaseTransmissionMode ^property[=].valueCode = #active
* #_CaseTransmissionMode ^property[+].code = #internalId
* #_CaseTransmissionMode ^property[=].valueCode = #21908
* #_CaseTransmissionMode ^property[+].code = #subsumedBy
* #_CaseTransmissionMode ^property[=].valueCode = #_ObservationIssueTriggerCodedObservationType
* #AGGREGATE "aggregate measure observation" "Indicates that the observation is carrying out an aggregation calculation, contained in the value element."
* #AGGREGATE ^property[0].code = #status
* #AGGREGATE ^property[=].valueCode = #active
* #AGGREGATE ^property[+].code = #internalId
* #AGGREGATE ^property[=].valueCode = #23626
* #AGGREGATE ^property[+].code = #subsumedBy
* #AGGREGATE ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #CMPMSRMTH "composite measure method" "Indicates what method is used in a quality measure to combine the component measure results included in an composite measure."
* #CMPMSRMTH ^property[0].code = #status
* #CMPMSRMTH ^property[=].valueCode = #active
* #CMPMSRMTH ^property[+].code = #internalId
* #CMPMSRMTH ^property[=].valueCode = #23788
* #CMPMSRMTH ^property[+].code = #subsumedBy
* #CMPMSRMTH ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #CMPMSRSCRWGHT "component measure scoring weight" "An attribute of a quality measure describing the weight this component measure score is to carry in determining the overall composite measure final score. The value is real value greater than 0 and less than 1.0. Each component measure score will be multiplied by its CMPMSRSCRWGHT and then summed with the other component measures to determine the final overall composite measure score. The sum across all CMPMSRSCRWGHT values within a single composite measure SHALL be 1.0. The value assigned is scoped to the composite measure referencing this component measure only."
* #CMPMSRSCRWGHT ^property[0].code = #status
* #CMPMSRSCRWGHT ^property[=].valueCode = #active
* #CMPMSRSCRWGHT ^property[+].code = #internalId
* #CMPMSRSCRWGHT ^property[=].valueCode = #23791
* #CMPMSRSCRWGHT ^property[+].code = #subsumedBy
* #CMPMSRSCRWGHT ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #COPY "copyright" "Identifies the organization(s) who own the intellectual property represented by the eMeasure."
* #COPY ^property[0].code = #status
* #COPY ^property[=].valueCode = #active
* #COPY ^property[+].code = #internalId
* #COPY ^property[=].valueCode = #23020
* #COPY ^property[+].code = #subsumedBy
* #COPY ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #CRS "clinical recommendation statement" "Summary of relevant clinical guidelines or other clinical recommendations supporting this eMeasure."
* #CRS ^property[0].code = #status
* #CRS ^property[=].valueCode = #active
* #CRS ^property[+].code = #internalId
* #CRS ^property[=].valueCode = #23430
* #CRS ^property[+].code = #subsumedBy
* #CRS ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #DEF "definition" "Description of individual terms, provided as needed."
* #DEF ^property[0].code = #status
* #DEF ^property[=].valueCode = #active
* #DEF ^property[+].code = #internalId
* #DEF ^property[=].valueCode = #23433
* #DEF ^property[+].code = #subsumedBy
* #DEF ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #DISC "disclaimer" "Disclaimer information for the eMeasure."
* #DISC ^property[0].code = #status
* #DISC ^property[=].valueCode = #active
* #DISC ^property[+].code = #internalId
* #DISC ^property[=].valueCode = #23022
* #DISC ^property[+].code = #subsumedBy
* #DISC ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #FINALDT "finalized date/time" "The timestamp when the eMeasure was last packaged in the Measure Authoring Tool."
* #FINALDT ^property[0].code = #status
* #FINALDT ^property[=].valueCode = #active
* #FINALDT ^property[+].code = #internalId
* #FINALDT ^property[=].valueCode = #23440
* #FINALDT ^property[+].code = #subsumedBy
* #FINALDT ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #GUIDE "guidance" "Used to allow measure developers to provide additional guidance for implementers to understand greater specificity than could be provided in the logic for data criteria."
* #GUIDE ^property[0].code = #status
* #GUIDE ^property[=].valueCode = #active
* #GUIDE ^property[+].code = #internalId
* #GUIDE ^property[=].valueCode = #23434
* #GUIDE ^property[+].code = #subsumedBy
* #GUIDE ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #IDUR "improvement notation" "Information on whether an increase or decrease in score is the preferred result (e.g., a higher score indicates better quality OR a lower score indicates better quality OR quality is within a range)."
* #IDUR ^property[0].code = #status
* #IDUR ^property[=].valueCode = #active
* #IDUR ^property[+].code = #internalId
* #IDUR ^property[=].valueCode = #23431
* #IDUR ^property[+].code = #subsumedBy
* #IDUR ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #ITMCNT "items counted" "Describes the items counted by the measure (e.g., patients, encounters, procedures, etc.)"
* #ITMCNT ^property[0].code = #status
* #ITMCNT ^property[=].valueCode = #active
* #ITMCNT ^property[+].code = #internalId
* #ITMCNT ^property[=].valueCode = #23441
* #ITMCNT ^property[+].code = #subsumedBy
* #ITMCNT ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #KEY "keyword" "A significant word that aids in discoverability."
* #KEY ^property[0].code = #status
* #KEY ^property[=].valueCode = #active
* #KEY ^property[+].code = #internalId
* #KEY ^property[=].valueCode = #23024
* #KEY ^property[+].code = #subsumedBy
* #KEY ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MEDT "measurement end date" "The end date of the measurement period."
* #MEDT ^property[0].code = #status
* #MEDT ^property[=].valueCode = #active
* #MEDT ^property[+].code = #internalId
* #MEDT ^property[=].valueCode = #23439
* #MEDT ^property[+].code = #subsumedBy
* #MEDT ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSD "measurement start date" "The start date of the measurement period."
* #MSD ^property[0].code = #status
* #MSD ^property[=].valueCode = #active
* #MSD ^property[+].code = #internalId
* #MSD ^property[=].valueCode = #23438
* #MSD ^property[+].code = #subsumedBy
* #MSD ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRADJ "risk adjustment" "The method of adjusting for clinical severity and conditions present at the start of care that can influence patient outcomes for making valid comparisons of outcome measures across providers. Indicates whether an eMeasure is subject to the statistical process for reducing, removing, or clarifying the influences of confounding factors to allow more useful comparisons."
* #MSRADJ ^property[0].code = #status
* #MSRADJ ^property[=].valueCode = #active
* #MSRADJ ^property[+].code = #internalId
* #MSRADJ ^property[=].valueCode = #23028
* #MSRADJ ^property[+].code = #subsumedBy
* #MSRADJ ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRAGG "rate aggregation" "Describes how to combine information calculated based on logic in each of several populations into one summarized result. It can also be used to describe how to risk adjust the data based on supplemental data elements described in the eMeasure. (e.g., pneumonia hospital measures antibiotic selection in the ICU versus non-ICU and then the roll-up of the two).\r\n\r\n*Open Issue:* The description does NOT align well with the definition used in the HQMF specfication; correct the MSGAGG definition, and the possible distinction of MSRAGG as a child of AGGREGATE."
* #MSRAGG ^property[0].code = #status
* #MSRAGG ^property[=].valueCode = #active
* #MSRAGG ^property[+].code = #internalId
* #MSRAGG ^property[=].valueCode = #23021
* #MSRAGG ^property[+].code = #subsumedBy
* #MSRAGG ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRIMPROV "health quality measure improvement notation" "Information on whether an increase or decrease in score is the preferred result. This should reflect information on which way is better, an increase or decrease in score."
* #MSRIMPROV ^property[0].code = #status
* #MSRIMPROV ^property[=].valueCode = #active
* #MSRIMPROV ^property[+].code = #internalId
* #MSRIMPROV ^property[=].valueCode = #23023
* #MSRIMPROV ^property[+].code = #subsumedBy
* #MSRIMPROV ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRJUR "jurisdiction" "The list of jurisdiction(s) for which the measure applies."
* #MSRJUR ^property[0].code = #status
* #MSRJUR ^property[=].valueCode = #active
* #MSRJUR ^property[+].code = #internalId
* #MSRJUR ^property[=].valueCode = #23539
* #MSRJUR ^property[+].code = #subsumedBy
* #MSRJUR ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRRPTR "reporter type" "Type of person or organization that is expected to report the issue."
* #MSRRPTR ^property[0].code = #status
* #MSRRPTR ^property[=].valueCode = #active
* #MSRRPTR ^property[+].code = #internalId
* #MSRRPTR ^property[=].valueCode = #23540
* #MSRRPTR ^property[+].code = #subsumedBy
* #MSRRPTR ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRRPTTIME "timeframe for reporting" "The maximum time that may elapse following completion of the measure until the measure report must be sent to the receiver."
* #MSRRPTTIME ^property[0].code = #status
* #MSRRPTTIME ^property[=].valueCode = #active
* #MSRRPTTIME ^property[+].code = #internalId
* #MSRRPTTIME ^property[=].valueCode = #23541
* #MSRRPTTIME ^property[+].code = #subsumedBy
* #MSRRPTTIME ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRSCORE "measure scoring" "Indicates how the calculation is performed for the eMeasure (e.g., proportion, continuous variable, ratio)"
* #MSRSCORE ^property[0].code = #status
* #MSRSCORE ^property[=].valueCode = #active
* #MSRSCORE ^property[+].code = #internalId
* #MSRSCORE ^property[=].valueCode = #23029
* #MSRSCORE ^property[+].code = #subsumedBy
* #MSRSCORE ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRSET "health quality measure care setting" "Location(s) in which care being measured is rendered\r\n\r\nUsage Note: MSRSET is used rather than RoleCode because the setting applies to what is being measured, as opposed to participating directly in the health quality measure documantion itself)."
* #MSRSET ^property[0].code = #status
* #MSRSET ^property[=].valueCode = #active
* #MSRSET ^property[+].code = #internalId
* #MSRSET ^property[=].valueCode = #23019
* #MSRSET ^property[+].code = #subsumedBy
* #MSRSET ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRTOPIC "health quality measure topic type"
* #MSRTOPIC ^property[0].code = #status
* #MSRTOPIC ^property[=].valueCode = #active
* #MSRTOPIC ^property[+].code = #internalId
* #MSRTOPIC ^property[=].valueCode = #23031
* #MSRTOPIC ^property[+].code = #subsumedBy
* #MSRTOPIC ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRTP "measurement period" "The time period for which the eMeasure applies."
* #MSRTP ^property[0].code = #status
* #MSRTP ^property[=].valueCode = #active
* #MSRTP ^property[+].code = #internalId
* #MSRTP ^property[=].valueCode = #23432
* #MSRTP ^property[+].code = #subsumedBy
* #MSRTP ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #MSRTYPE "measure type" "Indicates whether the eMeasure is used to examine a process or an outcome over time (e.g., Structure, Process, Outcome)."
* #MSRTYPE ^property[0].code = #status
* #MSRTYPE ^property[=].valueCode = #active
* #MSRTYPE ^property[+].code = #internalId
* #MSRTYPE ^property[=].valueCode = #23030
* #MSRTYPE ^property[+].code = #subsumedBy
* #MSRTYPE ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #RAT "rationale" "Succinct statement of the need for the measure. Usually includes statements pertaining to Importance criterion: impact, gap in care and evidence."
* #RAT ^property[0].code = #status
* #RAT ^property[=].valueCode = #active
* #RAT ^property[+].code = #internalId
* #RAT ^property[=].valueCode = #23026
* #RAT ^property[+].code = #subsumedBy
* #RAT ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #REF "reference" "Identifies bibliographic citations or references to clinical practice guidelines, sources of evidence, or other relevant materials supporting the intent and rationale of the eMeasure."
* #REF ^property[0].code = #status
* #REF ^property[=].valueCode = #active
* #REF ^property[+].code = #internalId
* #REF ^property[=].valueCode = #23027
* #REF ^property[+].code = #subsumedBy
* #REF ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #SDE "supplemental data elements" "Comparison of results across strata can be used to show where disparities exist or where there is a need to expose differences in results. For example, Centers for Medicare & Medicaid Services (CMS) in the U.S. defines four required Supplemental Data Elements (payer, ethnicity, race, and gender), which are variables used to aggregate data into various subgroups. Additional supplemental data elements required for risk adjustment or other purposes of data aggregation can be included in the Supplemental Data Element section."
* #SDE ^property[0].code = #status
* #SDE ^property[=].valueCode = #active
* #SDE ^property[+].code = #internalId
* #SDE ^property[=].valueCode = #23437
* #SDE ^property[+].code = #subsumedBy
* #SDE ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #STRAT "stratification" "Describes the strata for which the measure is to be evaluated. There are three examples of reasons for stratification based on existing work. These include: (1) evaluate the measure based on different age groupings within the population described in the measure (e.g., evaluate the whole \\[age 14-25\\] and each sub-stratum \\[14-19\\] and \\[20-25\\]); (2) evaluate the eMeasure based on either a specific condition, a specific discharge location, or both; (3) evaluate the eMeasure based on different locations within a facility (e.g., evaluate the overall rate for all intensive care units and also some strata include additional findings \\[specific birth weights for neonatal intensive care units\\])."
* #STRAT ^property[0].code = #status
* #STRAT ^property[=].valueCode = #active
* #STRAT ^property[+].code = #internalId
* #STRAT ^property[=].valueCode = #23435
* #STRAT ^property[+].code = #subsumedBy
* #STRAT ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #TRANF "transmission format" "Can be a URL or hyperlinks that link to the transmission formats that are specified for a particular reporting program."
* #TRANF ^property[0].code = #status
* #TRANF ^property[=].valueCode = #active
* #TRANF ^property[+].code = #internalId
* #TRANF ^property[=].valueCode = #23436
* #TRANF ^property[+].code = #subsumedBy
* #TRANF ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #USE "notice of use" "Usage notes."
* #USE ^property[0].code = #status
* #USE ^property[=].valueCode = #active
* #USE ^property[+].code = #internalId
* #USE ^property[=].valueCode = #23025
* #USE ^property[+].code = #subsumedBy
* #USE ^property[=].valueCode = #_ObservationQualityMeasureAttribute
* #TIME_ABSOLUTE "absolute time sequence" "A sequence of values in the \"absolute\" time domain. This is the same time domain that all HL7 timestamps use. It is time as measured by the Gregorian calendar"
* #TIME_ABSOLUTE ^property[0].code = #status
* #TIME_ABSOLUTE ^property[=].valueCode = #active
* #TIME_ABSOLUTE ^property[+].code = #internalId
* #TIME_ABSOLUTE ^property[=].valueCode = #19326
* #TIME_ABSOLUTE ^property[+].code = #subsumedBy
* #TIME_ABSOLUTE ^property[=].valueCode = #_ObservationSequenceType
* #TIME_RELATIVE "relative time sequence" "A sequence of values in a \"relative\" time domain. The time is measured relative to the earliest effective time in the Observation Series containing this sequence."
* #TIME_RELATIVE ^property[0].code = #status
* #TIME_RELATIVE ^property[=].valueCode = #active
* #TIME_RELATIVE ^property[+].code = #internalId
* #TIME_RELATIVE ^property[=].valueCode = #19327
* #TIME_RELATIVE ^property[+].code = #subsumedBy
* #TIME_RELATIVE ^property[=].valueCode = #_ObservationSequenceType
* #_ECGObservationSequenceType "ECGObservationSequenceType"
* #_ECGObservationSequenceType ^property[0].code = #notSelectable
* #_ECGObservationSequenceType ^property[=].valueBoolean = true
* #_ECGObservationSequenceType ^property[+].code = #status
* #_ECGObservationSequenceType ^property[=].valueCode = #retired
* #_ECGObservationSequenceType ^property[+].code = #internalId
* #_ECGObservationSequenceType ^property[=].valueCode = #20917
* #_ECGObservationSequenceType ^property[+].code = #subsumedBy
* #_ECGObservationSequenceType ^property[=].valueCode = #_ObservationSequenceType
* #_ECGObservationSeriesType "ECGObservationSeriesType"
* #_ECGObservationSeriesType ^property[0].code = #notSelectable
* #_ECGObservationSeriesType ^property[=].valueBoolean = true
* #_ECGObservationSeriesType ^property[+].code = #status
* #_ECGObservationSeriesType ^property[=].valueCode = #active
* #_ECGObservationSeriesType ^property[+].code = #rim-ClassifiesClassCode
* #_ECGObservationSeriesType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ECGObservationSeriesType ^property[=].valueCoding = $v3-ActClass#OBSSER
* #_ECGObservationSeriesType ^property[+].code = #internalId
* #_ECGObservationSeriesType ^property[=].valueCode = #20918
* #_ECGObservationSeriesType ^property[+].code = #subsumedBy
* #_ECGObservationSeriesType ^property[=].valueCode = #_ObservationSeriesType
* #_ActSpecObsCode "ActSpecObsCode" "Identifies the type of observation that is made about a specimen that may affect its processing, analysis or further result interpretation"
* #_ActSpecObsCode ^property[0].code = #notSelectable
* #_ActSpecObsCode ^property[=].valueBoolean = true
* #_ActSpecObsCode ^property[+].code = #status
* #_ActSpecObsCode ^property[=].valueCode = #active
* #_ActSpecObsCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActSpecObsCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActSpecObsCode ^property[=].valueCoding = $v3-ActClass#SPCOBS
* #_ActSpecObsCode ^property[+].code = #internalId
* #_ActSpecObsCode ^property[=].valueCode = #20906
* #_ActSpecObsCode ^property[+].code = #subsumedBy
* #_ActSpecObsCode ^property[=].valueCode = #_ObservationType
* #_AnnotationType "AnnotationType"
* #_AnnotationType ^property[0].code = #notSelectable
* #_AnnotationType ^property[=].valueBoolean = true
* #_AnnotationType ^property[+].code = #status
* #_AnnotationType ^property[=].valueCode = #active
* #_AnnotationType ^property[+].code = #internalId
* #_AnnotationType ^property[=].valueCode = #20909
* #_AnnotationType ^property[+].code = #subsumedBy
* #_AnnotationType ^property[=].valueCode = #_ObservationType
* #_GeneticObservationType "GeneticObservationType" "**Description:** None provided"
* #_GeneticObservationType ^property[0].code = #notSelectable
* #_GeneticObservationType ^property[=].valueBoolean = true
* #_GeneticObservationType ^property[+].code = #status
* #_GeneticObservationType ^property[=].valueCode = #active
* #_GeneticObservationType ^property[+].code = #rim-ClassifiesClassCode
* #_GeneticObservationType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_GeneticObservationType ^property[=].valueCoding = $v3-ActClass#OBS
* #_GeneticObservationType ^property[+].code = #internalId
* #_GeneticObservationType ^property[=].valueCode = #22650
* #_GeneticObservationType ^property[+].code = #subsumedBy
* #_GeneticObservationType ^property[=].valueCode = #_ObservationType
* #_ImmunizationObservationType "ImmunizationObservationType" "**Description:** Observation codes which describe characteristics of the immunization material."
* #_ImmunizationObservationType ^property[0].code = #status
* #_ImmunizationObservationType ^property[=].valueCode = #active
* #_ImmunizationObservationType ^property[+].code = #internalId
* #_ImmunizationObservationType ^property[=].valueCode = #23241
* #_ImmunizationObservationType ^property[+].code = #subsumedBy
* #_ImmunizationObservationType ^property[=].valueCode = #_ObservationType
* #_IndividualCaseSafetyReportType "Individual Case Safety Report Type" "A code that is used to indicate the type of case safety report received from sender. The current code example reference is from the International Conference on Harmonisation (ICH) Expert Workgroup guideline on Clinical Safety Data Management: Data Elements for Transmission of Individual Case Safety Reports. The unknown/unavailable option allows the transmission of information from a secondary sender where the initial sender did not specify the type of report.\r\n\r\nExample concepts include: Spontaneous, Report from study, Other."
* #_IndividualCaseSafetyReportType ^property[0].code = #notSelectable
* #_IndividualCaseSafetyReportType ^property[=].valueBoolean = true
* #_IndividualCaseSafetyReportType ^property[+].code = #status
* #_IndividualCaseSafetyReportType ^property[=].valueCode = #active
* #_IndividualCaseSafetyReportType ^property[+].code = #internalId
* #_IndividualCaseSafetyReportType ^property[=].valueCode = #21394
* #_IndividualCaseSafetyReportType ^property[+].code = #subsumedBy
* #_IndividualCaseSafetyReportType ^property[=].valueCode = #_ObservationType
* #_LOINCObservationActContextAgeType "LOINCObservationActContextAgeType" "**Definition:**The set of LOINC codes for the act of determining the period of time that has elapsed since an entity was born or created."
* #_LOINCObservationActContextAgeType ^property[0].code = #notSelectable
* #_LOINCObservationActContextAgeType ^property[=].valueBoolean = true
* #_LOINCObservationActContextAgeType ^property[+].code = #status
* #_LOINCObservationActContextAgeType ^property[=].valueCode = #active
* #_LOINCObservationActContextAgeType ^property[+].code = #rim-ClassifiesClassCode
* #_LOINCObservationActContextAgeType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_LOINCObservationActContextAgeType ^property[=].valueCoding = $v3-ActClass#OBS
* #_LOINCObservationActContextAgeType ^property[+].code = #internalId
* #_LOINCObservationActContextAgeType ^property[=].valueCode = #22389
* #_LOINCObservationActContextAgeType ^property[+].code = #subsumedBy
* #_LOINCObservationActContextAgeType ^property[=].valueCode = #_ObservationType
* #_MedicationObservationType "MedicationObservationType"
* #_MedicationObservationType ^property[0].code = #notSelectable
* #_MedicationObservationType ^property[=].valueBoolean = true
* #_MedicationObservationType ^property[+].code = #status
* #_MedicationObservationType ^property[=].valueCode = #active
* #_MedicationObservationType ^property[+].code = #rim-ClassifiesClassCode
* #_MedicationObservationType ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_MedicationObservationType ^property[=].valueCoding = $v3-ActClass#OBS
* #_MedicationObservationType ^property[+].code = #internalId
* #_MedicationObservationType ^property[=].valueCode = #22390
* #_MedicationObservationType ^property[+].code = #subsumedBy
* #_MedicationObservationType ^property[=].valueCode = #_ObservationType
* #_ObservationIssueTriggerCodedObservationType "ObservationIssueTriggerCodedObservationType" "Distinguishes the kinds of coded observations that could be the trigger for clinical issue detection. These are observations that are not measurable, but instead can be defined with codes. Coded observation types include: Allergy, Intolerance, Medical Condition, Pregnancy status, etc."
* #_ObservationIssueTriggerCodedObservationType ^property[0].code = #notSelectable
* #_ObservationIssueTriggerCodedObservationType ^property[=].valueBoolean = true
* #_ObservationIssueTriggerCodedObservationType ^property[+].code = #status
* #_ObservationIssueTriggerCodedObservationType ^property[=].valueCode = #active
* #_ObservationIssueTriggerCodedObservationType ^property[+].code = #internalId
* #_ObservationIssueTriggerCodedObservationType ^property[=].valueCode = #21524
* #_ObservationIssueTriggerCodedObservationType ^property[+].code = #subsumedBy
* #_ObservationIssueTriggerCodedObservationType ^property[=].valueCode = #_ObservationType
* #_ObservationQualityMeasureAttribute "ObservationQualityMeasureAttribute" "Codes used to define various metadata aspects of a health quality measure."
* #_ObservationQualityMeasureAttribute ^property[0].code = #status
* #_ObservationQualityMeasureAttribute ^property[=].valueCode = #active
* #_ObservationQualityMeasureAttribute ^property[+].code = #internalId
* #_ObservationQualityMeasureAttribute ^property[=].valueCode = #23018
* #_ObservationQualityMeasureAttribute ^property[+].code = #subsumedBy
* #_ObservationQualityMeasureAttribute ^property[=].valueCode = #_ObservationType
* #_ObservationSequenceType "ObservationSequenceType"
* #_ObservationSequenceType ^property[0].code = #notSelectable
* #_ObservationSequenceType ^property[=].valueBoolean = true
* #_ObservationSequenceType ^property[+].code = #status
* #_ObservationSequenceType ^property[=].valueCode = #active
* #_ObservationSequenceType ^property[+].code = #internalId
* #_ObservationSequenceType ^property[=].valueCode = #20928
* #_ObservationSequenceType ^property[+].code = #subsumedBy
* #_ObservationSequenceType ^property[=].valueCode = #_ObservationType
* #_ObservationSeriesType "ObservationSeriesType"
* #_ObservationSeriesType ^property[0].code = #notSelectable
* #_ObservationSeriesType ^property[=].valueBoolean = true
* #_ObservationSeriesType ^property[+].code = #status
* #_ObservationSeriesType ^property[=].valueCode = #active
* #_ObservationSeriesType ^property[+].code = #internalId
* #_ObservationSeriesType ^property[=].valueCode = #20929
* #_ObservationSeriesType ^property[+].code = #subsumedBy
* #_ObservationSeriesType ^property[=].valueCode = #_ObservationType
* #_PatientImmunizationRelatedObservationType "PatientImmunizationRelatedObservationType" "**Description:** Reporting codes that are related to an immunization event."
* #_PatientImmunizationRelatedObservationType ^property[0].code = #status
* #_PatientImmunizationRelatedObservationType ^property[=].valueCode = #active
* #_PatientImmunizationRelatedObservationType ^property[+].code = #internalId
* #_PatientImmunizationRelatedObservationType ^property[=].valueCode = #23244
* #_PatientImmunizationRelatedObservationType ^property[+].code = #subsumedBy
* #_PatientImmunizationRelatedObservationType ^property[=].valueCode = #_ObservationType
* #_PopulationInclusionObservationType "PopulationInclusionObservationType" "Observation types for specifying criteria used to assert that a subject is included in a particular population."
* #_PopulationInclusionObservationType ^property[0].code = #notSelectable
* #_PopulationInclusionObservationType ^property[=].valueBoolean = true
* #_PopulationInclusionObservationType ^property[+].code = #status
* #_PopulationInclusionObservationType ^property[=].valueCode = #active
* #_PopulationInclusionObservationType ^property[+].code = #internalId
* #_PopulationInclusionObservationType ^property[=].valueCode = #23543
* #_PopulationInclusionObservationType ^property[+].code = #subsumedBy
* #_PopulationInclusionObservationType ^property[=].valueCode = #_ObservationType
* #_PreferenceObservationType "_PreferenceObservationType" "Types of observations that can be made about Preferences."
* #_PreferenceObservationType ^property[0].code = #notSelectable
* #_PreferenceObservationType ^property[=].valueBoolean = true
* #_PreferenceObservationType ^property[+].code = #status
* #_PreferenceObservationType ^property[=].valueCode = #active
* #_PreferenceObservationType ^property[+].code = #internalId
* #_PreferenceObservationType ^property[=].valueCode = #23622
* #_PreferenceObservationType ^property[+].code = #subsumedBy
* #_PreferenceObservationType ^property[=].valueCode = #_ObservationType
* #ADVERSE_REACTION "Adverse Reaction" "Indicates that the observation is of an unexpected negative occurrence in the subject suspected to result from the subject's exposure to one or more agents. Observation values would be the symptom resulting from the reaction."
* #ADVERSE_REACTION ^property[0].code = #status
* #ADVERSE_REACTION ^property[=].valueCode = #active
* #ADVERSE_REACTION ^property[+].code = #internalId
* #ADVERSE_REACTION ^property[=].valueCode = #21510
* #ADVERSE_REACTION ^property[+].code = #subsumedBy
* #ADVERSE_REACTION ^property[=].valueCode = #_ObservationType
* #ASSERTION "Assertion" "**Description:**Refines classCode OBS to indicate an observation in which observation.value contains a finding or other nominalized statement, where the encoded information in Observation.value is not altered by Observation.code. For instance, observation.code=\"ASSERTION\" and observation.value=\"fracture of femur present\" is an assertion of a clinical finding of femur fracture."
* #ASSERTION ^property[0].code = #status
* #ASSERTION ^property[=].valueCode = #active
* #ASSERTION ^property[+].code = #internalId
* #ASSERTION ^property[=].valueCode = #22040
* #ASSERTION ^property[+].code = #subsumedBy
* #ASSERTION ^property[=].valueCode = #_ObservationType
* #CASESER "case seriousness criteria" "**Definition:**An observation that provides a characterization of the level of harm to an investigation subject as a result of a reaction or event."
* #CASESER ^property[0].code = #status
* #CASESER ^property[=].valueCode = #active
* #CASESER ^property[+].code = #internalId
* #CASESER ^property[=].valueCode = #22833
* #CASESER ^property[+].code = #subsumedBy
* #CASESER ^property[=].valueCode = #_ObservationType
* #CDIO "case disease imported observation" "An observation that states whether the disease was likely acquired outside the jurisdiction of observation, and if so, the nature of the inter-jurisdictional relationship.\r\n\r\n**OpenIssue:** This code could be moved to LOINC if it can be done before there are significant implemenations using it."
* #CDIO ^property[0].code = #status
* #CDIO ^property[=].valueCode = #active
* #CDIO ^property[+].code = #internalId
* #CDIO ^property[=].valueCode = #23467
* #CDIO ^property[+].code = #subsumedBy
* #CDIO ^property[=].valueCode = #_ObservationType
* #CRIT "criticality" "A clinical judgment as to the worst case result of a future exposure (including substance administration). When the worst case result is assessed to have a life-threatening or organ system threatening potential, it is considered to be of high criticality."
* #CRIT ^property[0].code = #status
* #CRIT ^property[=].valueCode = #active
* #CRIT ^property[+].code = #internalId
* #CRIT ^property[=].valueCode = #23572
* #CRIT ^property[+].code = #subsumedBy
* #CRIT ^property[=].valueCode = #_ObservationType
* #CTMO "case transmission mode observation" "An observation that states the mechanism by which disease was acquired by the living subject involved in the public health case.\r\n\r\n**OpenIssue:** This code could be moved to LOINC if it can be done before there are significant implemenations using it."
* #CTMO ^property[0].code = #status
* #CTMO ^property[=].valueCode = #active
* #CTMO ^property[+].code = #internalId
* #CTMO ^property[=].valueCode = #23466
* #CTMO ^property[+].code = #subsumedBy
* #CTMO ^property[=].valueCode = #_ObservationType
* #DX "ObservationDiagnosisTypes" "Includes all codes defining types of indications such as diagnosis, symptom and other indications such as contrast agents for lab tests."
* #DX ^property[0].code = #status
* #DX ^property[=].valueCode = #active
* #DX ^property[+].code = #synonymCode
* #DX ^property[=].valueCode = #_ObservationDiagnosisTypes
* #DX ^property[+].code = #internalId
* #DX ^property[=].valueCode = #20927
* #DX ^property[+].code = #subsumedBy
* #DX ^property[=].valueCode = #_ObservationType
* #_ObservationDiagnosisTypes "ObservationDiagnosisTypes" "Includes all codes defining types of indications such as diagnosis, symptom and other indications such as contrast agents for lab tests."
* #_ObservationDiagnosisTypes ^property[0].code = #status
* #_ObservationDiagnosisTypes ^property[=].valueCode = #retired
* #_ObservationDiagnosisTypes ^property[+].code = #synonymCode
* #_ObservationDiagnosisTypes ^property[=].valueCode = #DX
* #_ObservationDiagnosisTypes ^property[+].code = #internalId
* #_ObservationDiagnosisTypes ^property[=].valueCode = #20927
* #_ObservationDiagnosisTypes ^property[+].code = #subsumedBy
* #_ObservationDiagnosisTypes ^property[=].valueCode = #_ObservationType
* #GISTIER "GIS tier" "**Description:** Accuracy determined as per the GIS tier code system."
* #GISTIER ^property[0].code = #status
* #GISTIER ^property[=].valueCode = #active
* #GISTIER ^property[+].code = #internalId
* #GISTIER ^property[=].valueCode = #22710
* #GISTIER ^property[+].code = #subsumedBy
* #GISTIER ^property[=].valueCode = #_ObservationType
* #HHOBS "household situation observation" "Indicates that the observation is of a person’s living situation in a household including the household composition and circumstances."
* #HHOBS ^property[0].code = #status
* #HHOBS ^property[=].valueCode = #active
* #HHOBS ^property[+].code = #internalId
* #HHOBS ^property[=].valueCode = #23073
* #HHOBS ^property[+].code = #subsumedBy
* #HHOBS ^property[=].valueCode = #_ObservationType
* #ISSUE "detected issue" "There is a clinical issue for the therapy that makes continuation of the therapy inappropriate.\r\n\r\n*Open Issue:* The definition of this code does not correctly represent the concept space of its specializations (children)"
* #ISSUE ^property[0].code = #status
* #ISSUE ^property[=].valueCode = #active
* #ISSUE ^property[+].code = #internalId
* #ISSUE ^property[=].valueCode = #21697
* #ISSUE ^property[+].code = #subsumedBy
* #ISSUE ^property[=].valueCode = #_ObservationType
* #KSUBJ "knowledge subject" "Categorization of types of observation that capture the main clinical knowledge subject which may be a medication, a laboratory test, a disease."
* #KSUBJ ^property[0].code = #status
* #KSUBJ ^property[=].valueCode = #active
* #KSUBJ ^property[+].code = #internalId
* #KSUBJ ^property[=].valueCode = #23090
* #KSUBJ ^property[+].code = #subsumedBy
* #KSUBJ ^property[=].valueCode = #_ObservationType
* #KSUBT "knowledge subtopic" "Categorization of types of observation that capture a knowledge subtopic which might be treatment, etiology, or prognosis."
* #KSUBT ^property[0].code = #status
* #KSUBT ^property[=].valueCode = #active
* #KSUBT ^property[+].code = #internalId
* #KSUBT ^property[=].valueCode = #23091
* #KSUBT ^property[+].code = #subsumedBy
* #KSUBT ^property[=].valueCode = #_ObservationType
* #OINT "intolerance" "Hypersensitivity resulting in an adverse reaction upon exposure to an agent."
* #OINT ^property[0].code = #status
* #OINT ^property[=].valueCode = #active
* #OINT ^property[+].code = #internalId
* #OINT ^property[=].valueCode = #21498
* #OINT ^property[+].code = #subsumedBy
* #OINT ^property[=].valueCode = #_ObservationType
* #SEV "Severity Observation" "A subjective evaluation of the seriousness or intensity associated with another observation."
* #SEV ^property[0].code = #status
* #SEV ^property[=].valueCode = #active
* #SEV ^property[+].code = #internalId
* #SEV ^property[=].valueCode = #16642
* #SEV ^property[+].code = #subsumedBy
* #SEV ^property[=].valueCode = #_ObservationType
* #_ActPrivilegeCategorizationType "ActPrivilegeCategorizationType" "This domain includes observations used to characterize a privilege, under which this additional information is classified.\r\n\r\n*Examples:*A privilege to prescribe drugs has a RESTRICTION that excludes prescribing narcotics; a surgical procedure privilege has a PRE-CONDITION that it requires prior Board approval."
* #_ActPrivilegeCategorizationType ^property[0].code = #notSelectable
* #_ActPrivilegeCategorizationType ^property[=].valueBoolean = true
* #_ActPrivilegeCategorizationType ^property[+].code = #status
* #_ActPrivilegeCategorizationType ^property[=].valueCode = #retired
* #_ActPrivilegeCategorizationType ^property[+].code = #internalId
* #_ActPrivilegeCategorizationType ^property[=].valueCode = #21585
* #_ActPrivilegeCategorizationType ^property[+].code = #subsumedBy
* #_ActPrivilegeCategorizationType ^property[=].valueCode = #_ObservationType
* #_AdverseSubstanceAdministrationEventActionTakenType "AdverseSubstanceAdministrationEventActionTakenType" "**Definition:** Indicates the class of actions taken with regard to a substance administration related adverse event. This characterization offers a judgment of the practitioner's response to the patient's problem.\r\n\r\n**Examples:** Example values include dose withdrawn, dose reduced, dose not changed.\r\n\r\n**NOTE:** The concept domain is currently supported by a value set created by the International Conference on Harmonization"
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[0].code = #notSelectable
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[=].valueBoolean = true
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[+].code = #status
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[=].valueCode = #retired
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[+].code = #internalId
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[=].valueCode = #22266
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[+].code = #subsumedBy
* #_AdverseSubstanceAdministrationEventActionTakenType ^property[=].valueCode = #_ObservationType
* #_CommonClinicalObservationType "CommonClinicalObservationType" "Used in a patient care message to report and query simple clinical (non-lab) observations."
* #_CommonClinicalObservationType ^property[0].code = #notSelectable
* #_CommonClinicalObservationType ^property[=].valueBoolean = true
* #_CommonClinicalObservationType ^property[+].code = #status
* #_CommonClinicalObservationType ^property[=].valueCode = #retired
* #_CommonClinicalObservationType ^property[+].code = #internalId
* #_CommonClinicalObservationType ^property[=].valueCode = #21527
* #_CommonClinicalObservationType ^property[+].code = #subsumedBy
* #_CommonClinicalObservationType ^property[=].valueCode = #_ObservationType
* #_FDALabelData "FDALabelData" "FDA label data"
* #_FDALabelData ^property[0].code = #notSelectable
* #_FDALabelData ^property[=].valueBoolean = true
* #_FDALabelData ^property[+].code = #status
* #_FDALabelData ^property[=].valueCode = #retired
* #_FDALabelData ^property[+].code = #internalId
* #_FDALabelData ^property[=].valueCode = #20920
* #_FDALabelData ^property[+].code = #subsumedBy
* #_FDALabelData ^property[=].valueCode = #_ObservationType
* #_ObservationAllergyTestCode "observation allergy test" "**Description:**Dianostic procedures ordered or performed to evaluate whether a sensitivity to a substance is present. This test may be associated with specimen collection and/or substance administration challenge actiivities.\r\n\r\n**Example:**Skin tests and eosinophilia evaluations."
* #_ObservationAllergyTestCode ^property[0].code = #notSelectable
* #_ObservationAllergyTestCode ^property[=].valueBoolean = true
* #_ObservationAllergyTestCode ^property[+].code = #status
* #_ObservationAllergyTestCode ^property[=].valueCode = #retired
* #_ObservationAllergyTestCode ^property[+].code = #internalId
* #_ObservationAllergyTestCode ^property[=].valueCode = #21942
* #_ObservationAllergyTestCode ^property[+].code = #subsumedBy
* #_ObservationAllergyTestCode ^property[=].valueCode = #_ObservationType
* #_ObservationAllergyTestType "ObservationAllergyTestType" "Indicates the type of allergy test performed or to be performed. E.g. the specific antibody or skin test performed"
* #_ObservationAllergyTestType ^property[0].code = #notSelectable
* #_ObservationAllergyTestType ^property[=].valueBoolean = true
* #_ObservationAllergyTestType ^property[+].code = #status
* #_ObservationAllergyTestType ^property[=].valueCode = #retired
* #_ObservationAllergyTestType ^property[+].code = #internalId
* #_ObservationAllergyTestType ^property[=].valueCode = #21494
* #_ObservationAllergyTestType ^property[+].code = #subsumedBy
* #_ObservationAllergyTestType ^property[=].valueCode = #_ObservationType
* #_ObservationCausalityAssessmentType "observation causality assessment" "**Description:**A kind of observation that allows a Secondary Observation (source act) to assert (at various levels of probability) that the target act of the association (which may be of any type of act) is implicated in the etiology of another observation that is named as the subject of the Secondary Observation\r\n\r\n**Example:**Causality assertions where an accident is the cause of a symptom; predisposition assertions where the genetic state plus environmental factors are implicated in the development of a disease; reaction assertions where a substance exposure is associated with a finding of wheezing."
* #_ObservationCausalityAssessmentType ^property[0].code = #notSelectable
* #_ObservationCausalityAssessmentType ^property[=].valueBoolean = true
* #_ObservationCausalityAssessmentType ^property[+].code = #status
* #_ObservationCausalityAssessmentType ^property[=].valueCode = #retired
* #_ObservationCausalityAssessmentType ^property[+].code = #internalId
* #_ObservationCausalityAssessmentType ^property[=].valueCode = #21941
* #_ObservationCausalityAssessmentType ^property[+].code = #subsumedBy
* #_ObservationCausalityAssessmentType ^property[=].valueCode = #_ObservationType
* #_ObservationDosageDefinitionPreconditionType "observation dosage definition precondition type" "**Definition:**\r\n\r\nThe set of observation type concepts that can be used to express pre-conditions to a particular dosage definition.\r\n\r\nRationale: Used to constrain the set of observations to those related to the applicability of a dosage, such as height, weight, age, pregnancy, liver function, kidney function, etc. For example, in drug master-file type records indicating when a specified dose is applicable."
* #_ObservationDosageDefinitionPreconditionType ^property[0].code = #notSelectable
* #_ObservationDosageDefinitionPreconditionType ^property[=].valueBoolean = true
* #_ObservationDosageDefinitionPreconditionType ^property[+].code = #status
* #_ObservationDosageDefinitionPreconditionType ^property[=].valueCode = #retired
* #_ObservationDosageDefinitionPreconditionType ^property[+].code = #internalId
* #_ObservationDosageDefinitionPreconditionType ^property[=].valueCode = #21714
* #_ObservationDosageDefinitionPreconditionType ^property[+].code = #subsumedBy
* #_ObservationDosageDefinitionPreconditionType ^property[=].valueCode = #_ObservationType
* #_ObservationGenomicFamilyHistoryType "ObservationGenomicFamilyHistoryType"
* #_ObservationGenomicFamilyHistoryType ^property[0].code = #notSelectable
* #_ObservationGenomicFamilyHistoryType ^property[=].valueBoolean = true
* #_ObservationGenomicFamilyHistoryType ^property[+].code = #status
* #_ObservationGenomicFamilyHistoryType ^property[=].valueCode = #retired
* #_ObservationGenomicFamilyHistoryType ^property[+].code = #internalId
* #_ObservationGenomicFamilyHistoryType ^property[=].valueCode = #22041
* #_ObservationGenomicFamilyHistoryType ^property[+].code = #subsumedBy
* #_ObservationGenomicFamilyHistoryType ^property[=].valueCode = #_ObservationType
* #_ObservationIndicationType "ObservationIndicationType" "Includes all codes defining types of indications such as diagnosis, symptom and other indications such as contrast agents for lab tests"
* #_ObservationIndicationType ^property[0].code = #notSelectable
* #_ObservationIndicationType ^property[=].valueBoolean = true
* #_ObservationIndicationType ^property[+].code = #status
* #_ObservationIndicationType ^property[=].valueCode = #retired
* #_ObservationIndicationType ^property[+].code = #internalId
* #_ObservationIndicationType ^property[=].valueCode = #21541
* #_ObservationIndicationType ^property[+].code = #subsumedBy
* #_ObservationIndicationType ^property[=].valueCode = #_ObservationType
* #_ObservationIssueTriggerMeasuredObservationType "ObservationIssueTriggerMeasuredObservationType" "Distinguishes between the kinds of measurable observations that could be the trigger for clinical issue detection. Measurable observation types include: Lab Results, Height, Weight."
* #_ObservationIssueTriggerMeasuredObservationType ^property[0].code = #notSelectable
* #_ObservationIssueTriggerMeasuredObservationType ^property[=].valueBoolean = true
* #_ObservationIssueTriggerMeasuredObservationType ^property[+].code = #status
* #_ObservationIssueTriggerMeasuredObservationType ^property[=].valueCode = #retired
* #_ObservationIssueTriggerMeasuredObservationType ^property[+].code = #internalId
* #_ObservationIssueTriggerMeasuredObservationType ^property[=].valueCode = #21525
* #_ObservationIssueTriggerMeasuredObservationType ^property[+].code = #subsumedBy
* #_ObservationIssueTriggerMeasuredObservationType ^property[=].valueCode = #_ObservationType
* #_ObservationQueryMatchType "ObservationQueryMatchType" "**Definition:** An observation related to a query response.\r\n\r\n**Example:**The degree of match or match weight returned by a matching algorithm in a response to a query."
* #_ObservationQueryMatchType ^property[0].code = #notSelectable
* #_ObservationQueryMatchType ^property[=].valueBoolean = true
* #_ObservationQueryMatchType ^property[+].code = #status
* #_ObservationQueryMatchType ^property[=].valueCode = #retired
* #_ObservationQueryMatchType ^property[+].code = #internalId
* #_ObservationQueryMatchType ^property[=].valueCode = #22264
* #_ObservationQueryMatchType ^property[+].code = #subsumedBy
* #_ObservationQueryMatchType ^property[=].valueCode = #_ObservationType
* #_ObservationVisionPrescriptionType "ObservationVisionPrescriptionType" "**Definition:** Identifies the type of Vision Prescription Observation that is being described."
* #_ObservationVisionPrescriptionType ^property[0].code = #notSelectable
* #_ObservationVisionPrescriptionType ^property[=].valueBoolean = true
* #_ObservationVisionPrescriptionType ^property[+].code = #status
* #_ObservationVisionPrescriptionType ^property[=].valueCode = #retired
* #_ObservationVisionPrescriptionType ^property[+].code = #internalId
* #_ObservationVisionPrescriptionType ^property[=].valueCode = #22243
* #_ObservationVisionPrescriptionType ^property[+].code = #subsumedBy
* #_ObservationVisionPrescriptionType ^property[=].valueCode = #_ObservationType
* #_PatientCharacteristicObservationType "PatientCharacteristicObservationType" "Indicates the type of characteristics a patient should have for a given therapy to be appropriate. E.g. Weight, Age, certain lab values, etc."
* #_PatientCharacteristicObservationType ^property[0].code = #notSelectable
* #_PatientCharacteristicObservationType ^property[=].valueBoolean = true
* #_PatientCharacteristicObservationType ^property[+].code = #status
* #_PatientCharacteristicObservationType ^property[=].valueCode = #retired
* #_PatientCharacteristicObservationType ^property[+].code = #internalId
* #_PatientCharacteristicObservationType ^property[=].valueCode = #21526
* #_PatientCharacteristicObservationType ^property[+].code = #subsumedBy
* #_PatientCharacteristicObservationType ^property[=].valueCode = #_ObservationType
* #_SimpleMeasurableClinicalObservationType "SimpleMeasurableClinicalObservationType" "Types of measurement observations typically performed in a clinical (non-lab) setting. E.g. Height, Weight, Blood-pressure"
* #_SimpleMeasurableClinicalObservationType ^property[0].code = #notSelectable
* #_SimpleMeasurableClinicalObservationType ^property[=].valueBoolean = true
* #_SimpleMeasurableClinicalObservationType ^property[+].code = #status
* #_SimpleMeasurableClinicalObservationType ^property[=].valueCode = #retired
* #_SimpleMeasurableClinicalObservationType ^property[+].code = #internalId
* #_SimpleMeasurableClinicalObservationType ^property[=].valueCode = #21523
* #_SimpleMeasurableClinicalObservationType ^property[+].code = #subsumedBy
* #_SimpleMeasurableClinicalObservationType ^property[=].valueCode = #_ObservationType
* #CLSSRM "classroom" "**Description:** The class room associated with the patient during the immunization event."
* #CLSSRM ^property[0].code = #status
* #CLSSRM ^property[=].valueCode = #active
* #CLSSRM ^property[+].code = #internalId
* #CLSSRM ^property[=].valueCode = #23246
* #CLSSRM ^property[+].code = #subsumedBy
* #CLSSRM ^property[=].valueCode = #_PatientImmunizationRelatedObservationType
* #GRADE "grade" "**Description:** The school grade or level the patient was in when immunized."
* #GRADE ^property[0].code = #status
* #GRADE ^property[=].valueCode = #active
* #GRADE ^property[+].code = #internalId
* #GRADE ^property[=].valueCode = #23245
* #GRADE ^property[+].code = #subsumedBy
* #GRADE ^property[=].valueCode = #_PatientImmunizationRelatedObservationType
* #SCHL "school" "**Description:** The school the patient attended when immunized."
* #SCHL ^property[0].code = #status
* #SCHL ^property[=].valueCode = #active
* #SCHL ^property[+].code = #internalId
* #SCHL ^property[=].valueCode = #23247
* #SCHL ^property[+].code = #subsumedBy
* #SCHL ^property[=].valueCode = #_PatientImmunizationRelatedObservationType
* #SCHLDIV "school division" "**Description:** The school division or district associated with the patient during the immunization event."
* #SCHLDIV ^property[0].code = #status
* #SCHLDIV ^property[=].valueCode = #active
* #SCHLDIV ^property[+].code = #internalId
* #SCHLDIV ^property[=].valueCode = #23248
* #SCHLDIV ^property[+].code = #subsumedBy
* #SCHLDIV ^property[=].valueCode = #_PatientImmunizationRelatedObservationType
* #TEACHER "teacher" "**Description:** The patient's teacher when immunized."
* #TEACHER ^property[0].code = #status
* #TEACHER ^property[=].valueCode = #active
* #TEACHER ^property[+].code = #internalId
* #TEACHER ^property[=].valueCode = #23249
* #TEACHER ^property[+].code = #subsumedBy
* #TEACHER ^property[=].valueCode = #_PatientImmunizationRelatedObservationType
* #DENEX "denominator exclusions" "Criteria which specify subjects who should be removed from the eMeasure population and denominator before determining if numerator criteria are met. Denominator exclusions are used in proportion and ratio measures to help narrow the denominator."
* #DENEX ^property[0].code = #status
* #DENEX ^property[=].valueCode = #active
* #DENEX ^property[+].code = #internalId
* #DENEX ^property[=].valueCode = #23544
* #DENEX ^property[+].code = #subsumedBy
* #DENEX ^property[=].valueCode = #_PopulationInclusionObservationType
* #DENEXCEP "denominator exceptions" "Criteria which specify the removal of a subject, procedure or unit of measurement from the denominator, only if the numerator criteria are not met. Denominator exceptions allow for adjustment of the calculated score for those providers with higher risk populations. Denominator exceptions are used only in proportion eMeasures. They are not appropriate for ratio or continuous variable eMeasures. Denominator exceptions allow for the exercise of clinical judgment and should be specifically defined where capturing the information in a structured manner fits the clinical workflow. Generic denominator exception reasons used in proportion eMeasures fall into three general categories:\r\n\r\n *  Medical reasons\r\n *  Patient (or subject) reasons\r\n *  System reasons"
* #DENEXCEP ^property[0].code = #status
* #DENEXCEP ^property[=].valueCode = #active
* #DENEXCEP ^property[+].code = #internalId
* #DENEXCEP ^property[=].valueCode = #23545
* #DENEXCEP ^property[+].code = #subsumedBy
* #DENEXCEP ^property[=].valueCode = #_PopulationInclusionObservationType
* #DENOM "denominator" "Criteria for specifying the entities to be evaluated by a specific quality measure, based on a shared common set of characteristics (within a specific measurement set to which a given measure belongs). The denominator can be the same as the initial population, or it may be a subset of the initial population to further constrain it for the purpose of the eMeasure. Different measures within an eMeasure set may have different denominators. Continuous Variable eMeasures do not have a denominator, but instead define a measure population."
* #DENOM ^property[0].code = #status
* #DENOM ^property[=].valueCode = #active
* #DENOM ^property[+].code = #internalId
* #DENOM ^property[=].valueCode = #23546
* #DENOM ^property[+].code = #subsumedBy
* #DENOM ^property[=].valueCode = #_PopulationInclusionObservationType
* #IPOP "initial population" "Criteria for specifying the entities to be evaluated by a specific quality measure, based on a shared common set of characteristics (within a specific measurement set to which a given measure belongs)."
* #IPOP ^property[0].code = #status
* #IPOP ^property[=].valueCode = #active
* #IPOP ^property[+].code = #internalId
* #IPOP ^property[=].valueCode = #23547
* #IPOP ^property[+].code = #subsumedBy
* #IPOP ^property[=].valueCode = #_PopulationInclusionObservationType
* #MSROBS "measure observation" "Defines the observation to be performed for each patient or event in the measure population. Measure observations for each case in the population are aggregated to determine the overall measure score for the population.\r\n\r\n**Examples:** \r\n\r\n *  the median time from arrival in the Emergency Room to departure\r\n *  the median time from decision to admit to a hospital to the actual admission for Emergency Room patients"
* #MSROBS ^property[0].code = #status
* #MSROBS ^property[=].valueCode = #active
* #MSROBS ^property[+].code = #internalId
* #MSROBS ^property[=].valueCode = #23895
* #MSROBS ^property[+].code = #subsumedBy
* #MSROBS ^property[=].valueCode = #_PopulationInclusionObservationType
* #MSRPOPL "measure population" "Criteria for specifying the measure population as a narrative description (e.g., all patients seen in the Emergency Department during the measurement period). This is used only in continuous variable eMeasures."
* #MSRPOPL ^property[0].code = #status
* #MSRPOPL ^property[=].valueCode = #active
* #MSRPOPL ^property[+].code = #internalId
* #MSRPOPL ^property[=].valueCode = #23549
* #MSRPOPL ^property[+].code = #subsumedBy
* #MSRPOPL ^property[=].valueCode = #_PopulationInclusionObservationType
* #MSRPOPLEX "measure population exclusions" "Criteria for specifying subjects who should be removed from the eMeasure's Initial Population and Measure Population. Measure Population Exclusions are used in Continuous Variable measures to help narrow the Measure Population before determining the value(s) of the continuous variable(s)."
* #MSRPOPLEX ^property[0].code = #status
* #MSRPOPLEX ^property[=].valueCode = #active
* #MSRPOPLEX ^property[+].code = #internalId
* #MSRPOPLEX ^property[=].valueCode = #23550
* #MSRPOPLEX ^property[+].code = #subsumedBy
* #MSRPOPLEX ^property[=].valueCode = #_PopulationInclusionObservationType
* #NUMER "numerator" "Criteria for specifying the processes or outcomes expected for each patient, procedure, or other unit of measurement defined in the denominator for proportion measures, or related to (but not directly derived from) the denominator for ratio measures (e.g., a numerator listing the number of central line blood stream infections and a denominator indicating the days per thousand of central line usage in a specific time period)."
* #NUMER ^property[0].code = #status
* #NUMER ^property[=].valueCode = #active
* #NUMER ^property[+].code = #internalId
* #NUMER ^property[=].valueCode = #23551
* #NUMER ^property[+].code = #subsumedBy
* #NUMER ^property[=].valueCode = #_PopulationInclusionObservationType
* #NUMEX "numerator exclusions" "Criteria for specifying instances that should not be included in the numerator data. (e.g., if the number of central line blood stream infections per 1000 catheter days were to exclude infections with a specific bacterium, that bacterium would be listed as a numerator exclusion). Numerator Exclusions are used only in ratio eMeasures."
* #NUMEX ^property[0].code = #status
* #NUMEX ^property[=].valueCode = #active
* #NUMEX ^property[+].code = #internalId
* #NUMEX ^property[=].valueCode = #23552
* #NUMEX ^property[+].code = #subsumedBy
* #NUMEX ^property[=].valueCode = #_PopulationInclusionObservationType
* #PREFSTRENGTH "preference strength" "An observation about how important a preference is to the target of the preference."
* #PREFSTRENGTH ^property[0].code = #status
* #PREFSTRENGTH ^property[=].valueCode = #active
* #PREFSTRENGTH ^property[+].code = #internalId
* #PREFSTRENGTH ^property[=].valueCode = #23623
* #PREFSTRENGTH ^property[+].code = #subsumedBy
* #PREFSTRENGTH ^property[=].valueCode = #_PreferenceObservationType
* #CIRCLE "circle" "A circle defined by two (column,row) pairs. The first point is the center of the circle and the second point is a point on the perimeter of the circle."
* #CIRCLE ^property[0].code = #status
* #CIRCLE ^property[=].valueCode = #active
* #CIRCLE ^property[+].code = #internalId
* #CIRCLE ^property[=].valueCode = #16118
* #CIRCLE ^property[+].code = #subsumedBy
* #CIRCLE ^property[=].valueCode = #_ROIOverlayShape
* #ELLIPSE "ellipse" "An ellipse defined by four (column,row) pairs, the first two points specifying the endpoints of the major axis and the second two points specifying the endpoints of the minor axis."
* #ELLIPSE ^property[0].code = #status
* #ELLIPSE ^property[=].valueCode = #active
* #ELLIPSE ^property[+].code = #internalId
* #ELLIPSE ^property[=].valueCode = #16119
* #ELLIPSE ^property[+].code = #subsumedBy
* #ELLIPSE ^property[=].valueCode = #_ROIOverlayShape
* #POINT "point" "A single point denoted by a single (column,row) pair, or multiple points each denoted by a (column,row) pair."
* #POINT ^property[0].code = #status
* #POINT ^property[=].valueCode = #active
* #POINT ^property[+].code = #internalId
* #POINT ^property[=].valueCode = #16120
* #POINT ^property[+].code = #subsumedBy
* #POINT ^property[=].valueCode = #_ROIOverlayShape
* #POLY "polyline" "A series of connected line segments with ordered vertices denoted by (column,row) pairs; if the first and last vertices are the same, it is a closed polygon."
* #POLY ^property[0].code = #status
* #POLY ^property[=].valueCode = #active
* #POLY ^property[+].code = #internalId
* #POLY ^property[=].valueCode = #16121
* #POLY ^property[+].code = #subsumedBy
* #POLY ^property[=].valueCode = #_ROIOverlayShape
* #B "business information sensitivity" "Policy for handling trade secrets such as financial information or intellectual property, which will be afforded heightened confidentiality. Description: Since the service class can represent knowledge structures that may be considered a trade or business secret, there is sometimes (though rarely) the need to flag those items as of business level confidentiality.\r\n\r\n*Usage Notes:* No patient related information may ever be of this confidentiality level. If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #B ^property[0].code = #status
* #B ^property[=].valueCode = #active
* #B ^property[+].code = #HL7usageNotes
* #B ^property[=].valueString = "No patient related information may ever be of this confidentiality level.   If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #B ^property[+].code = #internalId
* #B ^property[=].valueCode = #23347
* #B ^property[+].code = #subsumedBy
* #B ^property[=].valueCode = #_RoleInformationSensitivityPolicy
* #EMPL "employer information sensitivity" "Policy for handling information related to an employer which is deemed classified to protect an employee who is the information subject, and which will be afforded heightened confidentiality. Description: Policies may govern sensitivity of information related to an employer, such as law enforcement or national security, the identity of which could impact the privacy, well-being, or safety of an information subject who is an employee.\r\n\r\n*Usage Notes:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #EMPL ^property[0].code = #status
* #EMPL ^property[=].valueCode = #active
* #EMPL ^property[+].code = #HL7usageNotes
* #EMPL ^property[=].valueString = "If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #EMPL ^property[+].code = #internalId
* #EMPL ^property[=].valueCode = #23348
* #EMPL ^property[+].code = #subsumedBy
* #EMPL ^property[=].valueCode = #_RoleInformationSensitivityPolicy
* #LOCIS "location information sensitivity" "Policy for handling information related to the location of the information subject, which will be afforded heightened confidentiality. Description: Policies may govern sensitivity of information related to the location of the information subject, the disclosure of which could impact the privacy, well-being, or safety of that subject.\r\n\r\n*Usage Notes:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #LOCIS ^property[0].code = #status
* #LOCIS ^property[=].valueCode = #active
* #LOCIS ^property[+].code = #HL7usageNotes
* #LOCIS ^property[=].valueString = "If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #LOCIS ^property[+].code = #internalId
* #LOCIS ^property[=].valueCode = #23349
* #LOCIS ^property[+].code = #subsumedBy
* #LOCIS ^property[=].valueCode = #_RoleInformationSensitivityPolicy
* #SSP "sensitive service provider information sensitivity" "Policy for handling information related to a provider of sensitive services, which will be afforded heightened confidentiality. Description: Policies may govern sensitivity of information related to providers who deliver sensitive healthcare services in order to protect the privacy, well-being, and safety of the provider and of patients receiving sensitive services.\r\n\r\n*Usage Notes:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #SSP ^property[0].code = #status
* #SSP ^property[=].valueCode = #active
* #SSP ^property[+].code = #HL7usageNotes
* #SSP ^property[=].valueString = "If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #SSP ^property[+].code = #internalId
* #SSP ^property[=].valueCode = #23350
* #SSP ^property[+].code = #subsumedBy
* #SSP ^property[=].valueCode = #_RoleInformationSensitivityPolicy
* #ALLDONE "already performed" "**Definition:**The requested action has already been performed and so this request has no effect"
* #ALLDONE ^property[0].code = #status
* #ALLDONE ^property[=].valueCode = #active
* #ALLDONE ^property[+].code = #internalId
* #ALLDONE ^property[=].valueCode = #22847
* #ALLDONE ^property[+].code = #subsumedBy
* #ALLDONE ^property[=].valueCode = #_SupplyDetectedIssueCode
* #FULFIL "fulfillment alert" "**Definition:**The therapy being performed is in some way out of alignment with the requested therapy."
* #FULFIL ^property[0].code = #status
* #FULFIL ^property[=].valueCode = #active
* #FULFIL ^property[+].code = #internalId
* #FULFIL ^property[=].valueCode = #22839
* #FULFIL ^property[+].code = #subsumedBy
* #FULFIL ^property[=].valueCode = #_SupplyDetectedIssueCode
* #HELD "held/suspended alert" "**Definition:**There should be no actions taken in fulfillment of a request that has been held or suspended."
* #HELD ^property[0].code = #status
* #HELD ^property[=].valueCode = #active
* #HELD ^property[+].code = #internalId
* #HELD ^property[=].valueCode = #22848
* #HELD ^property[+].code = #subsumedBy
* #HELD ^property[=].valueCode = #_SupplyDetectedIssueCode
* #TOOLATE "Refill Too Late Alert" "The patient is receiving a subsequent fill significantly later than would be expected based on the amount previously supplied and the therapy dosage instructions"
* #TOOLATE ^property[0].code = #status
* #TOOLATE ^property[=].valueCode = #active
* #TOOLATE ^property[+].code = #internalId
* #TOOLATE ^property[=].valueCode = #16693
* #TOOLATE ^property[+].code = #subsumedBy
* #TOOLATE ^property[=].valueCode = #_SupplyDetectedIssueCode
* #TOOSOON "Refill Too Soon Alert" "The patient is receiving a subsequent fill significantly earlier than would be expected based on the amount previously supplied and the therapy dosage instructions"
* #TOOSOON ^property[0].code = #status
* #TOOSOON ^property[=].valueCode = #active
* #TOOSOON ^property[+].code = #internalId
* #TOOSOON ^property[=].valueCode = #16692
* #TOOSOON ^property[+].code = #subsumedBy
* #TOOSOON ^property[=].valueCode = #_SupplyDetectedIssueCode
* #ENDLATE "End Too Late Alert" "Proposed therapy may be inappropriate or ineffective because the end of administration is too close to another planned therapy"
* #ENDLATE ^property[0].code = #status
* #ENDLATE ^property[=].valueCode = #active
* #ENDLATE ^property[+].code = #internalId
* #ENDLATE ^property[=].valueCode = #17818
* #ENDLATE ^property[+].code = #subsumedBy
* #ENDLATE ^property[=].valueCode = #_TimingDetectedIssueCode
* #STRTLATE "Start Too Late Alert" "Proposed therapy may be inappropriate or ineffective because the start of administration is too late after the onset of the condition"
* #STRTLATE ^property[0].code = #status
* #STRTLATE ^property[=].valueCode = #active
* #STRTLATE ^property[+].code = #internalId
* #STRTLATE ^property[=].valueCode = #17817
* #STRTLATE ^property[+].code = #subsumedBy
* #STRTLATE ^property[=].valueCode = #_TimingDetectedIssueCode
* #19 "Consulted Supplier" "Consulted other supplier/pharmacy, therapy confirmed"
* #19 ^property[0].code = #status
* #19 ^property[=].valueCode = #active
* #19 ^property[+].code = #internalId
* #19 ^property[=].valueCode = #17836
* #19 ^property[+].code = #subsumedBy
* #19 ^property[=].valueCode = #1
* #2 "Assessed Patient" "Assessed patient, therapy is appropriate"
* #2 ^property[0].code = #status
* #2 ^property[=].valueCode = #active
* #2 ^property[+].code = #internalId
* #2 ^property[=].valueCode = #16697
* #2 ^property[+].code = #subsumedBy
* #2 ^property[=].valueCode = #1
* #22 "appropriate indication or diagnosis" "**Description:** The patient has the appropriate indication or diagnosis for the action to be taken."
* #22 ^property[0].code = #status
* #22 ^property[=].valueCode = #active
* #22 ^property[+].code = #internalId
* #22 ^property[=].valueCode = #22814
* #22 ^property[+].code = #subsumedBy
* #22 ^property[=].valueCode = #1
* #23 "prior therapy documented" "**Description:** It has been confirmed that the appropriate pre-requisite therapy has been tried."
* #23 ^property[0].code = #status
* #23 ^property[=].valueCode = #active
* #23 ^property[+].code = #internalId
* #23 ^property[=].valueCode = #22815
* #23 ^property[+].code = #subsumedBy
* #23 ^property[=].valueCode = #1
* #3 "Patient Explanation" "Patient gave adequate explanation"
* #3 ^property[0].code = #status
* #3 ^property[=].valueCode = #active
* #3 ^property[+].code = #internalId
* #3 ^property[=].valueCode = #16698
* #3 ^property[+].code = #subsumedBy
* #3 ^property[=].valueCode = #1
* #4 "Consulted Other Source" "Consulted other supply source, therapy still appropriate"
* #4 ^property[0].code = #status
* #4 ^property[=].valueCode = #active
* #4 ^property[+].code = #internalId
* #4 ^property[=].valueCode = #16699
* #4 ^property[+].code = #subsumedBy
* #4 ^property[=].valueCode = #1
* #5 "Consulted Prescriber" "Consulted prescriber, therapy confirmed"
* #5 ^property[0].code = #status
* #5 ^property[=].valueCode = #active
* #5 ^property[+].code = #internalId
* #5 ^property[=].valueCode = #16700
* #5 ^property[+].code = #subsumedBy
* #5 ^property[=].valueCode = #1
* #7 "Interacting Therapy No Longer Active/Planned" "Concurrent therapy triggering alert is no longer on-going or planned"
* #7 ^property[0].code = #status
* #7 ^property[=].valueCode = #active
* #7 ^property[+].code = #internalId
* #7 ^property[=].valueCode = #16702
* #7 ^property[+].code = #subsumedBy
* #7 ^property[=].valueCode = #1
* #15 "Replacement" "Patient's existing supply was lost/wasted"
* #15 ^property[0].code = #status
* #15 ^property[=].valueCode = #active
* #15 ^property[+].code = #internalId
* #15 ^property[=].valueCode = #16710
* #15 ^property[+].code = #subsumedBy
* #15 ^property[=].valueCode = #14
* #16 "Vacation Supply" "Supply date is due to patient vacation"
* #16 ^property[0].code = #status
* #16 ^property[=].valueCode = #active
* #16 ^property[+].code = #internalId
* #16 ^property[=].valueCode = #16711
* #16 ^property[+].code = #subsumedBy
* #16 ^property[=].valueCode = #14
* #17 "Weekend Supply" "Supply date is intended to carry patient over weekend"
* #17 ^property[0].code = #status
* #17 ^property[=].valueCode = #active
* #17 ^property[+].code = #internalId
* #17 ^property[=].valueCode = #16712
* #17 ^property[+].code = #subsumedBy
* #17 ^property[=].valueCode = #14
* #18 "Leave of Absence" "Supply is intended for use during a leave of absence from an institution."
* #18 ^property[0].code = #status
* #18 ^property[=].valueCode = #active
* #18 ^property[+].code = #internalId
* #18 ^property[=].valueCode = #17835
* #18 ^property[+].code = #subsumedBy
* #18 ^property[=].valueCode = #14
* #20 "additional quantity on separate dispense" "**Description:** Supply is different than expected as an additional quantity has been supplied in a separate dispense."
* #20 ^property[0].code = #status
* #20 ^property[=].valueCode = #active
* #20 ^property[+].code = #internalId
* #20 ^property[=].valueCode = #22813
* #20 ^property[+].code = #subsumedBy
* #20 ^property[=].valueCode = #14
* #6 "Prescriber Declined Change" "Consulted prescriber and recommended change, prescriber declined"
* #6 ^property[0].code = #status
* #6 ^property[=].valueCode = #active
* #6 ^property[+].code = #internalId
* #6 ^property[=].valueCode = #16701
* #6 ^property[+].code = #subsumedBy
* #6 ^property[=].valueCode = #5
* #10 "Provided Patient Education" "Provided education or training to the patient on appropriate therapy use"
* #10 ^property[0].code = #status
* #10 ^property[=].valueCode = #active
* #10 ^property[+].code = #internalId
* #10 ^property[=].valueCode = #16705
* #10 ^property[+].code = #subsumedBy
* #10 ^property[=].valueCode = #8
* #11 "Added Concurrent Therapy" "Instituted an additional therapy to mitigate potential negative effects"
* #11 ^property[0].code = #status
* #11 ^property[=].valueCode = #active
* #11 ^property[+].code = #internalId
* #11 ^property[=].valueCode = #16706
* #11 ^property[+].code = #subsumedBy
* #11 ^property[=].valueCode = #8
* #12 "Temporarily Suspended Concurrent Therapy" "Suspended existing therapy that triggered interaction for the duration of this therapy"
* #12 ^property[0].code = #status
* #12 ^property[=].valueCode = #active
* #12 ^property[+].code = #internalId
* #12 ^property[=].valueCode = #16707
* #12 ^property[+].code = #subsumedBy
* #12 ^property[=].valueCode = #8
* #13 "Stopped Concurrent Therapy" "Aborted existing therapy that triggered interaction."
* #13 ^property[0].code = #status
* #13 ^property[=].valueCode = #active
* #13 ^property[+].code = #internalId
* #13 ^property[=].valueCode = #16708
* #13 ^property[+].code = #subsumedBy
* #13 ^property[=].valueCode = #8
* #9 "Instituted Ongoing Monitoring Program" "Arranged to monitor patient for adverse effects"
* #9 ^property[0].code = #status
* #9 ^property[=].valueCode = #active
* #9 ^property[+].code = #internalId
* #9 ^property[=].valueCode = #16704
* #9 ^property[+].code = #subsumedBy
* #9 ^property[=].valueCode = #8
* #ANF "adjudicated with adjustments and no financial impact" "The invoice element has been accepted for payment but one or more adjustment(s) have been made to one or more invoice element line items (component charges) without changing the amount.\r\n\r\nInvoice element can be reversed (nullified).\r\n\r\nRecommend that the invoice element is saved for DUR (Drug Utilization Reporting)."
* #ANF ^property[0].code = #status
* #ANF ^property[=].valueCode = #active
* #ANF ^property[+].code = #internalId
* #ANF ^property[=].valueCode = #19708
* #ANF ^property[+].code = #subsumedBy
* #ANF ^property[=].valueCode = #AA
* #TRSTACCRD "trust accreditation" "Type of security metadata about the formal declaration by an authority or neutral third party that validates the technical, security, trust, and business practice conformance of Trust Agents to facilitate security, interoperability, and trust among participants within a security domain or trust framework."
* #TRSTACCRD ^property[0].code = #status
* #TRSTACCRD ^property[=].valueCode = #active
* #TRSTACCRD ^property[+].code = #internalId
* #TRSTACCRD ^property[=].valueCode = #23659
* #TRSTACCRD ^property[+].code = #subsumedBy
* #TRSTACCRD ^property[=].valueCode = #ActTrustPolicyType
* #TRSTAGRE "trust agreement" "Type of security metadata about privacy and security requirements with which a security domain must comply. \\[ISO IEC 10181-1\\]"
* #TRSTAGRE ^property[0].code = #status
* #TRSTAGRE ^property[=].valueCode = #active
* #TRSTAGRE ^property[+].code = #internalId
* #TRSTAGRE ^property[=].valueCode = #23660
* #TRSTAGRE ^property[+].code = #subsumedBy
* #TRSTAGRE ^property[=].valueCode = #ActTrustPolicyType
* #TRSTASSUR "trust assurance" "Type of security metadata about the digital quality or reliability of a trust assertion, activity, capability, information exchange, mechanism, process, or protocol."
* #TRSTASSUR ^property[0].code = #status
* #TRSTASSUR ^property[=].valueCode = #active
* #TRSTASSUR ^property[+].code = #internalId
* #TRSTASSUR ^property[=].valueCode = #23661
* #TRSTASSUR ^property[+].code = #subsumedBy
* #TRSTASSUR ^property[=].valueCode = #ActTrustPolicyType
* #TRSTCERT "trust certificate" "Type of security metadata about a set of security-relevant data issued by a security authority or trusted third party, together with security information which is used to provide the integrity and data origin authentication services for an IT resource (data, information object, service, or system capability). \\[Based on ISO IEC 10181-1\\]"
* #TRSTCERT ^property[0].code = #status
* #TRSTCERT ^property[=].valueCode = #active
* #TRSTCERT ^property[+].code = #internalId
* #TRSTCERT ^property[=].valueCode = #23662
* #TRSTCERT ^property[+].code = #subsumedBy
* #TRSTCERT ^property[=].valueCode = #ActTrustPolicyType
* #TRSTFWK "trust framework" "Type of security metadata about a complete set of contracts, regulations, or commitments that enable participating actors to rely on certain assertions by other actors to fulfill their information security requirements. \\[Kantara Initiative\\]"
* #TRSTFWK ^property[0].code = #status
* #TRSTFWK ^property[=].valueCode = #active
* #TRSTFWK ^property[+].code = #internalId
* #TRSTFWK ^property[=].valueCode = #23663
* #TRSTFWK ^property[+].code = #subsumedBy
* #TRSTFWK ^property[=].valueCode = #ActTrustPolicyType
* #TRSTMEC "trust mechanism" "Type of security metadata about a security architecture system component that supports enforcement of security policies."
* #TRSTMEC ^property[0].code = #status
* #TRSTMEC ^property[=].valueCode = #active
* #TRSTMEC ^property[+].code = #internalId
* #TRSTMEC ^property[=].valueCode = #23664
* #TRSTMEC ^property[+].code = #subsumedBy
* #TRSTMEC ^property[=].valueCode = #ActTrustPolicyType
* #ADALRT "adult alert" "Proposed therapy is outside of the standard practice for an adult patient."
* #ADALRT ^property[0].code = #status
* #ADALRT ^property[=].valueCode = #active
* #ADALRT ^property[+].code = #internalId
* #ADALRT ^property[=].valueCode = #23556
* #ADALRT ^property[+].code = #subsumedBy
* #ADALRT ^property[=].valueCode = #AGE
* #DOSEHINDA "High Dose for Age Alert" "Proposed dosage exceeds standard practice for the patient's age"
* #DOSEHINDA ^property[0].code = #status
* #DOSEHINDA ^property[=].valueCode = #active
* #DOSEHINDA ^property[+].code = #internalId
* #DOSEHINDA ^property[=].valueCode = #17788
* #DOSEHINDA ^property[+].code = #subsumedBy
* #DOSEHINDA ^property[=].valueCode = #AGE
* #DOSEHINDA ^property[+].code = #subsumedBy
* #DOSEHINDA ^property[=].valueCode = #DOSEH
* #DOSELINDA "Low Dose for Age Alert" "Proposed dosage is below suggested therapeutic levels for the patient's age"
* #DOSELINDA ^property[0].code = #status
* #DOSELINDA ^property[=].valueCode = #active
* #DOSELINDA ^property[+].code = #internalId
* #DOSELINDA ^property[=].valueCode = #17792
* #DOSELINDA ^property[+].code = #subsumedBy
* #DOSELINDA ^property[=].valueCode = #AGE
* #DOSELINDA ^property[+].code = #subsumedBy
* #DOSELINDA ^property[=].valueCode = #DOSEL
* #GEALRT "geriatric alert" "Proposed therapy is outside of standard practice for a geriatric patient."
* #GEALRT ^property[0].code = #status
* #GEALRT ^property[=].valueCode = #active
* #GEALRT ^property[+].code = #internalId
* #GEALRT ^property[=].valueCode = #23554
* #GEALRT ^property[+].code = #subsumedBy
* #GEALRT ^property[=].valueCode = #AGE
* #PEALRT "pediatric alert" "Proposed therapy is outside of the standard practice for a pediatric patient."
* #PEALRT ^property[0].code = #status
* #PEALRT ^property[=].valueCode = #active
* #PEALRT ^property[+].code = #internalId
* #PEALRT ^property[=].valueCode = #23555
* #PEALRT ^property[+].code = #subsumedBy
* #PEALRT ^property[=].valueCode = #AGE
* #DALG "Drug Allergy" "An allergy to a pharmaceutical product."
* #DALG ^property[0].code = #status
* #DALG ^property[=].valueCode = #active
* #DALG ^property[+].code = #internalId
* #DALG ^property[=].valueCode = #21504
* #DALG ^property[+].code = #subsumedBy
* #DALG ^property[=].valueCode = #ALG
* #DALG ^property[+].code = #subsumedBy
* #DALG ^property[=].valueCode = #DINT
* #EALG "Environmental Allergy" "An allergy to a substance other than a drug or a food. E.g. Latex, pollen, etc."
* #EALG ^property[0].code = #status
* #EALG ^property[=].valueCode = #active
* #EALG ^property[+].code = #internalId
* #EALG ^property[=].valueCode = #21506
* #EALG ^property[+].code = #subsumedBy
* #EALG ^property[=].valueCode = #ALG
* #EALG ^property[+].code = #subsumedBy
* #EALG ^property[=].valueCode = #EINT
* #FALG "Food Allergy" "An allergy to a substance generally consumed for nutritional purposes."
* #FALG ^property[0].code = #status
* #FALG ^property[=].valueCode = #active
* #FALG ^property[+].code = #internalId
* #FALG ^property[=].valueCode = #21505
* #FALG ^property[+].code = #subsumedBy
* #FALG ^property[=].valueCode = #ALG
* #FALG ^property[+].code = #subsumedBy
* #FALG ^property[=].valueCode = #FINT
* #AMBAIR "fixed-wing ambulance transport"
* #AMBAIR ^property[0].code = #status
* #AMBAIR ^property[=].valueCode = #active
* #AMBAIR ^property[+].code = #synonymCode
* #AMBAIR ^property[=].valueCode = #Fixed-wingAmbulance
* #AMBAIR ^property[+].code = #internalId
* #AMBAIR ^property[=].valueCode = #21554
* #AMBAIR ^property[+].code = #subsumedBy
* #AMBAIR ^property[=].valueCode = #AMBT
* #AMBAIR ^property[+].code = #subsumedBy
* #AMBAIR ^property[=].valueCode = #Ambulance
* #Fixed-wingAmbulance "fixed-wing ambulance transport"
* #Fixed-wingAmbulance ^property[0].code = #status
* #Fixed-wingAmbulance ^property[=].valueCode = #retired
* #Fixed-wingAmbulance ^property[+].code = #synonymCode
* #Fixed-wingAmbulance ^property[=].valueCode = #AMBAIR
* #Fixed-wingAmbulance ^property[+].code = #internalId
* #Fixed-wingAmbulance ^property[=].valueCode = #21554
* #Fixed-wingAmbulance ^property[+].code = #subsumedBy
* #Fixed-wingAmbulance ^property[=].valueCode = #AMBT
* #Fixed-wingAmbulance ^property[+].code = #subsumedBy
* #Fixed-wingAmbulance ^property[=].valueCode = #Ambulance
* #AMBGRND "ground ambulance transport"
* #AMBGRND ^property[0].code = #status
* #AMBGRND ^property[=].valueCode = #active
* #AMBGRND ^property[+].code = #synonymCode
* #AMBGRND ^property[=].valueCode = #GroundAmbulance
* #AMBGRND ^property[+].code = #internalId
* #AMBGRND ^property[=].valueCode = #21552
* #AMBGRND ^property[+].code = #subsumedBy
* #AMBGRND ^property[=].valueCode = #AMBT
* #AMBGRND ^property[+].code = #subsumedBy
* #AMBGRND ^property[=].valueCode = #Ambulance
* #GroundAmbulance "ground ambulance transport"
* #GroundAmbulance ^property[0].code = #status
* #GroundAmbulance ^property[=].valueCode = #retired
* #GroundAmbulance ^property[+].code = #synonymCode
* #GroundAmbulance ^property[=].valueCode = #AMBGRND
* #GroundAmbulance ^property[+].code = #internalId
* #GroundAmbulance ^property[=].valueCode = #21552
* #GroundAmbulance ^property[+].code = #subsumedBy
* #GroundAmbulance ^property[=].valueCode = #AMBT
* #GroundAmbulance ^property[+].code = #subsumedBy
* #GroundAmbulance ^property[=].valueCode = #Ambulance
* #AMBHELO "helicopter ambulance transport"
* #AMBHELO ^property[0].code = #status
* #AMBHELO ^property[=].valueCode = #active
* #AMBHELO ^property[+].code = #synonymCode
* #AMBHELO ^property[=].valueCode = #HelicopterAmbulance
* #AMBHELO ^property[+].code = #internalId
* #AMBHELO ^property[=].valueCode = #21553
* #AMBHELO ^property[+].code = #subsumedBy
* #AMBHELO ^property[=].valueCode = #AMBT
* #AMBHELO ^property[+].code = #subsumedBy
* #AMBHELO ^property[=].valueCode = #Ambulance
* #HelicopterAmbulance "helicopter ambulance transport"
* #HelicopterAmbulance ^property[0].code = #status
* #HelicopterAmbulance ^property[=].valueCode = #retired
* #HelicopterAmbulance ^property[+].code = #synonymCode
* #HelicopterAmbulance ^property[=].valueCode = #AMBHELO
* #HelicopterAmbulance ^property[+].code = #internalId
* #HelicopterAmbulance ^property[=].valueCode = #21553
* #HelicopterAmbulance ^property[+].code = #subsumedBy
* #HelicopterAmbulance ^property[=].valueCode = #AMBT
* #HelicopterAmbulance ^property[+].code = #subsumedBy
* #HelicopterAmbulance ^property[=].valueCode = #Ambulance
* #ACCESSCONSCHEME "access control scheme" "An access control policy specific to the type of access control scheme, which is used to enforce one or more authorization policies.\r\n\r\n*Usage Note:* Access control schemes are the type of access control policy, which is comprised of access control policy rules concerning the provision of the access control service.\r\n\r\nThere are two categories of access control policies, rule-based and identity-based, which are identified in CCITT Rec. X.800 aka ISO 7498-2. Rule-based access control policies are intended to apply to all access requests by any initiator on any target in a security domain. Identity-based access control policies are based on rules specific to an individual initiator, a group of initiators, entities acting on behalf of initiators, or originators acting in a specific role. Context can modify rule-based or identity-based access control policies. Context rules may define the entire policy in effect. Real systems will usually employ a combination of these policy types; if a rule-based policy is used, then an identity-based policy is usually in effect also.\r\n\r\nAn access control scheme may be based on access control lists, capabilities, labels, and context or a combination of these. An access control scheme is a component of an access control mechanism or \"service\") along with the supporting mechanisms required by that scheme to provide access control decision information (ADI) supplied by the scheme to the access decision facility (ADF also known as a PDP). (Based on ISO/IEC 10181-3:1996)\r\n\r\n**Examples:** \r\n\r\n *  Attribute Based Access Control (ABAC)\r\n *  Discretionary Access Control (DAC)\r\n *  History Based Access Control (HBAC)\r\n *  Identity Based Access Control (IBAC)\r\n *  Mandatory Access Control (MAC)\r\n *  Organization Based Access Control (OrBAC)\r\n *  Relationship Based Access Control (RelBac)\r\n *  Responsibility Based Access Control (RespBAC)\r\n *  Risk Adaptable Access Control (RAdAC)\r\n\r\n>"
* #ACCESSCONSCHEME ^property[0].code = #status
* #ACCESSCONSCHEME ^property[=].valueCode = #active
* #ACCESSCONSCHEME ^property[+].code = #internalId
* #ACCESSCONSCHEME ^property[=].valueCode = #23935
* #ACCESSCONSCHEME ^property[+].code = #subsumedBy
* #ACCESSCONSCHEME ^property[=].valueCode = #AUTHPOL
* #COL "collision coverage policy" "**Definition:** An automobile insurance policy under which the insurance company will cover the cost of damages to an automobile owned by the named insured that are caused by accident or intentionally by another party."
* #COL ^property[0].code = #status
* #COL ^property[=].valueCode = #active
* #COL ^property[+].code = #internalId
* #COL ^property[=].valueCode = #22100
* #COL ^property[+].code = #subsumedBy
* #COL ^property[=].valueCode = #AUTOPOL
* #UNINSMOT "uninsured motorist policy" "**Definition:** An automobile insurance policy under which the insurance company will indemnify a loss for which another motorist is liable if that motorist is unable to pay because he or she is uninsured. Coverage under the policy applies to bodily injury damages only. Injuries to the covered party caused by a hit-and-run driver are also covered."
* #UNINSMOT ^property[0].code = #status
* #UNINSMOT ^property[=].valueCode = #active
* #UNINSMOT ^property[+].code = #internalId
* #UNINSMOT ^property[=].valueCode = #22101
* #UNINSMOT ^property[+].code = #subsumedBy
* #UNINSMOT ^property[=].valueCode = #AUTOPOL
* #COGN "cognitive disability information sensitivity" "Policy for handling information related to cognitive disability disorders and conditions caused by these disorders, which are afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code.\r\n\r\nExamples may include dementia, traumatic brain injury, attention deficit, hearing and visual disability such as dyslexia and other disorders and related conditions which impair learning and self-sufficiency. However, the cognitive disabilities to which this term may apply versus other behavioral health categories varies by jurisdiction and organizational policy in part due to overlap with other behavioral health conditions. Implementers should constrain to those diagnoses applicable in the domain in which this code is used."
* #COGN ^property[0].code = #status
* #COGN ^property[=].valueCode = #active
* #COGN ^property[+].code = #internalId
* #COGN ^property[=].valueCode = #23928
* #COGN ^property[+].code = #subsumedBy
* #COGN ^property[=].valueCode = #BH
* #DVD "developmental disability information sensitivity" "Policy for handling information related to developmental disability disorders and conditions caused by these disorders, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code.\r\n\r\nA diverse group of chronic conditions that are due to mental or physical impairments impacting activities of daily living, self-care, language acuity, learning, mobility, independent living and economic self-sufficiency. Examples may include Down syndrome and Autism spectrum. However, the developmental disabilities to which this term applies versus other behavioral health categories varies by jurisdiction and organizational policy in part due to overlap with other behavioral health conditions. Implementers should constrain to those diagnoses applicable in the domain in which this code is used."
* #DVD ^property[0].code = #status
* #DVD ^property[=].valueCode = #active
* #DVD ^property[+].code = #internalId
* #DVD ^property[=].valueCode = #23929
* #DVD ^property[+].code = #subsumedBy
* #DVD ^property[=].valueCode = #BH
* #EMOTDIS "emotional disturbance information sensitivity" "Policy for handling information related to emotional disturbance disorders and conditions caused by these disorders, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code.\r\n\r\nTypical used to characterize behavioral and mental health issues of adolescents where the disorder may be temporarily diagnosed in order to avoid the potential and unnecessary stigmatizing diagnoses of disorder long term."
* #EMOTDIS ^property[0].code = #status
* #EMOTDIS ^property[=].valueCode = #active
* #EMOTDIS ^property[+].code = #internalId
* #EMOTDIS ^property[=].valueCode = #23930
* #EMOTDIS ^property[+].code = #subsumedBy
* #EMOTDIS ^property[=].valueCode = #BH
* #AE "American Express"
* #AE ^property[0].code = #status
* #AE ^property[=].valueCode = #active
* #AE ^property[+].code = #internalId
* #AE ^property[=].valueCode = #14814
* #AE ^property[+].code = #subsumedBy
* #AE ^property[=].valueCode = #CC
* #DN "Diner's Club"
* #DN ^property[0].code = #status
* #DN ^property[=].valueCode = #active
* #DN ^property[+].code = #internalId
* #DN ^property[=].valueCode = #14815
* #DN ^property[+].code = #subsumedBy
* #DN ^property[=].valueCode = #CC
* #DV "Discover Card"
* #DV ^property[0].code = #status
* #DV ^property[=].valueCode = #active
* #DV ^property[+].code = #internalId
* #DV ^property[=].valueCode = #14816
* #DV ^property[+].code = #subsumedBy
* #DV ^property[=].valueCode = #CC
* #MC "Master Card"
* #MC ^property[0].code = #status
* #MC ^property[=].valueCode = #active
* #MC ^property[+].code = #internalId
* #MC ^property[=].valueCode = #14813
* #MC ^property[+].code = #subsumedBy
* #MC ^property[=].valueCode = #CC
* #V "Visa"
* #V ^property[0].code = #status
* #V ^property[=].valueCode = #active
* #V ^property[+].code = #internalId
* #V ^property[=].valueCode = #14812
* #V ^property[+].code = #subsumedBy
* #V ^property[=].valueCode = #CC
* #DIAGLISTE "diagnosis list entry task" "A clinician enters a diagnosis for a given patient."
* #DIAGLISTE ^property[0].code = #status
* #DIAGLISTE ^property[=].valueCode = #active
* #DIAGLISTE ^property[+].code = #internalId
* #DIAGLISTE ^property[=].valueCode = #22071
* #DIAGLISTE ^property[+].code = #subsumedBy
* #DIAGLISTE ^property[=].valueCode = #CLINNOTEE
* #DISCHINSTE "discharge instruction entry" "A person provides a discharge instruction to a patient."
* #DISCHINSTE ^property[0].code = #status
* #DISCHINSTE ^property[=].valueCode = #active
* #DISCHINSTE ^property[+].code = #internalId
* #DISCHINSTE ^property[=].valueCode = #23628
* #DISCHINSTE ^property[+].code = #subsumedBy
* #DISCHINSTE ^property[=].valueCode = #CLINNOTEE
* #DISCHSUME "discharge summary entry task" "A clinician enters a discharge summary for a given patient."
* #DISCHSUME ^property[0].code = #status
* #DISCHSUME ^property[=].valueCode = #active
* #DISCHSUME ^property[+].code = #internalId
* #DISCHSUME ^property[=].valueCode = #22069
* #DISCHSUME ^property[+].code = #subsumedBy
* #DISCHSUME ^property[=].valueCode = #CLINNOTEE
* #PATEDUE "patient education entry" "A person provides a patient-specific education handout to a patient."
* #PATEDUE ^property[0].code = #status
* #PATEDUE ^property[=].valueCode = #active
* #PATEDUE ^property[+].code = #internalId
* #PATEDUE ^property[=].valueCode = #23627
* #PATEDUE ^property[+].code = #subsumedBy
* #PATEDUE ^property[=].valueCode = #CLINNOTEE
* #PATREPE "pathology report entry task" "A pathologist enters a report for a given patient."
* #PATREPE ^property[0].code = #status
* #PATREPE ^property[=].valueCode = #active
* #PATREPE ^property[+].code = #internalId
* #PATREPE ^property[=].valueCode = #22073
* #PATREPE ^property[+].code = #subsumedBy
* #PATREPE ^property[=].valueCode = #CLINNOTEE
* #PROBLISTE "problem list entry task" "A clinician enters a problem for a given patient."
* #PROBLISTE ^property[0].code = #status
* #PROBLISTE ^property[=].valueCode = #active
* #PROBLISTE ^property[+].code = #internalId
* #PROBLISTE ^property[=].valueCode = #22070
* #PROBLISTE ^property[+].code = #subsumedBy
* #PROBLISTE ^property[=].valueCode = #CLINNOTEE
* #RADREPE "radiology report entry task" "A radiologist enters a report for a given patient."
* #RADREPE ^property[0].code = #status
* #RADREPE ^property[=].valueCode = #active
* #RADREPE ^property[+].code = #internalId
* #RADREPE ^property[=].valueCode = #22072
* #RADREPE ^property[+].code = #subsumedBy
* #RADREPE ^property[=].valueCode = #CLINNOTEE
* #DISCHSUMREV "discharge summary review task" "A person reviews a discharge summary of a given patient."
* #DISCHSUMREV ^property[0].code = #status
* #DISCHSUMREV ^property[=].valueCode = #active
* #DISCHSUMREV ^property[+].code = #internalId
* #DISCHSUMREV ^property[=].valueCode = #22066
* #DISCHSUMREV ^property[+].code = #subsumedBy
* #DISCHSUMREV ^property[=].valueCode = #CLINNOTEREV
* #CODE_DEPREC "code has been deprecated" "**Description:**The specified code has been deprecated and should no longer be used. Select another code from the code system."
* #CODE_DEPREC ^property[0].code = #status
* #CODE_DEPREC ^property[=].valueCode = #active
* #CODE_DEPREC ^property[+].code = #internalId
* #CODE_DEPREC ^property[=].valueCode = #21660
* #CODE_DEPREC ^property[+].code = #subsumedBy
* #CODE_DEPREC ^property[=].valueCode = #CODE_INVAL
* #ABUSE "commonly abused/misused alert" "**Description:**The proposed therapy is frequently misused or abused and therefore should be used with caution and/or monitoring."
* #ABUSE ^property[0].code = #status
* #ABUSE ^property[=].valueCode = #active
* #ABUSE ^property[+].code = #internalId
* #ABUSE ^property[=].valueCode = #21670
* #ABUSE ^property[+].code = #subsumedBy
* #ABUSE ^property[=].valueCode = #COMPLY
* #FRAUD "potential fraud" "**Description:**The request is suspected to have a fraudulent basis."
* #FRAUD ^property[0].code = #status
* #FRAUD ^property[=].valueCode = #active
* #FRAUD ^property[+].code = #internalId
* #FRAUD ^property[=].valueCode = #21669
* #FRAUD ^property[+].code = #subsumedBy
* #FRAUD ^property[=].valueCode = #COMPLY
* #PLYDOC "Poly-orderer Alert" "A similar or identical therapy was recently ordered by a different practitioner."
* #PLYDOC ^property[0].code = #status
* #PLYDOC ^property[=].valueCode = #active
* #PLYDOC ^property[+].code = #internalId
* #PLYDOC ^property[=].valueCode = #16689
* #PLYDOC ^property[+].code = #subsumedBy
* #PLYDOC ^property[=].valueCode = #COMPLY
* #PLYPHRM "Poly-supplier Alert" "This patient was recently supplied a similar or identical therapy from a different pharmacy or supplier."
* #PLYPHRM ^designation.language = #en
* #PLYPHRM ^designation.use = $sct#900000000000013009
* #PLYPHRM ^designation.value = "Poly-pharmacy Alert"
* #PLYPHRM ^property[0].code = #status
* #PLYPHRM ^property[=].valueCode = #active
* #PLYPHRM ^property[+].code = #internalId
* #PLYPHRM ^property[=].valueCode = #16690
* #PLYPHRM ^property[+].code = #subsumedBy
* #PLYPHRM ^property[=].valueCode = #COMPLY
* #ACOCOMPT "accountable care organization compartment" "A group of health care entities, which may include health care providers, care givers, hospitals, facilities, health plans, and other health care constituents who coordinate care for reimbursement based on quality metrics for improving outcomes and lowering costs, and may be authorized to access the consumer's health information because of membership in that group.\r\n\r\nSecurity Compartment Labels assigned to a consumer's information use in accountable care workflows should be met or exceeded by the Security Compartment attribute claimed by a participant in a an accountable care workflow who is requesting access to that information"
* #ACOCOMPT ^property[0].code = #status
* #ACOCOMPT ^property[=].valueCode = #active
* #ACOCOMPT ^property[+].code = #internalId
* #ACOCOMPT ^property[=].valueCode = #23880
* #ACOCOMPT ^property[+].code = #subsumedBy
* #ACOCOMPT ^property[=].valueCode = #COMPT
* #CDSSCOMPT "CDS system compartment" "This compartment code may be used as a field value in an initiator's clearance to indicate permission for its Clinical Decision Support system (CDSS) to access and use an IT Resource with a security label having the same compartment value in the security category label field.\r\n\r\nThis code permits a CDS system to algorithmically process information with this compartment tag for the purpose of alerting an unauthorized end user that masked information is needed to address an emergency or a patient safety issue, such as a contraindicated medication. The alert would advise the end user to \"break the glass\", to access the masked information in an accountable manner, or to ask the patient about possibly masked information.\r\n\r\nFor example, releasing a list of sensitive medications with this compartment tag means that while the CDS system is permitted to use this list in its contraindication analysis, this sensitive information should not be shared directly with unauthorized end-users or end-user-facing Apps. Based on the results of the CDS system analysis (e.g., warnings about prescriptions) the end-user (e.g., a clinician) may still have the ability to access to the sensitive information by invoking \"break-the-glass protocol\".\r\n\r\n*Usage Note:* A security label with the CDS system compartment may be used in conjunction with other security labels, e.g., a label authorizing an end user with adequate clearance to access the same CDS system compartment tagged information. For example, a patient may restrict sharing sensitive information with most care team members except in an emergency or to prevent an adverse event, and may consent to sharing with their sensitive service care team providers, e.g., for mental health or substance abuse."
* #CDSSCOMPT ^property[0].code = #status
* #CDSSCOMPT ^property[=].valueCode = #active
* #CDSSCOMPT ^property[+].code = #internalId
* #CDSSCOMPT ^property[=].valueCode = #24132
* #CDSSCOMPT ^property[+].code = #subsumedBy
* #CDSSCOMPT ^property[=].valueCode = #COMPT
* #CTCOMPT "care team compartment" "Care coordination across participants in a care plan requires sharing of a healthcare consumer's information specific to that workflow. A care team member should only have access to that information while participating in that workflow or for other authorized uses.\r\n\r\nSecurity Compartment Labels assigned to a consumer's information use in care coordination workflows should be met or exceeded by the Security Compartment attribute claimed by a participant in a care team member workflow who is requesting access to that information"
* #CTCOMPT ^property[0].code = #status
* #CTCOMPT ^property[=].valueCode = #active
* #CTCOMPT ^property[+].code = #internalId
* #CTCOMPT ^property[=].valueCode = #23878
* #CTCOMPT ^property[+].code = #subsumedBy
* #CTCOMPT ^property[=].valueCode = #COMPT
* #FMCOMPT "financial management compartment" "Financial management department members who have access to healthcare consumer information as part of a patient account, billing and claims workflows.\r\n\r\nSecurity Compartment Labels assigned to consumer information used in these workflows should be met or exceeded by the Security Compartment attribute claimed by a participant in a financial management workflow who is requesting access to that information."
* #FMCOMPT ^property[0].code = #status
* #FMCOMPT ^property[=].valueCode = #active
* #FMCOMPT ^property[+].code = #internalId
* #FMCOMPT ^property[=].valueCode = #23881
* #FMCOMPT ^property[+].code = #subsumedBy
* #FMCOMPT ^property[=].valueCode = #COMPT
* #HRCOMPT "human resource compartment" "A security category label field value, which indicates that access and use of an IT resource is restricted to members of human resources department or workflow."
* #HRCOMPT ^property[0].code = #status
* #HRCOMPT ^property[=].valueCode = #active
* #HRCOMPT ^property[+].code = #internalId
* #HRCOMPT ^property[=].valueCode = #23580
* #HRCOMPT ^property[+].code = #subsumedBy
* #HRCOMPT ^property[=].valueCode = #COMPT
* #LRCOMPT "legitimate relationship compartment" "Providers and care givers who have an established relationship per criteria determined by policy are considered to have an established care provision relations with a healthcare consumer, and may be authorized to access the consumer's health information because of that relationship. Providers and care givers should only have access to that information while participating in legitimate relationship workflows or for other authorized uses.\r\n\r\nSecurity Compartment Labels assigned to a consumer's information use in legitimate relationship workflows should be met or exceeded by the Security Compartment attribute claimed by a participant in a legitimate relationship workflow who is requesting access to that information."
* #LRCOMPT ^property[0].code = #status
* #LRCOMPT ^property[=].valueCode = #active
* #LRCOMPT ^property[+].code = #internalId
* #LRCOMPT ^property[=].valueCode = #23879
* #LRCOMPT ^property[+].code = #subsumedBy
* #LRCOMPT ^property[=].valueCode = #COMPT
* #PACOMPT "patient administration compartment" "Patient administration members who have access to healthcare consumer information as part of a patient administration workflows.\r\n\r\nSecurity Compartment Labels assigned to consumer information used in these workflows should be met or exceeded by the Security Compartment attribute claimed by a participant in a patient administration workflow who is requesting access to that information."
* #PACOMPT ^property[0].code = #status
* #PACOMPT ^property[=].valueCode = #active
* #PACOMPT ^property[+].code = #internalId
* #PACOMPT ^property[=].valueCode = #23882
* #PACOMPT ^property[+].code = #subsumedBy
* #PACOMPT ^property[=].valueCode = #COMPT
* #RESCOMPT "research project compartment" "A security category label field value, which indicates that access and use of an IT resource is restricted to members of a research project."
* #RESCOMPT ^property[0].code = #status
* #RESCOMPT ^property[=].valueCode = #active
* #RESCOMPT ^property[+].code = #internalId
* #RESCOMPT ^property[=].valueCode = #23578
* #RESCOMPT ^property[+].code = #subsumedBy
* #RESCOMPT ^property[=].valueCode = #COMPT
* #RMGTCOMPT "records management compartment" "A security category label field value, which indicates that access and use of an IT resource is restricted to members of records management department or workflow."
* #RMGTCOMPT ^property[0].code = #status
* #RMGTCOMPT ^property[=].valueCode = #active
* #RMGTCOMPT ^property[+].code = #internalId
* #RMGTCOMPT ^property[=].valueCode = #23579
* #RMGTCOMPT ^property[+].code = #subsumedBy
* #RMGTCOMPT ^property[=].valueCode = #COMPT
* #HGHT
* #HGHT ^property[0].code = #status
* #HGHT ^property[=].valueCode = #active
* #HGHT ^property[+].code = #internalId
* #HGHT ^property[=].valueCode = #17795
* #HGHT ^property[+].code = #subsumedBy
* #HGHT ^property[=].valueCode = #COND
* #LACT "Lactation Alert" "Proposed therapy may be inappropriate or contraindicated when breast-feeding"
* #LACT ^property[0].code = #status
* #LACT ^property[=].valueCode = #active
* #LACT ^property[+].code = #internalId
* #LACT ^property[=].valueCode = #16667
* #LACT ^property[+].code = #subsumedBy
* #LACT ^property[=].valueCode = #COND
* #PREG "Pregnancy Alert" "Proposed therapy may be inappropriate or contraindicated during pregnancy"
* #PREG ^property[0].code = #status
* #PREG ^property[=].valueCode = #active
* #PREG ^property[+].code = #internalId
* #PREG ^property[=].valueCode = #16666
* #PREG ^property[+].code = #subsumedBy
* #PREG ^property[=].valueCode = #COND
* #WGHT
* #WGHT ^property[0].code = #status
* #WGHT ^property[=].valueCode = #active
* #WGHT ^property[+].code = #internalId
* #WGHT ^property[=].valueCode = #17794
* #WGHT ^property[+].code = #subsumedBy
* #WGHT ^property[=].valueCode = #COND
* #INTOLIST "intolerance list" "List of intolerance observations."
* #INTOLIST ^property[0].code = #status
* #INTOLIST ^property[=].valueCode = #active
* #INTOLIST ^property[+].code = #internalId
* #INTOLIST ^property[=].valueCode = #19982
* #INTOLIST ^property[+].code = #subsumedBy
* #INTOLIST ^property[=].valueCode = #CONDLIST
* #PROBLIST "problem list" "List of problem observations."
* #PROBLIST ^property[0].code = #status
* #PROBLIST ^property[=].valueCode = #active
* #PROBLIST ^property[+].code = #internalId
* #PROBLIST ^property[=].valueCode = #19980
* #PROBLIST ^property[+].code = #subsumedBy
* #PROBLIST ^property[=].valueCode = #CONDLIST
* #RISKLIST "risk factors" "List of risk factor observations."
* #RISKLIST ^property[0].code = #status
* #RISKLIST ^property[=].valueCode = #active
* #RISKLIST ^property[+].code = #internalId
* #RISKLIST ^property[=].valueCode = #19983
* #RISKLIST ^property[+].code = #subsumedBy
* #RISKLIST ^property[=].valueCode = #CONDLIST
* #CONTROLLED "CONTROLLED" "A displayed mark, required to be rendered as \"CONTROLLED\", indicating that the electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Mandatory control marking, which must be displayed on the top portion of each rendered or printed page containing controlled information. Should be displayed at the bottom of each rendered or printed page containing controlled information. Must be displayed on each portion of controlled information at the portion level if portions are uncontrolled unclassified information. Based on CUI Marking Handbook https://www.archives.gov/files/cui/20161206-cui-marking-handbook-v1-1.pdf."
* #CONTROLLED ^property[0].code = #status
* #CONTROLLED ^property[=].valueCode = #active
* #CONTROLLED ^property[+].code = #internalId
* #CONTROLLED ^property[=].valueCode = #24053
* #CONTROLLED ^property[+].code = #subsumedBy
* #CONTROLLED ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUI "CUI" "A displayed mark, required to be rendered as \"CUI\", indicating that the electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Mandatory control marking, which must be displayed on the top portion of each rendered or printed page containing controlled information. Should be displayed at the bottom of each rendered or printed page containing controlled information. Must be displayed on each portion of controlled information at the portion level if portions are uncontrolled unclassified information. Based on CUI Marking Handbook https://www.archives.gov/files/cui/20161206-cui-marking-handbook-v1-1.pdf."
* #CUI ^property[0].code = #status
* #CUI ^property[=].valueCode = #active
* #CUI ^property[+].code = #internalId
* #CUI ^property[=].valueCode = #24054
* #CUI ^property[+].code = #subsumedBy
* #CUI ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUIHLTH "CUI//HLTH" "A displayed mark, required to be rendered as \"CUI//HLTH\", indicating that the electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of healthcare regulation governing CUI Basic marking include HIPAA Unique Identifier provisions 42 USC 1320d-2 note(b) https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf; Title 38 Section 7332 https://www.govinfo.gov/content/pkg/USCODE-2016-title38/pdf/USCODE-2016-title38-partV-chap73-subchapIII-sec7332.pdf; and several sections of 42 CFR Part 2.related to consent and confidentiality, e.g., https://www.govinfo.gov/content/pkg/CFR-2017-title42-vol1/pdf/CFR-2017-title42-vol1-sec2-12.pdf"
* #CUIHLTH ^property[0].code = #status
* #CUIHLTH ^property[=].valueCode = #active
* #CUIHLTH ^property[+].code = #internalId
* #CUIHLTH ^property[=].valueCode = #24055
* #CUIHLTH ^property[+].code = #subsumedBy
* #CUIHLTH ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUIHLTHP "(CUI//HLTH)" "A displayed mark, required to be rendered as \"(CUI//HLTH)\", indicating that a portion of an electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of healthcare regulation governing CUI Basic marking include HIPAA Unique Identifier provisions 42 USC 1320d-2 note(b) https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf; Title 38 Section 7332 https://www.govinfo.gov/content/pkg/USCODE-2016-title38/pdf/USCODE-2016-title38-partV-chap73-subchapIII-sec7332.pdf; and several sections of 42 CFR Part 2.related to consent and confidentiality, e.g., https://www.govinfo.gov/content/pkg/CFR-2017-title42-vol1/pdf/CFR-2017-title42-vol1-sec2-12.pdf"
* #CUIHLTHP ^property[0].code = #status
* #CUIHLTHP ^property[=].valueCode = #active
* #CUIHLTHP ^property[+].code = #internalId
* #CUIHLTHP ^property[=].valueCode = #24056
* #CUIHLTHP ^property[+].code = #subsumedBy
* #CUIHLTHP ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUIP "(CUI)" "A displayed mark, required to be rendered as \"(CUI)\", indicating that a portion of an electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of healthcare regulation governing CUI Basic marking include HIPAA Unique Identifier provisions 42 USC 1320d-2 note(b) https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf; Title 38 Section 7332 https://www.govinfo.gov/content/pkg/USCODE-2016-title38/pdf/USCODE-2016-title38-partV-chap73-subchapIII-sec7332.pdf; and several sections of 42 CFR Part 2.related to consent and confidentiality, e.g., https://www.govinfo.gov/content/pkg/CFR-2017-title42-vol1/pdf/CFR-2017-title42-vol1-sec2-12.pdf"
* #CUIP ^property[0].code = #status
* #CUIP ^property[=].valueCode = #active
* #CUIP ^property[+].code = #internalId
* #CUIP ^property[=].valueCode = #24057
* #CUIP ^property[+].code = #subsumedBy
* #CUIP ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUIPRVCY "CUI//PRVCY" "A displayed mark, required to be rendered as \"CUI//PRVCY\", indicating that the electronic or hardcopy controlled unclassified basic privacy information is private and must be protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of privacy regulation governing CUI Basic marking include 20 CFR 401.100 related to SSA disclosure of personal, program, and non-program information. https://www.govinfo.gov/content/pkg/CFR-2017-title20-vol2/pdf/CFR-2017-title20-vol2-sec401-100.pdf."
* #CUIPRVCY ^property[0].code = #status
* #CUIPRVCY ^property[=].valueCode = #active
* #CUIPRVCY ^property[+].code = #internalId
* #CUIPRVCY ^property[=].valueCode = #24058
* #CUIPRVCY ^property[+].code = #subsumedBy
* #CUIPRVCY ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUIPRVCYP "(CUI//PRVCY)" "A displayed mark, required to be rendered as \"(CUI//PRVCY)\", indicating that a portion of an electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of privacy regulation governing CUI Basic marking include 20 CFR 401.100 related to SSA disclosure of personal, program, and non-program information. https://www.govinfo.gov/content/pkg/CFR-2017-title20-vol2/pdf/CFR-2017-title20-vol2-sec401-100.pdf."
* #CUIPRVCYP ^property[0].code = #status
* #CUIPRVCYP ^property[=].valueCode = #active
* #CUIPRVCYP ^property[+].code = #internalId
* #CUIPRVCYP ^property[=].valueCode = #24059
* #CUIPRVCYP ^property[+].code = #subsumedBy
* #CUIPRVCYP ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUISP-HLTH "CUI//SP-HLTH" "A displayed mark, required to be rendered as \"CUI//SP-HLTH\", indicating that the electronic or hardcopy information is protected at the level of the subset of CUI in which the authorizing law, regulation, or Government-wide policy contains specific handling controls that it requires or permits agencies to use that differ from those for CUI Basic. The CUI Registry indicates which laws, regulations, and Government-wide policies include such specific requirements. CUI Specified controls may be more stringent than, or may simply differ from, those required by CUI Basic; the distinction is that the underlying authority spells out the controls for CUI Specified information and does not for CUI Basic information. CUI Basic controls apply to those aspects of CUI Specified where the authorizing laws, regulations, and Government-wide policies do not provide specific guidance. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of healthcare regulation governing CUI Specified marking include HIPAA Transaction and Code Sets and references the Congressional requirement that HHS promulgate Privacy, and Security rules https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf."
* #CUISP-HLTH ^property[0].code = #status
* #CUISP-HLTH ^property[=].valueCode = #active
* #CUISP-HLTH ^property[+].code = #internalId
* #CUISP-HLTH ^property[=].valueCode = #24060
* #CUISP-HLTH ^property[+].code = #subsumedBy
* #CUISP-HLTH ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUISP-HLTHP "(CUI//SP-HLTH)" "A displayed mark, required to be rendered as \"(CUI//SP-HLTH)\", indicating that a portion of an electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of healthcare regulation governing CUI Specified marking include HIPAA Transaction and Code Sets and references the Congressional requirement that HHS promulgate Privacy, and Security rules https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf"
* #CUISP-HLTHP ^property[0].code = #status
* #CUISP-HLTHP ^property[=].valueCode = #active
* #CUISP-HLTHP ^property[+].code = #internalId
* #CUISP-HLTHP ^property[=].valueCode = #24061
* #CUISP-HLTHP ^property[+].code = #subsumedBy
* #CUISP-HLTHP ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUISP-PRVCY "CUI//SP-PRVCY" "A displayed mark, required to be rendered as \"CUI//SP-PRVCY\", indicating that the electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of privacy regulation governing CUI Specified marking is OMB M-17-12ï‡? This Memorandum sets forth the policy for Federal agencies to prepare for and respond to a breach of personally identifiable information (PII). It includes a framework for assessing and mitigating the risk of harm to individuals potentially affected by a breach, as well as guidance on whether and how to provide notification and services to those individuals. https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/memoranda/2017/m-17-12\\_0.pdf."
* #CUISP-PRVCY ^property[0].code = #status
* #CUISP-PRVCY ^property[=].valueCode = #active
* #CUISP-PRVCY ^property[+].code = #internalId
* #CUISP-PRVCY ^property[=].valueCode = #24062
* #CUISP-PRVCY ^property[+].code = #subsumedBy
* #CUISP-PRVCY ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CUISP-PRVCYP "(CUI//SP-PRVCY)" "A displayed mark, required to be rendered as \"(CUI//SP-PRVCY)\", indicating that a portion of an electronic or hardcopy information is protected at the level of the subset of CUI for which the authorizing law, regulation, or Government-wide policy does not set out specific handling or dissemination controls. Agencies handle CUI Basic according to the uniform set of controls set forth in this part and the CUI Registry. CUI Basic differs from CUI Specified (see definition for CUI Specified), and CUI Basic controls apply whenever CUI Specified ones do not cover the involved CUI. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html.\r\n\r\n*Usage Note:* Examples of privacy regulation governing CUI Specified marking is OMB M-17-12ï‡? This Memorandum sets forth the policy for Federal agencies to prepare for and respond to a breach of personally identifiable information (PII). It includes a framework for assessing and mitigating the risk of harm to individuals potentially affected by a breach, as well as guidance on whether and how to provide notification and services to those individuals. https://www.whitehouse.gov/sites/whitehouse.gov/files/omb/memoranda/2017/m-17-12\\_0.pdf."
* #CUISP-PRVCYP ^property[0].code = #status
* #CUISP-PRVCYP ^property[=].valueCode = #active
* #CUISP-PRVCYP ^property[+].code = #internalId
* #CUISP-PRVCYP ^property[=].valueCode = #24063
* #CUISP-PRVCYP ^property[+].code = #subsumedBy
* #CUISP-PRVCYP ^property[=].valueCode = #ControlledUnclassifiedInformation
* #UUI "(U)" "A displayed mark, required to be rendered as \"(U)\", indicating that a portion of an electronic or hardcopy information is neither Executive Order 13556 nor classified information authorities cover as protected. Although this information is not controlled or classified, agencies must still handle it in accordance with Federal Information Security Modernization Act (FISMA) requirements. From CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html\r\n\r\n*Usage Note:* Regulatory Source: 32 CFR §  2002.20 Marking. Federal Register Page 63344 63344 (ii) Authorized holders permitted to designate CUI must portion mark both CUI and uncontrolled unclassified portions.\r\n\r\nCUI Marking Handbook https://www.archives.gov/files/cui/20161206-cui-marking-handbook-v1-1.pdf\r\n\r\nCUI Portion Marking: Portion marking of CUI is optional in a fully unclassified document, but is permitted and encouraged to facilitate information sharing and proper handling of the information. Agency heads may approve the required use of CUI Portion marking on all CUI generated within their agency. As such, users should consult their agency CUI policy when creating CUI documents. When CUI Portion Markings are used and a portion does not contain CUI a \"U\" is placed in parentheses to indicate that the portion contains Uncontrolled Unclassified Information. (Page 14)\r\n\r\nCUI Portion Markings are placed at the beginning of the portion to which they apply and must be used throughout the entire document. They are presented in all capital letters and separated as indicated in this handbook and the CUI Registry. The presence of EVEN ONE item of CUI in a document requires CUI marking of that document. Because of this, CUI Portion Markings can be of great assistance in determining if a document contains CUI and therefore must be marked as such. Remember: When portion markings are used and any portion does not contain CUI, a \"(U)\" is placed in front of that portion to indicate that it contains Uncontrolled - or non-CUI - Unclassified Information. (Page 15)"
* #UUI ^property[0].code = #status
* #UUI ^property[=].valueCode = #active
* #UUI ^property[+].code = #internalId
* #UUI ^property[=].valueCode = #24064
* #UUI ^property[+].code = #subsumedBy
* #UUI ^property[=].valueCode = #ControlledUnclassifiedInformation
* #CPLYCC "comply with confidentiality code" "Custodian security system must retrieve, evaluate, and comply with the information handling directions of the Confidentiality Code associated with an information target.\r\n\r\n*Usage Note:* CPLYCC may be used as a security label code to inform senders and receivers of information tagged with a Confidentiality Code to comply with applicable level of protection required by the assigned confidentiality code."
* #CPLYCC ^property[0].code = #status
* #CPLYCC ^property[=].valueCode = #active
* #CPLYCC ^property[+].code = #internalId
* #CPLYCC ^property[=].valueCode = #23378
* #CPLYCC ^property[+].code = #subsumedBy
* #CPLYCC ^property[=].valueCode = #CPLYPOL
* #CPLYCD "comply with consent directive" "Custodian security system must retrieve, evaluate, and comply with applicable information subject consent directives.\r\n\r\n*Usage Note:* CPLYCD may be used as a security label code to inform senders and receivers of information tagged with an ActCode\\_ActPolicyType\\_ActConsent code or an ActCode\\_ActPolicyType\\_ActPrivacyPolicy\\_ActConsentDirective code to comply with applicable consent directives."
* #CPLYCD ^property[0].code = #status
* #CPLYCD ^property[=].valueCode = #active
* #CPLYCD ^property[+].code = #internalId
* #CPLYCD ^property[=].valueCode = #23379
* #CPLYCD ^property[+].code = #subsumedBy
* #CPLYCD ^property[=].valueCode = #CPLYPOL
* #CPLYCUI "comply with controlled unclassified information policy" "Custodian security system must retrieve, evaluate, and comply with applicable Controlled Unclassified Information (CUI) policies associated with the target information.\r\n\r\n*Usage Note:* In the US, CPLYCUI may be used as a security label code to inform recipients of information designated by a US Federal Agency as Controlled Unclassified Information (CUI) to comply with the applicable laws, regulations, executive orders, and other guidances, such as included in DURSAs, to persist, mark, and enforce required CUI controls\r\n\r\nBackground:\r\n\r\nIn accordance with US 32 CFR Part 2002 and US Executive Order 13556 Controlled Unclassified Information, US Federal Agencies and their contractors are charged with classifying and marking certain information they create as Controlled Unclassified Information (CUI).\r\n\r\nThe following definitions, which are provided for context, are based on terms defined by the CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html\r\n\r\n *  CUI is defined as \"information in any form that the Government creates or possesses, or that an entity creates or possesses for or on behalf of the Government, that a law, regulation, or Government-wide policy requires or permits an agency to handle using safeguarding or dissemination controls.\"\r\n *  Designating CUI occurs when an authorized holder, consistent with 32 CFR Part 2002 and the CUI Registry, determines that a specific item of information falls into a CUI category or subcategory.\r\n *  The designating agency is the executive branch agency that designates or approves the designation of a specific item of information as CUI.\r\n *  The authorized holder who designates the CUI must make recipients aware of the information's CUI status when disseminating that information.\r\n *  • Disseminating occurs when authorized holders provide access, transmit, or transfer CUI to other authorized holders through any means, whether internal or external to the agency.\r\n\r\nOnce designated as CUI, US Federal Agencies and their contractors must assign CUI marks as prescribed by the National Archives and Records Administration (NARA) CUI Registry, and display marks as prescribed by the CUI Marking Handbook.\r\n\r\nCUI markings must be displayed on hard copy, on containers, electronic media, and to end users for IT systems.\r\n\r\nWhen HL7 content is designated as CUI, these computable markings can be interoperably conveyed using HL7 security label CUI tags, and may be included in HL7 text and narrative elements as human readable markings.\r\n\r\n**Impact of CUI markings:**\r\n\r\nCUI Custodians must enforce CUI security controls per applicable CUI policies. Federal agencies and their contractors must adhere to FISMA and NIST SP 800-53 security controls. Custodians, who are not Federal agencies or agency contractors, and are receivers of CUI, must adhere to NIST SP 800-171 security controls and those dictated by the Authorities indicated by the assigned CUI markings.\r\n\r\nFor most participants in US healthcare information exchange, including Federal Agencies and their contractors, additional controls are required by HIPAA Security standards for health information US 42 USC 1320d-2(d)(2) https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf\r\n\r\nFederal Agencies and their contractors may be the CUI classifier of original CUI content; or a CUI derivative classifier, which reclassifies CUI content that has been aggregated with other CUI or Unclassified Uncontrolled Information (U) or dissembled from a larger CUI content; or declassifiers, depending on the designating agency's policies.\r\n\r\nApplicable CUI policies include the following and any future applicable updates to policies or laws related to CUI:\r\n\r\n *  Executive Order 13556 https://www.federalregister.gov/articles/2010/11/09/2010-28360/controlled-unclassified-information\r\n *  US 32 CFR Part 2002 https://www.govinfo.gov/content/pkg/CFR-2017-title32-vol6/pdf/CFR-2017-title32-vol6-part2002.pdf\r\n *  NIST SP 800-171 https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171r1.pdf\r\n *  NIST SP 800-171A https://doi.org/10.6028/NIST.SP.800-171A\r\n *  CUI Marking Handbook https://www.archives.gov/files/cui/20161206-cui-marking-handbook-v1-1.pdf\r\n *  CUI Registry - Health Information Category https://www.archives.gov/cui/registry/category-detail/health-info\r\n *  CUI Registry: Limited Dissemination Controls https://www.archives.gov/cui/registry/limited-dissemination\r\n *  CUI Policy and Guidance https://www.archives.gov/cui/registry/policy-guidance"
* #CPLYCUI ^property[0].code = #status
* #CPLYCUI ^property[=].valueCode = #active
* #CPLYCUI ^property[+].code = #internalId
* #CPLYCUI ^property[=].valueCode = #24131
* #CPLYCUI ^property[+].code = #subsumedBy
* #CPLYCUI ^property[=].valueCode = #CPLYPOL
* #CPLYJPP "comply with jurisdictional privacy policy" "Custodian security system must retrieve, evaluate, and comply with applicable jurisdictional privacy policies associated with the target information.\r\n\r\n*Usage Note:* CPLYJPP may be used as a security label code to inform senders and receivers of information tagged with an ActCode\\_ActPolicyType\\_ActPrivacyPolicy\\_ActPrivacyLaw code or an ActCode\\_ActPolicyType\\_ActInformationPolicy.JurisIP code to comply with applicable jurisdictional privacy policy."
* #CPLYJPP ^property[0].code = #status
* #CPLYJPP ^property[=].valueCode = #active
* #CPLYJPP ^property[+].code = #internalId
* #CPLYJPP ^property[=].valueCode = #23380
* #CPLYJPP ^property[+].code = #subsumedBy
* #CPLYJPP ^property[=].valueCode = #CPLYPOL
* #CPLYJSP "comply with jurisdictional security policy" "Custodian security system must retrieve, evaluate, and comply with applicable jurisdictional security policies associated with the target information.\r\n\r\n*Usage Note:* CPLYJSP may be used as a security label code to inform senders and receivers of information tagged with an ActCode\\_ActPolicyType.SecurityPolicy code to comply with applicable jurisdictional security policy."
* #CPLYJSP ^property[0].code = #status
* #CPLYJSP ^property[=].valueCode = #active
* #CPLYJSP ^property[+].code = #internalId
* #CPLYJSP ^property[=].valueCode = #24130
* #CPLYJSP ^property[+].code = #subsumedBy
* #CPLYJSP ^property[=].valueCode = #CPLYPOL
* #CPLYOPP "comply with organizational privacy policy" "Custodian security system must retrieve, evaluate, and comply with applicable organizational privacy policies associated with the target information.\r\n\r\n*Usage Note:* CPLYOPP may be used as a security label code to inform senders and receivers of information tagged with an ActCode\\_ActPolicyType\\_ActInformationPolicy.OrgIP code to comply with applicable organizational privacy policy."
* #CPLYOPP ^property[0].code = #status
* #CPLYOPP ^property[=].valueCode = #active
* #CPLYOPP ^property[+].code = #internalId
* #CPLYOPP ^property[=].valueCode = #23381
* #CPLYOPP ^property[+].code = #subsumedBy
* #CPLYOPP ^property[=].valueCode = #CPLYPOL
* #CPLYOSP "comply with organizational security policy" "Custodian security system must retrieve, evaluate, and comply with the organizational security policies associated with the target information.\r\n\r\n*Usage Note:* CPLYOSP may be used as a security label code to inform senders and receivers of information tagged with an ActCode\\_ActPolicyType.SecurityPolicy code to comply with applicable organizational security policy."
* #CPLYOSP ^property[0].code = #status
* #CPLYOSP ^property[=].valueCode = #active
* #CPLYOSP ^property[+].code = #internalId
* #CPLYOSP ^property[=].valueCode = #23382
* #CPLYOSP ^property[+].code = #subsumedBy
* #CPLYOSP ^property[=].valueCode = #CPLYPOL
* #_DEADrugSchedule "DEADrugSchedule" "DEA schedule for a drug."
* #_DEADrugSchedule ^property[0].code = #notSelectable
* #_DEADrugSchedule ^property[=].valueBoolean = true
* #_DEADrugSchedule ^property[+].code = #status
* #_DEADrugSchedule ^property[=].valueCode = #retired
* #_DEADrugSchedule ^property[+].code = #internalId
* #_DEADrugSchedule ^property[=].valueCode = #20913
* #_DEADrugSchedule ^property[+].code = #subsumedBy
* #_DEADrugSchedule ^property[=].valueCode = #CTLSUB
* #BR "breikost (GE)" "A diet exclusively composed of oatmeal, semolina, or rice, to be extremely easy to eat and digest."
* #BR ^property[0].code = #status
* #BR ^property[=].valueCode = #active
* #BR ^property[+].code = #internalId
* #BR ^property[=].valueCode = #10379
* #BR ^property[+].code = #subsumedBy
* #BR ^property[=].valueCode = #DIET
* #DM "diabetes mellitus diet" "A diet that uses carbohydrates sparingly. Typically with a restriction in daily energy content (e.g. 1600-2000 kcal)."
* #DM ^property[0].code = #status
* #DM ^property[=].valueCode = #active
* #DM ^property[+].code = #internalId
* #DM ^property[=].valueCode = #10383
* #DM ^property[+].code = #subsumedBy
* #DM ^property[=].valueCode = #DIET
* #FAST "fasting" "No enteral intake of foot or liquids whatsoever, no smoking. Typically 6 to 8 hours before anesthesia."
* #FAST ^property[0].code = #status
* #FAST ^property[=].valueCode = #active
* #FAST ^property[+].code = #internalId
* #FAST ^property[=].valueCode = #10382
* #FAST ^property[+].code = #subsumedBy
* #FAST ^property[=].valueCode = #DIET
* #FORMULA "formula diet" "A diet consisting of a formula feeding, either for an infant or an adult, to provide nutrition either orally or through the gastrointestinal tract via tube, catheter or stoma."
* #FORMULA ^property[0].code = #status
* #FORMULA ^property[=].valueCode = #active
* #FORMULA ^property[+].code = #internalId
* #FORMULA ^property[=].valueCode = #23529
* #FORMULA ^property[+].code = #subsumedBy
* #FORMULA ^property[=].valueCode = #DIET
* #GF "gluten free" "Gluten free diet for celiac disease."
* #GF ^property[0].code = #status
* #GF ^property[=].valueCode = #active
* #GF ^property[+].code = #internalId
* #GF ^property[=].valueCode = #10390
* #GF ^property[+].code = #subsumedBy
* #GF ^property[=].valueCode = #DIET
* #LF "low fat" "A diet low in fat, particularly to patients with hepatic diseases."
* #LF ^property[0].code = #status
* #LF ^property[=].valueCode = #active
* #LF ^property[+].code = #internalId
* #LF ^property[=].valueCode = #10386
* #LF ^property[+].code = #subsumedBy
* #LF ^property[=].valueCode = #DIET
* #LP "low protein" "A low protein diet for patients with renal failure."
* #LP ^property[0].code = #status
* #LP ^property[=].valueCode = #active
* #LP ^property[+].code = #internalId
* #LP ^property[=].valueCode = #10389
* #LP ^property[+].code = #subsumedBy
* #LP ^property[=].valueCode = #DIET
* #LQ "liquid" "A strictly liquid diet, that can be fully absorbed in the intestine, and therefore may not contain fiber. Used before enteral surgeries."
* #LQ ^property[0].code = #status
* #LQ ^property[=].valueCode = #active
* #LQ ^property[+].code = #internalId
* #LQ ^property[=].valueCode = #10380
* #LQ ^property[+].code = #subsumedBy
* #LQ ^property[=].valueCode = #DIET
* #LS "low sodium" "A diet low in sodium for patients with congestive heart failure and/or renal failure."
* #LS ^property[0].code = #status
* #LS ^property[=].valueCode = #active
* #LS ^property[+].code = #internalId
* #LS ^property[=].valueCode = #10388
* #LS ^property[+].code = #subsumedBy
* #LS ^property[=].valueCode = #DIET
* #N "normal diet" "A normal diet, i.e. no special preparations or restrictions for medical reasons. This is notwithstanding any preferences the patient might have regarding special foods, such as vegetarian, kosher, etc."
* #N ^property[0].code = #status
* #N ^property[=].valueCode = #active
* #N ^property[+].code = #internalId
* #N ^property[=].valueCode = #10377
* #N ^property[+].code = #subsumedBy
* #N ^property[=].valueCode = #DIET
* #NF "no fat" "A no fat diet for acute hepatic diseases."
* #NF ^property[0].code = #status
* #NF ^property[=].valueCode = #active
* #NF ^property[+].code = #internalId
* #NF ^property[=].valueCode = #10387
* #NF ^property[+].code = #subsumedBy
* #NF ^property[=].valueCode = #DIET
* #PAF "phenylalanine free" "Phenylketonuria diet."
* #PAF ^property[0].code = #status
* #PAF ^property[=].valueCode = #active
* #PAF ^property[+].code = #internalId
* #PAF ^property[=].valueCode = #10391
* #PAF ^property[+].code = #subsumedBy
* #PAF ^property[=].valueCode = #DIET
* #PAR "parenteral" "Patient is supplied with parenteral nutrition, typically described in terms of i.v. medications."
* #PAR ^property[0].code = #status
* #PAR ^property[=].valueCode = #active
* #PAR ^property[+].code = #internalId
* #PAR ^property[=].valueCode = #10385
* #PAR ^property[+].code = #subsumedBy
* #PAR ^property[=].valueCode = #DIET
* #RD "reduction diet" "A diet that seeks to reduce body fat, typically low energy content (800-1600 kcal)."
* #RD ^property[0].code = #status
* #RD ^property[=].valueCode = #active
* #RD ^property[+].code = #internalId
* #RD ^property[=].valueCode = #10384
* #RD ^property[+].code = #subsumedBy
* #RD ^property[=].valueCode = #DIET
* #SCH "schonkost (GE)" "A diet that avoids ingredients that might cause digestion problems, e.g., avoid excessive fat, avoid too much fiber (cabbage, peas, beans)."
* #SCH ^property[0].code = #status
* #SCH ^property[=].valueCode = #active
* #SCH ^property[+].code = #internalId
* #SCH ^property[=].valueCode = #10378
* #SCH ^property[+].code = #subsumedBy
* #SCH ^property[=].valueCode = #DIET
* #SUPPLEMENT "nutritional supplement" "A diet that is not intended to be complete but is added to other diets."
* #SUPPLEMENT ^property[0].code = #status
* #SUPPLEMENT ^property[=].valueCode = #active
* #SUPPLEMENT ^property[+].code = #internalId
* #SUPPLEMENT ^property[=].valueCode = #23530
* #SUPPLEMENT ^property[+].code = #subsumedBy
* #SUPPLEMENT ^property[=].valueCode = #DIET
* #T "tea only" "This is not really a diet, since it contains little nutritional value, but is essentially just water. Used before coloscopy examinations."
* #T ^property[0].code = #status
* #T ^property[=].valueCode = #active
* #T ^property[+].code = #internalId
* #T ^property[=].valueCode = #10381
* #T ^property[+].code = #subsumedBy
* #T ^property[=].valueCode = #DIET
* #VLI "low valin, leucin, isoleucin" "Diet with low content of the amino-acids valin, leucin, and isoleucin, for \"maple syrup disease.\""
* #VLI ^property[0].code = #status
* #VLI ^property[=].valueCode = #active
* #VLI ^property[+].code = #internalId
* #VLI ^property[=].valueCode = #10392
* #VLI ^property[+].code = #subsumedBy
* #VLI ^property[=].valueCode = #DIET
* #AUTO-HIGH "Auto-High Dilution" "The dilution of a sample performed by automated equipment. The value is specified by the equipment"
* #AUTO-HIGH ^property[0].code = #status
* #AUTO-HIGH ^property[=].valueCode = #active
* #AUTO-HIGH ^property[+].code = #internalId
* #AUTO-HIGH ^property[=].valueCode = #13958
* #AUTO-HIGH ^property[+].code = #subsumedBy
* #AUTO-HIGH ^property[=].valueCode = #DILUTION
* #AUTO-LOW "Auto-Low Dilution" "The dilution of a sample performed by automated equipment. The value is specified by the equipment"
* #AUTO-LOW ^property[0].code = #status
* #AUTO-LOW ^property[=].valueCode = #active
* #AUTO-LOW ^property[+].code = #internalId
* #AUTO-LOW ^property[=].valueCode = #13959
* #AUTO-LOW ^property[+].code = #subsumedBy
* #AUTO-LOW ^property[=].valueCode = #DILUTION
* #PRE "Pre-Dilution" "The dilution of the specimen made prior to being loaded onto analytical equipment"
* #PRE ^property[0].code = #status
* #PRE ^property[=].valueCode = #active
* #PRE ^property[+].code = #internalId
* #PRE ^property[=].valueCode = #13961
* #PRE ^property[+].code = #subsumedBy
* #PRE ^property[=].valueCode = #DILUTION
* #RERUN "Rerun Dilution" "The value of the dilution of a sample after it had been analyzed at a prior dilution value"
* #RERUN ^property[0].code = #status
* #RERUN ^property[=].valueCode = #active
* #RERUN ^property[+].code = #internalId
* #RERUN ^property[=].valueCode = #13960
* #RERUN ^property[+].code = #subsumedBy
* #RERUN ^property[=].valueCode = #DILUTION
* #DNAINT "Drug Non-Allergy Intolerance" "Hypersensitivity to an agent caused by a mechanism other than an immunologic response to an initial exposure"
* #DNAINT ^property[0].code = #status
* #DNAINT ^property[=].valueCode = #active
* #DNAINT ^property[+].code = #internalId
* #DNAINT ^property[=].valueCode = #21507
* #DNAINT ^property[+].code = #subsumedBy
* #DNAINT ^property[=].valueCode = #DINT
* #DNAINT ^property[+].code = #subsumedBy
* #DNAINT ^property[=].valueCode = #NAINT
* #CANPRG "women's cancer detection program" "**Definition:** A program that provides low-income, uninsured, and underserved women access to timely, high-quality screening and diagnostic services, to detect breast and cervical cancer at the earliest stages.\r\n\r\n**Example:** To improve women's access to screening for breast and cervical cancers, Congress passed the Breast and Cervical Cancer Mortality Prevention Act of 1990, which guided CDC in creating the National Breast and Cervical Cancer Early Detection Program (NBCCEDP), which provides access to critical breast and cervical cancer screening services for underserved women in the United States. An estimated 7 to 10% of U.S. women of screening age are eligible to receive NBCCEDP services. Federal guidelines establish an eligibility baseline to direct services to uninsured and underinsured women at or below 250% of federal poverty level; ages 18 to 64 for cervical screening; ages 40 to 64 for breast screening."
* #CANPRG ^property[0].code = #status
* #CANPRG ^property[=].valueCode = #active
* #CANPRG ^property[+].code = #internalId
* #CANPRG ^property[=].valueCode = #22134
* #CANPRG ^property[+].code = #subsumedBy
* #CANPRG ^property[=].valueCode = #DISEASEPRG
* #ENDRENAL "end renal program" "**Definition:** A public or government program that administers publicly funded coverage of kidney dialysis and kidney transplant services.\r\n\r\nExample: In the U.S., the Medicare End-stage Renal Disease program (ESRD), the National Kidney Foundation (NKF) American Kidney Fund (AKF) The Organ Transplant Fund."
* #ENDRENAL ^property[0].code = #status
* #ENDRENAL ^property[=].valueCode = #active
* #ENDRENAL ^property[+].code = #internalId
* #ENDRENAL ^property[=].valueCode = #22135
* #ENDRENAL ^property[+].code = #subsumedBy
* #ENDRENAL ^property[=].valueCode = #DISEASEPRG
* #HIVAIDS "HIV-AIDS program" "**Definition:** Government administered and funded HIV-AIDS program for beneficiaries meeting financial and health status criteria. Administration, funding levels, eligibility criteria, covered benefits, provider types, and financial participation are typically set by a regulatory process. Payer responsibilities for administering the program may be delegated to contractors.\r\n\r\n**Example:** In the U.S., the Ryan White program, which is administered by the Health Resources and Services Administration."
* #HIVAIDS ^property[0].code = #status
* #HIVAIDS ^property[=].valueCode = #active
* #HIVAIDS ^property[+].code = #internalId
* #HIVAIDS ^property[=].valueCode = #22136
* #HIVAIDS ^property[+].code = #subsumedBy
* #HIVAIDS ^property[=].valueCode = #DISEASEPRG
* #DOSECOND "dosage-condition alert" "**Description:**Proposed dosage is inappropriate due to patient's medical condition."
* #DOSECOND ^property[0].code = #status
* #DOSECOND ^property[=].valueCode = #active
* #DOSECOND ^property[+].code = #internalId
* #DOSECOND ^property[=].valueCode = #21671
* #DOSECOND ^property[+].code = #subsumedBy
* #DOSECOND ^property[=].valueCode = #DOSE
* #DOSEDUR "Dose-Duration Alert" "Proposed length of therapy differs from standard practice."
* #DOSEDUR ^property[0].code = #status
* #DOSEDUR ^property[=].valueCode = #active
* #DOSEDUR ^property[+].code = #internalId
* #DOSEDUR ^property[=].valueCode = #16684
* #DOSEDUR ^property[+].code = #subsumedBy
* #DOSEDUR ^property[=].valueCode = #DOSE
* #DOSEH "High Dose Alert" "Proposed dosage exceeds standard practice"
* #DOSEH ^property[0].code = #status
* #DOSEH ^property[=].valueCode = #active
* #DOSEH ^property[+].code = #internalId
* #DOSEH ^property[=].valueCode = #16681
* #DOSEH ^property[+].code = #subsumedBy
* #DOSEH ^property[=].valueCode = #DOSE
* #DOSEIVL "Dose-Interval Alert" "Proposed dosage interval/timing differs from standard practice"
* #DOSEIVL ^property[0].code = #status
* #DOSEIVL ^property[=].valueCode = #active
* #DOSEIVL ^property[+].code = #internalId
* #DOSEIVL ^property[=].valueCode = #16683
* #DOSEIVL ^property[+].code = #subsumedBy
* #DOSEIVL ^property[=].valueCode = #DOSE
* #DOSEL "Low Dose Alert" "Proposed dosage is below suggested therapeutic levels"
* #DOSEL ^property[0].code = #status
* #DOSEL ^property[=].valueCode = #active
* #DOSEL ^property[+].code = #internalId
* #DOSEL ^property[=].valueCode = #16682
* #DOSEL ^property[+].code = #subsumedBy
* #DOSEL ^property[=].valueCode = #DOSE
* #MDOSE "maximum dosage reached" "**Description:**The maximum quantity of this drug allowed to be administered within a particular time-range (month, year, lifetime) has been reached or exceeded."
* #MDOSE ^property[0].code = #status
* #MDOSE ^property[=].valueCode = #active
* #MDOSE ^property[+].code = #internalId
* #MDOSE ^property[=].valueCode = #21698
* #MDOSE ^property[+].code = #subsumedBy
* #MDOSE ^property[=].valueCode = #DOSE
* #DOSEDURH "Dose-Duration High Alert" "Proposed length of therapy is longer than standard practice"
* #DOSEDURH ^property[0].code = #status
* #DOSEDURH ^property[=].valueCode = #active
* #DOSEDURH ^property[+].code = #internalId
* #DOSEDURH ^property[=].valueCode = #16686
* #DOSEDURH ^property[+].code = #subsumedBy
* #DOSEDURH ^property[=].valueCode = #DOSEDUR
* #DOSEDURL "Dose-Duration Low Alert" "Proposed length of therapy is shorter than that necessary for therapeutic effect"
* #DOSEDURL ^property[0].code = #status
* #DOSEDURL ^property[=].valueCode = #active
* #DOSEDURL ^property[+].code = #internalId
* #DOSEDURL ^property[=].valueCode = #16685
* #DOSEDURL ^property[+].code = #subsumedBy
* #DOSEDURL ^property[=].valueCode = #DOSEDUR
* #DOSEDURHIND "Dose-Duration High for Indication Alert" "Proposed length of therapy is longer than standard practice for the identified indication or diagnosis"
* #DOSEDURHIND ^property[0].code = #status
* #DOSEDURHIND ^property[=].valueCode = #active
* #DOSEDURHIND ^property[+].code = #internalId
* #DOSEDURHIND ^property[=].valueCode = #17782
* #DOSEDURHIND ^property[+].code = #subsumedBy
* #DOSEDURHIND ^property[=].valueCode = #DOSEDURH
* #DOSEDURLIND "Dose-Duration Low for Indication Alert" "Proposed length of therapy is shorter than standard practice for the identified indication or diagnosis"
* #DOSEDURLIND ^property[0].code = #status
* #DOSEDURLIND ^property[=].valueCode = #active
* #DOSEDURLIND ^property[+].code = #internalId
* #DOSEDURLIND ^property[=].valueCode = #17783
* #DOSEDURLIND ^property[+].code = #subsumedBy
* #DOSEDURLIND ^property[=].valueCode = #DOSEDURL
* #DOSEHIND "High Dose for Indication Alert"
* #DOSEHIND ^property[0].code = #status
* #DOSEHIND ^property[=].valueCode = #active
* #DOSEHIND ^property[+].code = #internalId
* #DOSEHIND ^property[=].valueCode = #17785
* #DOSEHIND ^property[+].code = #subsumedBy
* #DOSEHIND ^property[=].valueCode = #DOSEH
* #DOSEHINDSA "High Dose for Height/Surface Area Alert" "Proposed dosage exceeds standard practice for the patient's height or body surface area"
* #DOSEHINDSA ^property[0].code = #status
* #DOSEHINDSA ^property[=].valueCode = #active
* #DOSEHINDSA ^property[+].code = #internalId
* #DOSEHINDSA ^property[=].valueCode = #17787
* #DOSEHINDSA ^property[+].code = #subsumedBy
* #DOSEHINDSA ^property[=].valueCode = #DOSEH
* #DOSEHINDW "High Dose for Weight Alert" "Proposed dosage exceeds standard practice for the patient's weight"
* #DOSEHINDW ^property[0].code = #status
* #DOSEHINDW ^property[=].valueCode = #active
* #DOSEHINDW ^property[+].code = #internalId
* #DOSEHINDW ^property[=].valueCode = #17786
* #DOSEHINDW ^property[+].code = #subsumedBy
* #DOSEHINDW ^property[=].valueCode = #DOSEH
* #DOSEIVLIND "Dose-Interval for Indication Alert" "Proposed dosage interval/timing differs from standard practice for the identified indication or diagnosis"
* #DOSEIVLIND ^property[0].code = #status
* #DOSEIVLIND ^property[=].valueCode = #active
* #DOSEIVLIND ^property[+].code = #internalId
* #DOSEIVLIND ^property[=].valueCode = #17784
* #DOSEIVLIND ^property[+].code = #subsumedBy
* #DOSEIVLIND ^property[=].valueCode = #DOSEIVL
* #DOSELIND "Low Dose for Indication Alert"
* #DOSELIND ^property[0].code = #status
* #DOSELIND ^property[=].valueCode = #active
* #DOSELIND ^property[+].code = #internalId
* #DOSELIND ^property[=].valueCode = #17789
* #DOSELIND ^property[+].code = #subsumedBy
* #DOSELIND ^property[=].valueCode = #DOSEL
* #DOSELINDSA "Low Dose for Height/Surface Area Alert" "Proposed dosage is below suggested therapeutic levels for the patient's height or body surface area"
* #DOSELINDSA ^property[0].code = #status
* #DOSELINDSA ^property[=].valueCode = #active
* #DOSELINDSA ^property[+].code = #internalId
* #DOSELINDSA ^property[=].valueCode = #17791
* #DOSELINDSA ^property[+].code = #subsumedBy
* #DOSELINDSA ^property[=].valueCode = #DOSEL
* #DOSELINDW "Low Dose for Weight Alert" "Proposed dosage is below suggested therapeutic levels for the patient's weight"
* #DOSELINDW ^property[0].code = #status
* #DOSELINDW ^property[=].valueCode = #active
* #DOSELINDW ^property[+].code = #internalId
* #DOSELINDW ^property[=].valueCode = #17790
* #DOSELINDW ^property[+].code = #subsumedBy
* #DOSELINDW ^property[=].valueCode = #DOSEL
* #DUPTHPCLS "duplicate therapeutic alass alert" "**Description:**The proposed therapy appears to have the same intended therapeutic benefit as an existing therapy, though the specific mechanisms of action vary."
* #DUPTHPCLS ^property[0].code = #status
* #DUPTHPCLS ^property[=].valueCode = #active
* #DUPTHPCLS ^property[+].code = #internalId
* #DUPTHPCLS ^property[=].valueCode = #21667
* #DUPTHPCLS ^property[+].code = #subsumedBy
* #DUPTHPCLS ^property[=].valueCode = #DUPTHPY
* #DUPTHPGEN "duplicate generic alert" "**Description:**The proposed therapy appears to have the same intended therapeutic benefit as an existing therapy and uses the same mechanisms of action as the existing therapy."
* #DUPTHPGEN ^property[0].code = #status
* #DUPTHPGEN ^property[=].valueCode = #active
* #DUPTHPGEN ^property[+].code = #internalId
* #DUPTHPGEN ^property[=].valueCode = #21668
* #DUPTHPGEN ^property[+].code = #subsumedBy
* #DUPTHPGEN ^property[=].valueCode = #DUPTHPY
* #ENAINT "Environmental Non-Allergy Intolerance" "Hypersensitivity to an agent caused by a mechanism other than an immunologic response to an initial exposure"
* #ENAINT ^property[0].code = #status
* #ENAINT ^property[=].valueCode = #active
* #ENAINT ^property[+].code = #internalId
* #ENAINT ^property[=].valueCode = #21509
* #ENAINT ^property[+].code = #subsumedBy
* #ENAINT ^property[=].valueCode = #EINT
* #ENAINT ^property[+].code = #subsumedBy
* #ENAINT ^property[=].valueCode = #NAINT
* #SO "Script Owing" "An emergency supply where the expectation is that a formal order authorizing the supply will be provided at a later date."
* #SO ^property[0].code = #status
* #SO ^property[=].valueCode = #active
* #SO ^property[+].code = #internalId
* #SO ^property[=].valueCode = #16221
* #SO ^property[+].code = #subsumedBy
* #SO ^property[=].valueCode = #EM
* #21 "authorization confirmed" "**Description:** Indicates that the permissions have been externally verified and the request should be processed."
* #21 ^property[0].code = #status
* #21 ^property[=].valueCode = #active
* #21 ^property[+].code = #internalId
* #21 ^property[=].valueCode = #22812
* #21 ^property[+].code = #subsumedBy
* #21 ^property[=].valueCode = #EMAUTH
* #ENCRYPTR "encrypt at rest" "Custodian system must render information unreadable and unusable by algorithmically transforming plaintext into ciphertext when \"at rest\" or in storage."
* #ENCRYPTR ^property[0].code = #status
* #ENCRYPTR ^property[=].valueCode = #active
* #ENCRYPTR ^property[+].code = #internalId
* #ENCRYPTR ^property[=].valueCode = #23386
* #ENCRYPTR ^property[+].code = #subsumedBy
* #ENCRYPTR ^property[=].valueCode = #ENCRYPT
* #ENCRYPTT "encrypt in transit" "Custodian system must render information unreadable and unusable by algorithmically transforming plaintext into ciphertext while \"in transit\" or being transported by any means."
* #ENCRYPTT ^property[0].code = #status
* #ENCRYPTT ^property[=].valueCode = #active
* #ENCRYPTT ^property[+].code = #internalId
* #ENCRYPTT ^property[=].valueCode = #23387
* #ENCRYPTT ^property[+].code = #subsumedBy
* #ENCRYPTT ^property[=].valueCode = #ENCRYPT
* #ENCRYPTU "encrypt in use" "Custodian system must render information unreadable and unusable by algorithmically transforming plaintext into ciphertext while in use such that operations permitted on the target information are limited by the license granted to the end user."
* #ENCRYPTU ^property[0].code = #status
* #ENCRYPTU ^property[=].valueCode = #active
* #ENCRYPTU ^property[+].code = #internalId
* #ENCRYPTU ^property[=].valueCode = #23388
* #ENCRYPTU ^property[+].code = #subsumedBy
* #ENCRYPTU ^property[=].valueCode = #ENCRYPT
* #FFC "First Fill - Complete" "A first fill where the quantity supplied is equal to one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a complete fill would be for the full 90 tablets)."
* #FFC ^property[0].code = #status
* #FFC ^property[=].valueCode = #active
* #FFC ^property[+].code = #internalId
* #FFC ^property[=].valueCode = #16210
* #FFC ^property[+].code = #subsumedBy
* #FFC ^property[=].valueCode = #FF
* #FFP "First Fill - Part Fill" "A first fill where the quantity supplied is less than one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a partial fill might be for only 30 tablets.)"
* #FFP ^property[0].code = #status
* #FFP ^property[=].valueCode = #active
* #FFP ^property[+].code = #internalId
* #FFP ^property[=].valueCode = #16211
* #FFP ^property[+].code = #subsumedBy
* #FFP ^property[=].valueCode = #FF
* #FFPS "first fill, part fill, partial strength" "A first fill where the quantity supplied is less than one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a partial fill might be for only 30 tablets.) and also where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)"
* #FFPS ^property[0].code = #status
* #FFPS ^property[=].valueCode = #active
* #FFPS ^property[+].code = #internalId
* #FFPS ^property[=].valueCode = #21817
* #FFPS ^property[+].code = #subsumedBy
* #FFPS ^property[=].valueCode = #FF
* #FFPS ^property[+].code = #subsumedBy
* #FFPS ^property[=].valueCode = #FFS
* #FFPS ^property[+].code = #subsumedBy
* #FFPS ^property[=].valueCode = #FFSS
* #FFSS "first fill, partial strength" "A first fill where the strength supplied is less than the ordered strength. (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #FFSS ^property[0].code = #status
* #FFSS ^property[=].valueCode = #active
* #FFSS ^property[+].code = #internalId
* #FFSS ^property[=].valueCode = #23017
* #FFSS ^property[+].code = #subsumedBy
* #FFSS ^property[=].valueCode = #FF
* #TF "Trial Fill" "A fill where a small portion is provided to allow for determination of the therapy effectiveness and patient tolerance."
* #TF ^property[0].code = #status
* #TF ^property[=].valueCode = #active
* #TF ^property[+].code = #internalId
* #TF ^property[=].valueCode = #16212
* #TF ^property[+].code = #subsumedBy
* #TF ^property[=].valueCode = #FF
* #FFCS "first fill complete, partial strength" "A first fill where the quantity supplied is equal to one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a complete fill would be for the full 90 tablets) and also where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #FFCS ^property[0].code = #status
* #FFCS ^property[=].valueCode = #active
* #FFCS ^property[+].code = #internalId
* #FFCS ^property[=].valueCode = #21816
* #FFCS ^property[+].code = #subsumedBy
* #FFCS ^property[=].valueCode = #FFC
* #FFCS ^property[+].code = #subsumedBy
* #FFCS ^property[=].valueCode = #FFS
* #FFCS ^property[+].code = #subsumedBy
* #FFCS ^property[=].valueCode = #FFSS
* #TFS "trial fill partial strength" "A fill where a small portion is provided to allow for determination of the therapy effectiveness and patient tolerance and also where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #TFS ^property[0].code = #status
* #TFS ^property[=].valueCode = #active
* #TFS ^property[+].code = #internalId
* #TFS ^property[=].valueCode = #21818
* #TFS ^property[+].code = #subsumedBy
* #TFS ^property[=].valueCode = #FFS
* #TFS ^property[+].code = #subsumedBy
* #TFS ^property[=].valueCode = #FFSS
* #TFS ^property[+].code = #subsumedBy
* #TFS ^property[=].valueCode = #TF
* #FNAINT "Food Non-Allergy Intolerance" "Hypersensitivity to an agent caused by a mechanism other than an immunologic response to an initial exposure"
* #FNAINT ^property[0].code = #status
* #FNAINT ^property[=].valueCode = #active
* #FNAINT ^property[+].code = #internalId
* #FNAINT ^property[=].valueCode = #21508
* #FNAINT ^property[+].code = #subsumedBy
* #FNAINT ^property[=].valueCode = #FINT
* #FNAINT ^property[+].code = #subsumedBy
* #FNAINT ^property[=].valueCode = #NAINT
* #NOTACTN "no longer actionable" "**Definition:**The status of the request being fulfilled has changed such that it is no longer actionable. This may be because the request has expired, has already been completely fulfilled or has been otherwise stopped or disabled. (Not used for 'suspended' orders.)"
* #NOTACTN ^property[0].code = #status
* #NOTACTN ^property[=].valueCode = #active
* #NOTACTN ^property[+].code = #internalId
* #NOTACTN ^property[=].valueCode = #22840
* #NOTACTN ^property[+].code = #subsumedBy
* #NOTACTN ^property[=].valueCode = #FULFIL
* #NOTEQUIV "not equivalent alert" "**Definition:**The therapy being performed is not sufficiently equivalent to the therapy which was requested."
* #NOTEQUIV ^property[0].code = #status
* #NOTEQUIV ^property[=].valueCode = #active
* #NOTEQUIV ^property[+].code = #internalId
* #NOTEQUIV ^property[=].valueCode = #22841
* #NOTEQUIV ^property[+].code = #subsumedBy
* #NOTEQUIV ^property[=].valueCode = #FULFIL
* #TIMING "event timing incorrect alert" "**Definition:**The therapy is being performed at a time which diverges from the time the therapy was requested"
* #TIMING ^property[0].code = #status
* #TIMING ^property[=].valueCode = #active
* #TIMING ^property[+].code = #internalId
* #TIMING ^property[=].valueCode = #22844
* #TIMING ^property[+].code = #subsumedBy
* #TIMING ^property[=].valueCode = #FULFIL
* #BOOSTER "Booster Immunization" "An additional immunization administration within a series intended to bolster or enhance immunity."
* #BOOSTER ^property[0].code = #status
* #BOOSTER ^property[=].valueCode = #retired
* #BOOSTER ^property[+].code = #internalId
* #BOOSTER ^property[=].valueCode = #21521
* #BOOSTER ^property[+].code = #subsumedBy
* #BOOSTER ^property[=].valueCode = #IMMUNIZ
* #INITIMMUNIZ "Initial Immunization" "The first immunization administration in a series intended to produce immunity"
* #INITIMMUNIZ ^property[0].code = #status
* #INITIMMUNIZ ^property[=].valueCode = #retired
* #INITIMMUNIZ ^property[+].code = #internalId
* #INITIMMUNIZ ^property[=].valueCode = #21520
* #INITIMMUNIZ ^property[+].code = #subsumedBy
* #INITIMMUNIZ ^property[=].valueCode = #IMMUNIZ
* #ACUTE "inpatient acute" "An acute inpatient encounter."
* #ACUTE ^property[0].code = #status
* #ACUTE ^property[=].valueCode = #active
* #ACUTE ^property[+].code = #internalId
* #ACUTE ^property[=].valueCode = #13956
* #ACUTE ^property[+].code = #subsumedBy
* #ACUTE ^property[=].valueCode = #IMP
* #NONAC "inpatient non-acute" "Any category of inpatient encounter except 'acute'"
* #NONAC ^property[0].code = #status
* #NONAC ^property[=].valueCode = #active
* #NONAC ^property[+].code = #internalId
* #NONAC ^property[=].valueCode = #16238
* #NONAC ^property[+].code = #subsumedBy
* #NONAC ^property[=].valueCode = #IMP
* #INFAO "access only" "**Definition:** Consent to access or \"read\" only, which entails that the information is not to be copied, screen printed, saved, emailed, stored, re-disclosed or altered in any way. This level ensures that data which is masked or to which access is restricted will not be.\r\n\r\n**Example:** Opened and then emailed or screen printed for use outside of the consent directive purpose."
* #INFAO ^property[0].code = #status
* #INFAO ^property[=].valueCode = #active
* #INFAO ^property[+].code = #internalId
* #INFAO ^property[=].valueCode = #22201
* #INFAO ^property[+].code = #subsumedBy
* #INFAO ^property[=].valueCode = #INFA
* #INFASO "access and save only" "**Definition:** Consent to access and save only, which entails that access to the saved copy will remain locked."
* #INFASO ^property[0].code = #status
* #INFASO ^property[=].valueCode = #active
* #INFASO ^property[+].code = #internalId
* #INFASO ^property[=].valueCode = #22202
* #INFASO ^property[+].code = #subsumedBy
* #INFASO ^property[=].valueCode = #INFA
* #INFCON "after explicit consent" "Authorization to collect, access, use, or disclose specified patient health information as explicitly consented to by the subject of the information or the subject's representative."
* #INFCON ^property[0].code = #status
* #INFCON ^property[=].valueCode = #active
* #INFCON ^property[+].code = #internalId
* #INFCON ^property[=].valueCode = #22334
* #INFCON ^property[+].code = #subsumedBy
* #INFCON ^property[=].valueCode = #INFAUT
* #FIBRIN "Fibrin" "The Fibrin Index of the specimen. In the case of only differentiating between Absent and Present, recommend using 0 and 1"
* #FIBRIN ^property[0].code = #status
* #FIBRIN ^property[=].valueCode = #active
* #FIBRIN ^property[+].code = #internalId
* #FIBRIN ^property[=].valueCode = #14386
* #FIBRIN ^property[+].code = #subsumedBy
* #FIBRIN ^property[=].valueCode = #INTFR
* #HEMOLYSIS "Hemolysis" "An observation of the hemolysis index of the specimen in g/L"
* #HEMOLYSIS ^property[0].code = #status
* #HEMOLYSIS ^property[=].valueCode = #active
* #HEMOLYSIS ^property[+].code = #internalId
* #HEMOLYSIS ^property[=].valueCode = #14383
* #HEMOLYSIS ^property[+].code = #subsumedBy
* #HEMOLYSIS ^property[=].valueCode = #INTFR
* #ICTERUS "Icterus" "An observation that describes the icterus index of the specimen. It is recommended to use mMol/L of bilirubin"
* #ICTERUS ^property[0].code = #status
* #ICTERUS ^property[=].valueCode = #active
* #ICTERUS ^property[+].code = #internalId
* #ICTERUS ^property[=].valueCode = #14385
* #ICTERUS ^property[+].code = #subsumedBy
* #ICTERUS ^property[=].valueCode = #INTFR
* #LIPEMIA "Lipemia" "An observation used to describe the Lipemia Index of the specimen. It is recommended to use the optical turbidity at 600 nm (in absorbance units)."
* #LIPEMIA ^property[0].code = #status
* #LIPEMIA ^property[=].valueCode = #active
* #LIPEMIA ^property[+].code = #internalId
* #LIPEMIA ^property[=].valueCode = #14384
* #LIPEMIA ^property[+].code = #subsumedBy
* #LIPEMIA ^property[=].valueCode = #INTFR
* #IPPOP "initial patient population" "Criteria for specifying the patients to be evaluated by a specific quality measure, based on a shared common set of characteristics (within a specific measurement set to which a given measure belongs). Details often include information based upon specific age groups, diagnoses, diagnostic and procedure codes, and enrollment periods."
* #IPPOP ^property[0].code = #status
* #IPPOP ^property[=].valueCode = #active
* #IPPOP ^property[+].code = #internalId
* #IPPOP ^property[=].valueCode = #23548
* #IPPOP ^property[+].code = #subsumedBy
* #IPPOP ^property[=].valueCode = #IPOP
* #_ActAdministrativeDetectedIssueCode "ActAdministrativeDetectedIssueCode" "Identifies types of detectyed issues for Act class \"ALRT\" for the administrative and patient administrative acts domains."
* #_ActAdministrativeDetectedIssueCode ^property[0].code = #notSelectable
* #_ActAdministrativeDetectedIssueCode ^property[=].valueBoolean = true
* #_ActAdministrativeDetectedIssueCode ^property[+].code = #status
* #_ActAdministrativeDetectedIssueCode ^property[=].valueCode = #active
* #_ActAdministrativeDetectedIssueCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActAdministrativeDetectedIssueCode ^property[=].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* #_ActAdministrativeDetectedIssueCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_ActAdministrativeDetectedIssueCode ^property[+].code = #internalId
* #_ActAdministrativeDetectedIssueCode ^property[=].valueCode = #20854
* #_ActAdministrativeDetectedIssueCode ^property[+].code = #subsumedBy
* #_ActAdministrativeDetectedIssueCode ^property[=].valueCode = #ISSUE
* #_ActSuppliedItemDetectedIssueCode "ActSuppliedItemDetectedIssueCode" "Identifies types of detected issues regarding the administration or supply of an item to a patient."
* #_ActSuppliedItemDetectedIssueCode ^property[0].code = #notSelectable
* #_ActSuppliedItemDetectedIssueCode ^property[=].valueBoolean = true
* #_ActSuppliedItemDetectedIssueCode ^property[+].code = #status
* #_ActSuppliedItemDetectedIssueCode ^property[=].valueCode = #active
* #_ActSuppliedItemDetectedIssueCode ^property[+].code = #rim-ClassifiesClassCode
* #_ActSuppliedItemDetectedIssueCode ^property[=].valueCoding = $v3-ActClass#ALRT
* #_ActSuppliedItemDetectedIssueCode ^property[+].code = #internalId
* #_ActSuppliedItemDetectedIssueCode ^property[=].valueCode = #20907
* #_ActSuppliedItemDetectedIssueCode ^property[+].code = #subsumedBy
* #_ActSuppliedItemDetectedIssueCode ^property[=].valueCode = #ISSUE
* #_ActFinancialDetectedIssueCode "ActFinancialDetectedIssueCode" "Identifies types of detected issues for Act class \"ALRT\" for the financial acts domain."
* #_ActFinancialDetectedIssueCode ^property[0].code = #notSelectable
* #_ActFinancialDetectedIssueCode ^property[=].valueBoolean = true
* #_ActFinancialDetectedIssueCode ^property[+].code = #status
* #_ActFinancialDetectedIssueCode ^property[=].valueCode = #retired
* #_ActFinancialDetectedIssueCode ^property[+].code = #internalId
* #_ActFinancialDetectedIssueCode ^property[=].valueCode = #20870
* #_ActFinancialDetectedIssueCode ^property[+].code = #subsumedBy
* #_ActFinancialDetectedIssueCode ^property[=].valueCode = #ISSUE
* #_ClinicalActionDetectedIssueCode "ClinicalActionDetectedIssueCode" "Identifies types of issues detected regarding the performance of a clinical action on a patient."
* #_ClinicalActionDetectedIssueCode ^property[0].code = #notSelectable
* #_ClinicalActionDetectedIssueCode ^property[=].valueBoolean = true
* #_ClinicalActionDetectedIssueCode ^property[+].code = #status
* #_ClinicalActionDetectedIssueCode ^property[=].valueCode = #active
* #_ClinicalActionDetectedIssueCode ^property[+].code = #internalId
* #_ClinicalActionDetectedIssueCode ^property[=].valueCode = #20911
* #_ClinicalActionDetectedIssueCode ^property[+].code = #subsumedBy
* #_ClinicalActionDetectedIssueCode ^property[=].valueCode = #ISSUE
* #_ClinicalActionDetectedIssueCode #CAREGAP "Caregap" "Identifies the type of detected issue is a care gap"
* #_ClinicalActionDetectedIssueCode #CAREGAP ^property[0].code = #internalId
* #_ClinicalActionDetectedIssueCode #CAREGAP ^property[=].valueString = "120911"
* #_ClinicalActionDetectedIssueCode #CAREGAP ^property[+].code = #status
* #_ClinicalActionDetectedIssueCode #CAREGAP ^property[=].valueCode = #active
* #_ClinicalActionDetectedIssueCode #CAREGAP ^property[+].code = #subsumedBy
* #_ClinicalActionDetectedIssueCode #CAREGAP ^property[=].valueString = "_ClinicalActionDetectedIssueCode"
* #_ClinicalActionDetectedIssueCode #CODINGGAP "Codinggap" "Identifies the type of detected issue is a risk adjustment coding gap"
* #_ClinicalActionDetectedIssueCode #CODINGGAP ^property[0].code = #internalId
* #_ClinicalActionDetectedIssueCode #CODINGGAP ^property[=].valueString = "1120911"
* #_ClinicalActionDetectedIssueCode #CODINGGAP ^property[+].code = #status
* #_ClinicalActionDetectedIssueCode #CODINGGAP ^property[=].valueCode = #active
* #_ClinicalActionDetectedIssueCode #CODINGGAP ^property[+].code = #subsumedBy
* #_ClinicalActionDetectedIssueCode #CODINGGAP ^property[=].valueString = "_ClinicalActionDetectedIssueCode"
* #JurisCUI "jurisdictional controlled unclassified information policy" "Jurisdictional policy on collection, access, use, or disclosure of controlled unclassified information as defined by applicable jurisdictional law."
* #JurisCUI ^property[0].code = #status
* #JurisCUI ^property[=].valueCode = #active
* #JurisCUI ^property[+].code = #internalId
* #JurisCUI ^property[=].valueCode = #24075
* #JurisCUI ^property[+].code = #subsumedBy
* #JurisCUI ^property[=].valueCode = #JurisIP
* #JurisDEID "jurisdictional de-identified information policy" "Jurisdictional policy on collection, access, use, or disclosure of de-identified information as defined by applicable jurisdictional law."
* #JurisDEID ^property[0].code = #status
* #JurisDEID ^property[=].valueCode = #active
* #JurisDEID ^property[+].code = #internalId
* #JurisDEID ^property[=].valueCode = #24076
* #JurisDEID ^property[+].code = #subsumedBy
* #JurisDEID ^property[=].valueCode = #JurisIP
* #JurisLDS "jurisdictional limited data set" "Jurisdictional policy on collection, access, use, or disclosure of information in a limited data set as defined by applicable jurisdictional law."
* #JurisLDS ^property[0].code = #status
* #JurisLDS ^property[=].valueCode = #active
* #JurisLDS ^property[+].code = #internalId
* #JurisLDS ^property[=].valueCode = #24077
* #JurisLDS ^property[+].code = #subsumedBy
* #JurisLDS ^property[=].valueCode = #JurisIP
* #JurisNSI "jurisdictional non-sensitive information policy" "Jurisdictional policy on collection, access, use, or disclosure of information deemed non-sensitive by applicable jurisdiction law."
* #JurisNSI ^property[0].code = #status
* #JurisNSI ^property[=].valueCode = #active
* #JurisNSI ^property[+].code = #internalId
* #JurisNSI ^property[=].valueCode = #24078
* #JurisNSI ^property[+].code = #subsumedBy
* #JurisNSI ^property[=].valueCode = #JurisIP
* #JurisPI "jurisdictional public information policy" "Jurisdictional policy on collection, access, use, or disclosure of information deemed public by applicable jurisdiction law."
* #JurisPI ^property[0].code = #status
* #JurisPI ^property[=].valueCode = #active
* #JurisPI ^property[+].code = #internalId
* #JurisPI ^property[=].valueCode = #24079
* #JurisPI ^property[+].code = #subsumedBy
* #JurisPI ^property[=].valueCode = #JurisIP
* #JurisSP-CUI "jurisdictional specified controlled unclassified information policy" "Jurisdictional policy on collection, access, use, or disclosure of specified controlled unclassified information as defined by applicable jurisdictional policy."
* #JurisSP-CUI ^property[0].code = #status
* #JurisSP-CUI ^property[=].valueCode = #active
* #JurisSP-CUI ^property[+].code = #internalId
* #JurisSP-CUI ^property[=].valueCode = #24080
* #JurisSP-CUI ^property[+].code = #subsumedBy
* #JurisSP-CUI ^property[=].valueCode = #JurisIP
* #JurisUUI "jurisdictional uncontrolled unclassified information policy" "Jurisdictional policy on collection, access, use, or disclosure of uncontrolled unclassified information as defined by applicable jurisdictional policy."
* #JurisUUI ^property[0].code = #status
* #JurisUUI ^property[=].valueCode = #active
* #JurisUUI ^property[+].code = #internalId
* #JurisUUI ^property[=].valueCode = #24081
* #JurisUUI ^property[+].code = #subsumedBy
* #JurisUUI ^property[=].valueCode = #JurisIP
* #LEN_LONG "length is too long" "**Description:**The length of the data specified is greater than the maximum length defined for the element."
* #LEN_LONG ^property[0].code = #status
* #LEN_LONG ^property[=].valueCode = #active
* #LEN_LONG ^property[+].code = #internalId
* #LEN_LONG ^property[=].valueCode = #21658
* #LEN_LONG ^property[+].code = #subsumedBy
* #LEN_LONG ^property[=].valueCode = #LEN_RANGE
* #LEN_SHORT "length is too short" "**Description:**The length of the data specified is less than the minimum length defined for the element."
* #LEN_SHORT ^property[0].code = #status
* #LEN_SHORT ^property[=].valueCode = #active
* #LEN_SHORT ^property[+].code = #internalId
* #LEN_SHORT ^property[=].valueCode = #21657
* #LEN_SHORT ^property[+].code = #subsumedBy
* #LEN_SHORT ^property[=].valueCode = #LEN_RANGE
* #ANNU "annuity policy" "**Definition:** A policy that, after an initial premium or premiums, pays out a sum at pre-determined intervals.\r\n\r\nFor example, a policy holder may pay $10,000, and in return receive $150 each month until he dies; or $1,000 for each of 14 years or death benefits if he dies before the full term of the annuity has elapsed."
* #ANNU ^property[0].code = #status
* #ANNU ^property[=].valueCode = #active
* #ANNU ^property[+].code = #internalId
* #ANNU ^property[=].valueCode = #22118
* #ANNU ^property[+].code = #subsumedBy
* #ANNU ^property[=].valueCode = #LIFE
* #TLIFE "term life insurance policy" "**Definition:** Life insurance under which the benefit is payable only if the insured dies during a specified period. If an insured dies during that period, the beneficiary receives the death payments. If the insured survives, the policy ends and the beneficiary receives nothing."
* #TLIFE ^property[0].code = #status
* #TLIFE ^property[=].valueCode = #active
* #TLIFE ^property[+].code = #internalId
* #TLIFE ^property[=].valueCode = #22116
* #TLIFE ^property[+].code = #subsumedBy
* #TLIFE ^property[=].valueCode = #LIFE
* #ULIFE "universal life insurance policy" "**Definition:** Life insurance under which the benefit is payable upon the insuredaTMs death or diagnosis of a terminal illness. If an insured dies during that period, the beneficiary receives the death payments. If the insured survives, the policy ends and the beneficiary receives nothing"
* #ULIFE ^property[0].code = #status
* #ULIFE ^property[=].valueCode = #active
* #ULIFE ^property[+].code = #internalId
* #ULIFE ^property[=].valueCode = #22117
* #ULIFE ^property[+].code = #subsumedBy
* #ULIFE ^property[=].valueCode = #LIFE
* #RENT "Rent" "Temporary supply of a product with financial compensation, without transfer of ownership for the product."
* #RENT ^property[0].code = #status
* #RENT ^property[=].valueCode = #active
* #RENT ^property[+].code = #internalId
* #RENT ^property[=].valueCode = #17962
* #RENT ^property[+].code = #subsumedBy
* #RENT ^property[=].valueCode = #LOAN
* #HMO "health maintenance organization policy" "**Definition:** A policy for a health plan that provides coverage for health care only through contracted or employed physicians and hospitals located in particular geographic or service areas. HMOs emphasize prevention and early detection of illness. Eligibility to enroll in an HMO is determined by where a covered party lives or works."
* #HMO ^property[0].code = #status
* #HMO ^property[=].valueCode = #active
* #HMO ^property[+].code = #internalId
* #HMO ^property[=].valueCode = #22110
* #HMO ^property[+].code = #subsumedBy
* #HMO ^property[=].valueCode = #MCPOL
* #PPO "preferred provider organization policy" "**Definition:** A network-based, managed care plan that allows a covered party to choose any health care provider. However, if care is received from a \"preferred\" (participating in-network) provider, there are generally higher benefit coverage and lower deductibles."
* #PPO ^property[0].code = #status
* #PPO ^property[=].valueCode = #active
* #PPO ^property[+].code = #internalId
* #PPO ^property[=].valueCode = #22112
* #PPO ^property[+].code = #subsumedBy
* #PPO ^property[=].valueCode = #MCPOL
* #MDHHS-5515MMHC "Michigan Consent to Share Behavioral Health Information for Care Coordination Purposes-Michigan Mental Health Code" "The State of Michigan standard privacy consent form for sharing of health information specific to behavioral health governed by the Michigan Mental Health Code Act 258 of 1974, which require patient authorization for purposes other than treatment, payment, and coordination of care, in accordance with Public Act 129 of 2014.\r\n\r\n*Usage Note:* For legislative background, current MDHHS-5515 consent directive form, and provider and patient FAQs see http://www.michigan.gov/mdhhs/0,5885,7-339-71550\\_2941\\_58005-343686--,00.html"
* #MDHHS-5515MMHC ^property[0].code = #status
* #MDHHS-5515MMHC ^property[=].valueCode = #active
* #MDHHS-5515MMHC ^property[+].code = #internalId
* #MDHHS-5515MMHC ^property[=].valueCode = #24134
* #MDHHS-5515MMHC ^property[+].code = #subsumedBy
* #MDHHS-5515MMHC ^property[=].valueCode = #MDHHS-5515
* #MDHHS-5515Part2 "Michigan Consent to Share Behavioral Health Information for Care Coordination Purposes-US 42 CFR Part 2" "The State of Michigan standard privacy consent form for sharing of health information specific to substance use information governed under US 42 CFR Part 2 in accordance with Public Act 129 of 2014.\r\n\r\n*Usage Note:* For legislative background, current MDHHS-5515 consent directive form, and provider and patient FAQs see http://www.michigan.gov/mdhhs/0,5885,7-339-71550\\_2941\\_58005-343686--,00.html"
* #MDHHS-5515Part2 ^property[0].code = #status
* #MDHHS-5515Part2 ^property[=].valueCode = #active
* #MDHHS-5515Part2 ^property[+].code = #internalId
* #MDHHS-5515Part2 ^property[=].valueCode = #24133
* #MDHHS-5515Part2 ^property[+].code = #subsumedBy
* #MDHHS-5515Part2 ^property[=].valueCode = #MDHHS-5515
* #CURMEDLIST "current medication list" "List of current medications."
* #CURMEDLIST ^property[0].code = #status
* #CURMEDLIST ^property[=].valueCode = #active
* #CURMEDLIST ^property[+].code = #internalId
* #CURMEDLIST ^property[=].valueCode = #19977
* #CURMEDLIST ^property[+].code = #subsumedBy
* #CURMEDLIST ^property[=].valueCode = #MEDLIST
* #DISCMEDLIST "discharge medication list" "List of discharge medications."
* #DISCMEDLIST ^property[0].code = #status
* #DISCMEDLIST ^property[=].valueCode = #active
* #DISCMEDLIST ^property[+].code = #internalId
* #DISCMEDLIST ^property[=].valueCode = #19979
* #DISCMEDLIST ^property[+].code = #subsumedBy
* #DISCMEDLIST ^property[=].valueCode = #MEDLIST
* #HISTMEDLIST "medication history" "Historical list of medications."
* #HISTMEDLIST ^property[0].code = #status
* #HISTMEDLIST ^property[=].valueCode = #active
* #HISTMEDLIST ^property[+].code = #internalId
* #HISTMEDLIST ^property[=].valueCode = #19978
* #HISTMEDLIST ^property[+].code = #subsumedBy
* #HISTMEDLIST ^property[=].valueCode = #MEDLIST
* #MICROORGRREV "microbiology organisms results review task" "A person reviews organisms of microbiology results of a given patient."
* #MICROORGRREV ^property[0].code = #status
* #MICROORGRREV ^property[=].valueCode = #active
* #MICROORGRREV ^property[+].code = #internalId
* #MICROORGRREV ^property[=].valueCode = #22057
* #MICROORGRREV ^property[+].code = #subsumedBy
* #MICROORGRREV ^property[=].valueCode = #MICRORREV
* #MICROSENSRREV "microbiology sensitivity test results review task" "A person reviews the sensitivity test of microbiology results of a given patient."
* #MICROSENSRREV ^property[0].code = #status
* #MICROSENSRREV ^property[=].valueCode = #active
* #MICROSENSRREV ^property[+].code = #internalId
* #MICROSENSRREV ^property[=].valueCode = #22058
* #MICROSENSRREV ^property[+].code = #subsumedBy
* #MICROSENSRREV ^property[=].valueCode = #MICRORREV
* #MARWLREV "medication administration record work list review task" "A clinician reviews a work list of medications to be administered to a given patient."
* #MARWLREV ^property[0].code = #status
* #MARWLREV ^property[=].valueCode = #active
* #MARWLREV ^property[+].code = #internalId
* #MARWLREV ^property[=].valueCode = #22054
* #MARWLREV ^property[+].code = #subsumedBy
* #MARWLREV ^property[=].valueCode = #MLREV
* #NOTEQUIVGEN "not generically equivalent alert" "**Definition:**The therapy being performed is not generically equivalent (having the identical biological action) to the therapy which was requested."
* #NOTEQUIVGEN ^property[0].code = #status
* #NOTEQUIVGEN ^property[=].valueCode = #active
* #NOTEQUIVGEN ^property[+].code = #internalId
* #NOTEQUIVGEN ^property[=].valueCode = #22843
* #NOTEQUIVGEN ^property[+].code = #subsumedBy
* #NOTEQUIVGEN ^property[=].valueCode = #NOTEQUIV
* #NOTEQUIVTHER "not therapeutically equivalent alert" "**Definition:**The therapy being performed is not therapeutically equivalent (having the same overall patient effect) to the therapy which was requested."
* #NOTEQUIVTHER ^property[0].code = #status
* #NOTEQUIVTHER ^property[=].valueCode = #active
* #NOTEQUIVTHER ^property[+].code = #internalId
* #NOTEQUIVTHER ^property[=].valueCode = #22842
* #NOTEQUIVTHER ^property[+].code = #subsumedBy
* #NOTEQUIVTHER ^property[=].valueCode = #NOTEQUIV
* #ANONY "anonymize" "Custodian system must remove any information that could result in identifying the information subject."
* #ANONY ^property[0].code = #status
* #ANONY ^property[=].valueCode = #active
* #ANONY ^property[+].code = #internalId
* #ANONY ^property[=].valueCode = #23374
* #ANONY ^property[+].code = #subsumedBy
* #ANONY ^property[=].valueCode = #ObligationPolicy
* #AOD "accounting of disclosure" "Custodian system must make available to an information subject upon request an accounting of certain disclosures of the individual's protected health information over a period of time. Policy may dictate that the accounting include information about the information disclosed, the date of disclosure, the identification of the receiver, the purpose of the disclosure, the time in which the disclosing entity must provide a response and the time period for which accountings of disclosure can be requested."
* #AOD ^property[0].code = #status
* #AOD ^property[=].valueCode = #active
* #AOD ^property[+].code = #internalId
* #AOD ^property[=].valueCode = #23373
* #AOD ^property[+].code = #subsumedBy
* #AOD ^property[=].valueCode = #ObligationPolicy
* #AUDIT "audit" "Custodian system must monitor systems to ensure that all users are authorized to operate on information objects."
* #AUDIT ^property[0].code = #status
* #AUDIT ^property[=].valueCode = #active
* #AUDIT ^property[+].code = #internalId
* #AUDIT ^property[=].valueCode = #23375
* #AUDIT ^property[+].code = #subsumedBy
* #AUDIT ^property[=].valueCode = #ObligationPolicy
* #AUDTR "audit trail" "Custodian system must monitor and maintain retrievable log for each user and operation on information."
* #AUDTR ^property[0].code = #status
* #AUDTR ^property[=].valueCode = #active
* #AUDTR ^property[+].code = #internalId
* #AUDTR ^property[=].valueCode = #23376
* #AUDTR ^property[+].code = #subsumedBy
* #AUDTR ^property[=].valueCode = #ObligationPolicy
* #CPLYPOL "comply with policy" "Custodian security system must retrieve, evaluate, and comply with applicable policies associated with the target information.\r\n\r\n*Usage Note:* CPLYPOL may be used as a security label code to inform senders and receivers of the tagged information to comply with applicable policy without specifying the specific policy type(s)."
* #CPLYPOL ^property[0].code = #status
* #CPLYPOL ^property[=].valueCode = #active
* #CPLYPOL ^property[+].code = #internalId
* #CPLYPOL ^property[=].valueCode = #23377
* #CPLYPOL ^property[+].code = #subsumedBy
* #CPLYPOL ^property[=].valueCode = #ObligationPolicy
* #DECLASSIFYLABEL "declassify security label" "Custodian security system must declassify information assigned security labels by instantiating a new version of the classified information so as to break the binding of the classifying security label when assigning a new security label that marks the information as unclassified in accordance with applicable jurisdictional privacy policies associated with the target information. The system must retain an immutable record of the previous assignment and binding."
* #DECLASSIFYLABEL ^property[0].code = #status
* #DECLASSIFYLABEL ^property[=].valueCode = #active
* #DECLASSIFYLABEL ^property[+].code = #internalId
* #DECLASSIFYLABEL ^property[=].valueCode = #23751
* #DECLASSIFYLABEL ^property[+].code = #subsumedBy
* #DECLASSIFYLABEL ^property[=].valueCode = #ObligationPolicy
* #DEID "deidentify" "Custodian system must strip information of data that would allow the identification of the source of the information or the information subject."
* #DEID ^property[0].code = #status
* #DEID ^property[=].valueCode = #active
* #DEID ^property[+].code = #internalId
* #DEID ^property[=].valueCode = #23383
* #DEID ^property[+].code = #subsumedBy
* #DEID ^property[=].valueCode = #ObligationPolicy
* #DELAU "delete after use" "Custodian system must remove target information from access after use."
* #DELAU ^property[0].code = #status
* #DELAU ^property[=].valueCode = #active
* #DELAU ^property[+].code = #internalId
* #DELAU ^property[=].valueCode = #23384
* #DELAU ^property[+].code = #subsumedBy
* #DELAU ^property[=].valueCode = #ObligationPolicy
* #DOWNGRDLABEL "downgrade security label" "Custodian security system must downgrade information assigned security labels by instantiating a new version of the classified information so as to break the binding of the classifying security label when assigning a new security label that marks the information as classified at a less protected level in accordance with applicable jurisdictional privacy policies associated with the target information. The system must retain an immutable record of the previous assignment and binding."
* #DOWNGRDLABEL ^property[0].code = #status
* #DOWNGRDLABEL ^property[=].valueCode = #active
* #DOWNGRDLABEL ^property[+].code = #internalId
* #DOWNGRDLABEL ^property[=].valueCode = #23752
* #DOWNGRDLABEL ^property[+].code = #subsumedBy
* #DOWNGRDLABEL ^property[=].valueCode = #ObligationPolicy
* #DRIVLABEL "derive security label" "Custodian security system must assign and bind security labels derived from compilations of information by aggregation or disaggregation in order to classify information compiled in the information systems under its control for collection, access, use and disclosure in accordance with applicable jurisdictional privacy policies associated with the target information. The system must retain an immutable record of the previous assignment and binding."
* #DRIVLABEL ^property[0].code = #status
* #DRIVLABEL ^property[=].valueCode = #active
* #DRIVLABEL ^property[+].code = #internalId
* #DRIVLABEL ^property[=].valueCode = #23749
* #DRIVLABEL ^property[+].code = #subsumedBy
* #DRIVLABEL ^property[=].valueCode = #ObligationPolicy
* #ENCRYPT "encrypt" "Custodian system must render information unreadable by algorithmically transforming plaintext into ciphertext.\r\n\r\n*Usage Notes:* A mathematical transposition of a file or data stream so that it cannot be deciphered at the receiving end without the proper key. Encryption is a security feature that assures that only the parties who are supposed to be participating in a videoconference or data transfer are able to do so. It can include a password, public and private keys, or a complex combination of all. (Per Infoway.)"
* #ENCRYPT ^property[0].code = #status
* #ENCRYPT ^property[=].valueCode = #active
* #ENCRYPT ^property[+].code = #HL7usageNotes
* #ENCRYPT ^property[=].valueString = "A mathematical transposition of a file or data stream so that it cannot be deciphered at the receiving end without the proper key. Encryption is a security feature that assures that only the parties who are supposed to be participating in a videoconference or data transfer are able to do so. It can include a password, public and private keys, or a complex combination of all.  (Per Infoway.)"
* #ENCRYPT ^property[+].code = #internalId
* #ENCRYPT ^property[=].valueCode = #23385
* #ENCRYPT ^property[+].code = #subsumedBy
* #ENCRYPT ^property[=].valueCode = #ObligationPolicy
* #HUAPRV "human approval" "Custodian system must require human review and approval for permission requested."
* #HUAPRV ^property[0].code = #status
* #HUAPRV ^property[=].valueCode = #active
* #HUAPRV ^property[+].code = #internalId
* #HUAPRV ^property[=].valueCode = #23391
* #HUAPRV ^property[+].code = #subsumedBy
* #HUAPRV ^property[=].valueCode = #ObligationPolicy
* #LABEL "assign security label" "Custodian security system must assign and bind security labels in order to classify information created in the information systems under its control for collection, access, use and disclosure in accordance with applicable jurisdictional privacy policies associated with the target information. The system must retain an immutable record of the assignment and binding.\r\n\r\n*Usage Note:* In security systems, security policy label assignments do not change, they may supersede prior assignments, and such reassignments are always tracked for auditing and other purposes."
* #LABEL ^property[0].code = #status
* #LABEL ^property[=].valueCode = #active
* #LABEL ^property[+].code = #internalId
* #LABEL ^property[=].valueCode = #23748
* #LABEL ^property[+].code = #subsumedBy
* #LABEL ^property[=].valueCode = #ObligationPolicy
* #MASK "mask" "Custodian system must render information unreadable and unusable by algorithmically transforming plaintext into ciphertext. User may be provided a key to decrypt per license or \"shared secret\"."
* #MASK ^property[0].code = #status
* #MASK ^property[=].valueCode = #active
* #MASK ^property[+].code = #internalId
* #MASK ^property[=].valueCode = #23389
* #MASK ^property[+].code = #subsumedBy
* #MASK ^property[=].valueCode = #ObligationPolicy
* #MINEC "minimum necessary" "Custodian must limit access and disclosure to the minimum information required to support an authorized user's purpose of use.\r\n\r\n*Usage Note:* Limiting the information available for access and disclosure to that an authorized user or receiver \"needs to know\" in order to perform permitted workflow or purpose of use."
* #MINEC ^property[0].code = #status
* #MINEC ^property[=].valueCode = #active
* #MINEC ^property[+].code = #internalId
* #MINEC ^property[=].valueCode = #23574
* #MINEC ^property[+].code = #subsumedBy
* #MINEC ^property[=].valueCode = #ObligationPolicy
* #PERSISTLABEL "persist security label" "Custodian security system must persist the binding of security labels to classify information received or imported by information systems under its control for collection, access, use and disclosure in accordance with applicable jurisdictional privacy policies associated with the target information. The system must retain an immutable record of the assignment and binding."
* #PERSISTLABEL ^property[0].code = #status
* #PERSISTLABEL ^property[=].valueCode = #active
* #PERSISTLABEL ^property[+].code = #internalId
* #PERSISTLABEL ^property[=].valueCode = #23750
* #PERSISTLABEL ^property[+].code = #subsumedBy
* #PERSISTLABEL ^property[=].valueCode = #ObligationPolicy
* #PRIVMARK "privacy mark" "Custodian must create and/or maintain human readable security label tags as required by policy.\r\n\r\nMap: Aligns with ISO 22600-3 Section A.3.4.3 description of privacy mark: \"If present, the privacy-mark is not used for access control. The content of the privacy-mark may be defined by the security policy in force (identified by the security-policy-identifier) which may define a list of values to be used. Alternately, the value may be determined by the originator of the security-label.\""
* #PRIVMARK ^property[0].code = #status
* #PRIVMARK ^property[=].valueCode = #active
* #PRIVMARK ^property[+].code = #internalId
* #PRIVMARK ^property[=].valueCode = #23575
* #PRIVMARK ^property[+].code = #subsumedBy
* #PRIVMARK ^property[=].valueCode = #ObligationPolicy
* #PSEUD "pseudonymize" "Custodian system must strip information of data that would allow the identification of the source of the information or the information subject. Custodian may retain a key to relink data necessary to reidentify the information subject."
* #PSEUD ^property[0].code = #status
* #PSEUD ^property[=].valueCode = #active
* #PSEUD ^property[+].code = #internalId
* #PSEUD ^property[=].valueCode = #23392
* #PSEUD ^property[+].code = #subsumedBy
* #PSEUD ^property[=].valueCode = #ObligationPolicy
* #REDACT "redact" "Custodian system must remove information, which is not authorized to be access, used, or disclosed from records made available to otherwise authorized users."
* #REDACT ^property[0].code = #status
* #REDACT ^property[=].valueCode = #active
* #REDACT ^property[+].code = #internalId
* #REDACT ^property[=].valueCode = #23390
* #REDACT ^property[+].code = #subsumedBy
* #REDACT ^property[=].valueCode = #ObligationPolicy
* #UPGRDLABEL "upgrade security label" "Custodian security system must declassify information assigned security labels by instantiating a new version of the classified information so as to break the binding of the classifying security label when assigning a new security label that marks the information as classified at a more protected level in accordance with applicable jurisdictional privacy policies associated with the target information. The system must retain an immutable record of the previous assignment and binding."
* #UPGRDLABEL ^property[0].code = #status
* #UPGRDLABEL ^property[=].valueCode = #active
* #UPGRDLABEL ^property[+].code = #internalId
* #UPGRDLABEL ^property[=].valueCode = #23753
* #UPGRDLABEL ^property[+].code = #subsumedBy
* #UPGRDLABEL ^property[=].valueCode = #ObligationPolicy
* #PROCESSINLINELABEL "process inline security label" "Custodian security system must take note that the data object contains inline security labels and process them."
* #PROCESSINLINELABEL ^property[0].code = #status
* #PROCESSINLINELABEL ^property[=].valueCode = #active
* #PROCESSINLINELABEL ^property[+].code = #internalId
* #PROCESSINLINELABEL ^property[=].valueCode = #23850
* #PROCESSINLINELABEL ^property[+].code = #subsumedBy
* #PROCESSINLINELABEL ^property[=].valueCode = #ObligationPolicy
* #AGE "Age Alert" "Proposed therapy may be inappropriate or contraindicated due to patient age"
* #AGE ^property[0].code = #status
* #AGE ^property[=].valueCode = #active
* #AGE ^property[+].code = #internalId
* #AGE ^property[=].valueCode = #16669
* #AGE ^property[+].code = #subsumedBy
* #AGE ^property[=].valueCode = #OBSA
* #COND "Condition Alert" "Proposed therapy may be inappropriate or contraindicated due to an existing/recent patient condition or diagnosis"
* #COND ^property[0].code = #status
* #COND ^property[=].valueCode = #active
* #COND ^property[+].code = #internalId
* #COND ^property[=].valueCode = #16665
* #COND ^property[+].code = #subsumedBy
* #COND ^property[=].valueCode = #OBSA
* #CREACT "common reaction alert" "**Description:**Proposed therapy may be inappropriate or contraindicated because of a common but non-patient specific reaction to the product.\r\n\r\n**Example:**There is no record of a specific sensitivity for the patient, but the presence of the sensitivity is common and therefore caution is warranted."
* #CREACT ^property[0].code = #status
* #CREACT ^property[=].valueCode = #active
* #CREACT ^property[+].code = #internalId
* #CREACT ^property[=].valueCode = #21666
* #CREACT ^property[+].code = #subsumedBy
* #CREACT ^property[=].valueCode = #OBSA
* #GEN "Genetic Alert" "Proposed therapy may be inappropriate or contraindicated due to patient genetic indicators."
* #GEN ^property[0].code = #status
* #GEN ^property[=].valueCode = #active
* #GEN ^property[+].code = #internalId
* #GEN ^property[=].valueCode = #16671
* #GEN ^property[+].code = #subsumedBy
* #GEN ^property[=].valueCode = #OBSA
* #GEND "Gender Alert" "Proposed therapy may be inappropriate or contraindicated due to patient gender."
* #GEND ^property[0].code = #status
* #GEND ^property[=].valueCode = #active
* #GEND ^property[+].code = #internalId
* #GEND ^property[=].valueCode = #16670
* #GEND ^property[+].code = #subsumedBy
* #GEND ^property[=].valueCode = #OBSA
* #LAB "Lab Alert" "Proposed therapy may be inappropriate or contraindicated due to recent lab test results"
* #LAB ^property[0].code = #status
* #LAB ^property[=].valueCode = #active
* #LAB ^property[+].code = #internalId
* #LAB ^property[=].valueCode = #16668
* #LAB ^property[+].code = #subsumedBy
* #LAB ^property[=].valueCode = #OBSA
* #REACT "Reaction Alert" "Proposed therapy may be inappropriate or contraindicated based on the potential for a patient reaction to the proposed product"
* #REACT ^property[0].code = #status
* #REACT ^property[=].valueCode = #active
* #REACT ^property[+].code = #internalId
* #REACT ^property[=].valueCode = #16672
* #REACT ^property[+].code = #subsumedBy
* #REACT ^property[=].valueCode = #OBSA
* #RREACT "Related Reaction Alert" "Proposed therapy may be inappropriate or contraindicated because of a potential patient reaction to a cross-sensitivity related product."
* #RREACT ^property[0].code = #status
* #RREACT ^property[=].valueCode = #active
* #RREACT ^property[+].code = #internalId
* #RREACT ^property[=].valueCode = #16676
* #RREACT ^property[+].code = #subsumedBy
* #RREACT ^property[=].valueCode = #OBSA
* #LABOE "laboratory test order entry task" "A clinician creates a request for a laboratory test to be done for a given patient."
* #LABOE ^property[0].code = #status
* #LABOE ^property[=].valueCode = #active
* #LABOE ^property[+].code = #internalId
* #LABOE ^property[=].valueCode = #22049
* #LABOE ^property[+].code = #subsumedBy
* #LABOE ^property[=].valueCode = #OE
* #MEDOE "medication order entry task" "A clinician creates a request for the administration of one or more medications to a given patient."
* #MEDOE ^property[0].code = #status
* #MEDOE ^property[=].valueCode = #active
* #MEDOE ^property[+].code = #internalId
* #MEDOE ^property[=].valueCode = #22050
* #MEDOE ^property[+].code = #subsumedBy
* #MEDOE ^property[=].valueCode = #OE
* #ALG "Allergy" "Hypersensitivity to an agent caused by an immunologic response to an initial exposure"
* #ALG ^property[0].code = #status
* #ALG ^property[=].valueCode = #active
* #ALG ^property[+].code = #internalId
* #ALG ^property[=].valueCode = #21499
* #ALG ^property[+].code = #subsumedBy
* #ALG ^property[=].valueCode = #OINT
* #DINT "Drug Intolerance" "Hypersensitivity resulting in an adverse reaction upon exposure to a drug."
* #DINT ^property[0].code = #status
* #DINT ^property[=].valueCode = #active
* #DINT ^property[+].code = #internalId
* #DINT ^property[=].valueCode = #21501
* #DINT ^property[+].code = #subsumedBy
* #DINT ^property[=].valueCode = #OINT
* #EINT "Environmental Intolerance" "Hypersensitivity resulting in an adverse reaction upon exposure to environmental conditions."
* #EINT ^property[0].code = #status
* #EINT ^property[=].valueCode = #active
* #EINT ^property[+].code = #internalId
* #EINT ^property[=].valueCode = #21503
* #EINT ^property[+].code = #subsumedBy
* #EINT ^property[=].valueCode = #OINT
* #FINT "Food Intolerance" "Hypersensitivity resulting in an adverse reaction upon exposure to food."
* #FINT ^property[0].code = #status
* #FINT ^property[=].valueCode = #active
* #FINT ^property[+].code = #internalId
* #FINT ^property[=].valueCode = #21502
* #FINT ^property[+].code = #subsumedBy
* #FINT ^property[=].valueCode = #OINT
* #NAINT "Non-Allergy Intolerance" "Hypersensitivity to an agent caused by a mechanism other than an immunologic response to an initial exposure"
* #NAINT ^property[0].code = #status
* #NAINT ^property[=].valueCode = #active
* #NAINT ^property[+].code = #internalId
* #NAINT ^property[=].valueCode = #21500
* #NAINT ^property[+].code = #subsumedBy
* #NAINT ^property[=].valueCode = #OINT
* #OrgCUI "organizational basic controlled unclassified information policy" "Organizational policy on collection, access, use, or disclosure of basic controlled unclassified information as defined by the organization or by applicable jurisdictional law."
* #OrgCUI ^property[0].code = #status
* #OrgCUI ^property[=].valueCode = #active
* #OrgCUI ^property[+].code = #internalId
* #OrgCUI ^property[=].valueCode = #24067
* #OrgCUI ^property[+].code = #subsumedBy
* #OrgCUI ^property[=].valueCode = #OrgIP
* #OrgDEID "organizational de-identified informati)on policy" "Organizational policy on collection, access, use, or disclosure of de-identified information as defined by the organization or by applicable jurisdictional law."
* #OrgDEID ^property[0].code = #status
* #OrgDEID ^property[=].valueCode = #active
* #OrgDEID ^property[+].code = #internalId
* #OrgDEID ^property[=].valueCode = #24068
* #OrgDEID ^property[+].code = #subsumedBy
* #OrgDEID ^property[=].valueCode = #OrgIP
* #OrgLDS "organizational limited data set information policy" "Organizational policy on collection, access, use, or disclosure of information in a limited data set as defined by the organization or by applicable jurisdictional law."
* #OrgLDS ^property[0].code = #status
* #OrgLDS ^property[=].valueCode = #active
* #OrgLDS ^property[+].code = #internalId
* #OrgLDS ^property[=].valueCode = #24069
* #OrgLDS ^property[+].code = #subsumedBy
* #OrgLDS ^property[=].valueCode = #OrgIP
* #OrgNSI "organizational non-sensitive information policy" "Organizational policy on collection, access, use, or disclosure of information deemed non-sensitive by the organization or by applicable jurisdictional law."
* #OrgNSI ^property[0].code = #status
* #OrgNSI ^property[=].valueCode = #active
* #OrgNSI ^property[+].code = #internalId
* #OrgNSI ^property[=].valueCode = #24070
* #OrgNSI ^property[+].code = #subsumedBy
* #OrgNSI ^property[=].valueCode = #OrgIP
* #OrgPI "organizational public information policy" "Organizational policy on collection, access, use, or disclosure of public information as defined by the organization or by applicable jurisdictional law."
* #OrgPI ^property[0].code = #status
* #OrgPI ^property[=].valueCode = #active
* #OrgPI ^property[+].code = #internalId
* #OrgPI ^property[=].valueCode = #24071
* #OrgPI ^property[+].code = #subsumedBy
* #OrgPI ^property[=].valueCode = #OrgIP
* #OrgSP-CUI "organizational specified controlled unclassified information policy" "Organizational policy on collection, access, use, or disclosure of specified controlled unclassified information as defined by the organization or by applicable jurisdictional law."
* #OrgSP-CUI ^property[0].code = #status
* #OrgSP-CUI ^property[=].valueCode = #active
* #OrgSP-CUI ^property[+].code = #internalId
* #OrgSP-CUI ^property[=].valueCode = #24072
* #OrgSP-CUI ^property[+].code = #subsumedBy
* #OrgSP-CUI ^property[=].valueCode = #OrgIP
* #OrgUUI "organizational uncontrolled unclassified information policy" "Organizational policy on collection, access, use, or disclosure of uncontrolled unclassified information as defined by the organization or governing jurisdiction."
* #OrgUUI ^property[0].code = #status
* #OrgUUI ^property[=].valueCode = #active
* #OrgUUI ^property[+].code = #internalId
* #OrgUUI ^property[=].valueCode = #24073
* #OrgUUI ^property[+].code = #subsumedBy
* #OrgUUI ^property[=].valueCode = #OrgIP
* #ALLERLREV "allergy list review" "**Description:** A person reviews a list of known allergies of a given patient."
* #ALLERLREV ^property[0].code = #status
* #ALLERLREV ^property[=].valueCode = #active
* #ALLERLREV ^property[+].code = #internalId
* #ALLERLREV ^property[=].valueCode = #23268
* #ALLERLREV ^property[+].code = #subsumedBy
* #ALLERLREV ^property[=].valueCode = #PATDOC
* #CLINNOTEE "clinical note entry task" "A clinician enters a clinical note about a given patient"
* #CLINNOTEE ^property[0].code = #status
* #CLINNOTEE ^property[=].valueCode = #active
* #CLINNOTEE ^property[+].code = #internalId
* #CLINNOTEE ^property[=].valueCode = #22068
* #CLINNOTEE ^property[+].code = #subsumedBy
* #CLINNOTEE ^property[=].valueCode = #PATDOC
* #IMMLREV "immunization list review" "**Description:** A person reviews a list of immunizations due or received for a given patient."
* #IMMLREV ^property[0].code = #status
* #IMMLREV ^property[=].valueCode = #active
* #IMMLREV ^property[+].code = #internalId
* #IMMLREV ^property[=].valueCode = #23269
* #IMMLREV ^property[+].code = #subsumedBy
* #IMMLREV ^property[=].valueCode = #PATDOC
* #REMLREV "reminder list review" "**Description:** A person reviews a list of health care reminders for a given patient."
* #REMLREV ^property[0].code = #status
* #REMLREV ^property[=].valueCode = #active
* #REMLREV ^property[+].code = #internalId
* #REMLREV ^property[=].valueCode = #23270
* #REMLREV ^property[+].code = #subsumedBy
* #REMLREV ^property[=].valueCode = #PATDOC
* #ALLERLE "allergy list entry" "**Description:** A person enters a known allergy for a given patient."
* #ALLERLE ^property[0].code = #status
* #ALLERLE ^property[=].valueCode = #active
* #ALLERLE ^property[+].code = #internalId
* #ALLERLE ^property[=].valueCode = #23264
* #ALLERLE ^property[+].code = #subsumedBy
* #ALLERLE ^property[=].valueCode = #PATINFO
* #CDSREV "clinical decision support intervention review" "A person reviews a recommendation/assessment provided automatically by a clinical decision support application for a given patient."
* #CDSREV ^property[0].code = #status
* #CDSREV ^property[=].valueCode = #active
* #CDSREV ^property[+].code = #internalId
* #CDSREV ^property[=].valueCode = #23429
* #CDSREV ^property[+].code = #subsumedBy
* #CDSREV ^property[=].valueCode = #PATINFO
* #CLINNOTEREV "clinical note review task" "A person reviews a clinical note of a given patient."
* #CLINNOTEREV ^property[0].code = #status
* #CLINNOTEREV ^property[=].valueCode = #active
* #CLINNOTEREV ^property[+].code = #internalId
* #CLINNOTEREV ^property[=].valueCode = #22065
* #CLINNOTEREV ^property[+].code = #subsumedBy
* #CLINNOTEREV ^property[=].valueCode = #PATINFO
* #DIAGLISTREV "diagnosis list review task" "A person reviews a list of diagnoses of a given patient."
* #DIAGLISTREV ^property[0].code = #status
* #DIAGLISTREV ^property[=].valueCode = #active
* #DIAGLISTREV ^property[+].code = #internalId
* #DIAGLISTREV ^property[=].valueCode = #22060
* #DIAGLISTREV ^property[+].code = #subsumedBy
* #DIAGLISTREV ^property[=].valueCode = #PATINFO
* #IMMLE "immunization list entry" "**Description:** A person enters an immunization due or received for a given patient."
* #IMMLE ^property[0].code = #status
* #IMMLE ^property[=].valueCode = #active
* #IMMLE ^property[+].code = #internalId
* #IMMLE ^property[=].valueCode = #23265
* #IMMLE ^property[+].code = #subsumedBy
* #IMMLE ^property[=].valueCode = #PATINFO
* #LABRREV "laboratory results review task" "A person reviews a list of laboratory results of a given patient."
* #LABRREV ^property[0].code = #status
* #LABRREV ^property[=].valueCode = #active
* #LABRREV ^property[+].code = #internalId
* #LABRREV ^property[=].valueCode = #22055
* #LABRREV ^property[+].code = #subsumedBy
* #LABRREV ^property[=].valueCode = #PATINFO
* #MICRORREV "microbiology results review task" "A person reviews a list of microbiology results of a given patient."
* #MICRORREV ^property[0].code = #status
* #MICRORREV ^property[=].valueCode = #active
* #MICRORREV ^property[+].code = #internalId
* #MICRORREV ^property[=].valueCode = #22056
* #MICRORREV ^property[+].code = #subsumedBy
* #MICRORREV ^property[=].valueCode = #PATINFO
* #MLREV "medication list review task" "A person reviews a list of medication orders submitted to a given patient"
* #MLREV ^property[0].code = #status
* #MLREV ^property[=].valueCode = #active
* #MLREV ^property[+].code = #internalId
* #MLREV ^property[=].valueCode = #22053
* #MLREV ^property[+].code = #subsumedBy
* #MLREV ^property[=].valueCode = #PATINFO
* #OREV "orders review task" "A person reviews a list of orders submitted to a given patient."
* #OREV ^property[0].code = #status
* #OREV ^property[=].valueCode = #active
* #OREV ^property[+].code = #internalId
* #OREV ^property[=].valueCode = #22052
* #OREV ^property[+].code = #subsumedBy
* #OREV ^property[=].valueCode = #PATINFO
* #PATREPREV "pathology report review task" "A person reviews a pathology report of a given patient."
* #PATREPREV ^property[0].code = #status
* #PATREPREV ^property[=].valueCode = #active
* #PATREPREV ^property[+].code = #internalId
* #PATREPREV ^property[=].valueCode = #22062
* #PATREPREV ^property[+].code = #subsumedBy
* #PATREPREV ^property[=].valueCode = #PATINFO
* #PROBLISTREV "problem list review task" "A person reviews a list of problems of a given patient."
* #PROBLISTREV ^property[0].code = #status
* #PROBLISTREV ^property[=].valueCode = #active
* #PROBLISTREV ^property[+].code = #internalId
* #PROBLISTREV ^property[=].valueCode = #22059
* #PROBLISTREV ^property[+].code = #subsumedBy
* #PROBLISTREV ^property[=].valueCode = #PATINFO
* #RADREPREV "radiology report review task" "A person reviews a radiology report of a given patient."
* #RADREPREV ^property[0].code = #status
* #RADREPREV ^property[=].valueCode = #active
* #RADREPREV ^property[+].code = #internalId
* #RADREPREV ^property[=].valueCode = #22061
* #RADREPREV ^property[+].code = #subsumedBy
* #RADREPREV ^property[=].valueCode = #PATINFO
* #REMLE "reminder list entry" "**Description:** A person enters a health care reminder for a given patient."
* #REMLE ^property[0].code = #status
* #REMLE ^property[=].valueCode = #active
* #REMLE ^property[+].code = #internalId
* #REMLE ^property[=].valueCode = #23266
* #REMLE ^property[+].code = #subsumedBy
* #REMLE ^property[=].valueCode = #PATINFO
* #RISKASSESS "risk assessment instrument task" "A person reviews a Risk Assessment Instrument report of a given patient."
* #RISKASSESS ^property[0].code = #status
* #RISKASSESS ^property[=].valueCode = #active
* #RISKASSESS ^property[+].code = #internalId
* #RISKASSESS ^property[=].valueCode = #22063
* #RISKASSESS ^property[+].code = #subsumedBy
* #RISKASSESS ^property[=].valueCode = #PATINFO
* #PATPREFALT "violates stated preferences, alternate available" "**Definition:**The proposed therapy goes against preferences or consent constraints recorded in the patient's record. An alternate therapy meeting those constraints is available."
* #PATPREFALT ^property[0].code = #status
* #PATPREFALT ^property[=].valueCode = #active
* #PATPREFALT ^property[+].code = #internalId
* #PATPREFALT ^property[=].valueCode = #22836
* #PATPREFALT ^property[+].code = #subsumedBy
* #PATPREFALT ^property[=].valueCode = #PATPREF
* #PersDEID "personal de-identified information policy" "Personal policy on collection, access, use, or disclosure of de-identified information as defined by the information subject or by applicable jurisdictional law."
* #PersDEID ^property[0].code = #status
* #PersDEID ^property[=].valueCode = #active
* #PersDEID ^property[+].code = #internalId
* #PersDEID ^property[=].valueCode = #24083
* #PersDEID ^property[+].code = #subsumedBy
* #PersDEID ^property[=].valueCode = #PersIP
* #PersLDS "personal limited data set information policy" "Personal policy personal policy on collection, access, use, or disclosure of information in a limited data set by the information subject."
* #PersLDS ^property[0].code = #status
* #PersLDS ^property[=].valueCode = #active
* #PersLDS ^property[+].code = #internalId
* #PersLDS ^property[=].valueCode = #24085
* #PersLDS ^property[+].code = #subsumedBy
* #PersLDS ^property[=].valueCode = #PersIP
* #PersNSI "personal non-sensitive information policy" "Personal policy on collection, access, use, or disclosure of information deemed non-sensitive by the information subject."
* #PersNSI ^property[0].code = #status
* #PersNSI ^property[=].valueCode = #active
* #PersNSI ^property[+].code = #internalId
* #PersNSI ^property[=].valueCode = #24084
* #PersNSI ^property[+].code = #subsumedBy
* #PersNSI ^property[=].valueCode = #PersIP
* #PersPI "personal public information policy" "Personal policy on collection, access, use, or disclosure of information deemed public by the information subject."
* #PersPI ^property[0].code = #status
* #PersPI ^property[=].valueCode = #active
* #PersPI ^property[+].code = #internalId
* #PersPI ^property[=].valueCode = #24086
* #PersPI ^property[+].code = #subsumedBy
* #PersPI ^property[=].valueCode = #PersIP
* #ControlledUnclassifiedInformation "ControlledUnclassifiedInformation" "Information the US Government creates or possesses, or that an entity creates or possesses for or on behalf of the Government, that a law, regulation, or Government-wide policy requires or permits an agency to handle using safeguarding or dissemination controls. However, CUI does not include classified information (see definition above) or information a non-executive branch entity possesses and maintains in its own systems that did not come from, or was not created or possessed by or for, an executive branch agency or an entity acting for an agency. Law, regulation, or Government-wide policy may require or permit safeguarding or dissemination controls in three ways: Requiring or permitting agencies to control or protect the information but providing no specific controls, which makes the information CUI Basic; requiring or permitting agencies to control or protect the information and providing specific controls for doing so, which makes the information CUI Specified; or requiring or permitting agencies to control the information and specifying only some of those controls, which makes the information CUI Specified, but with CUI Basic controls where the authority does not specify. Based on CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html .\r\n\r\n*Usage Note:* Mandatory control marking, which must be displayed on the top portion of each rendered or printed page containing controlled information. Should be displayed at the bottom of each rendered or printed page containing controlled information. Must be displayed on each portion of controlled information at the portion level if portions are uncontrolled unclassified information. Based on CUI Marking Handbook https://www.archives.gov/files/cui/20161206-cui-marking-handbook-v1-1.pdf. For definitions of key terms see CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html."
* #ControlledUnclassifiedInformation ^property[0].code = #notSelectable
* #ControlledUnclassifiedInformation ^property[=].valueBoolean = true
* #ControlledUnclassifiedInformation ^property[+].code = #status
* #ControlledUnclassifiedInformation ^property[=].valueCode = #active
* #ControlledUnclassifiedInformation ^property[+].code = #internalId
* #ControlledUnclassifiedInformation ^property[=].valueCode = #24052
* #ControlledUnclassifiedInformation ^property[+].code = #subsumedBy
* #ControlledUnclassifiedInformation ^property[=].valueCode = #PrivacyMark
* #SecurityLabelMark "Security Label Mark" "An abstract code for displayed Security Label tags.\r\n\r\n*Usage Note:* These marks may be based on any of the HL7 Security Labeling related codes from various code systems and values sets, which are organized according to the HL7 Privacy and Security Classification System into HL7 Security Observation Type Named Tag Sets and valued with codes associated with the HL7 Security Observation Value Tag Set Names."
* #SecurityLabelMark ^property[0].code = #notSelectable
* #SecurityLabelMark ^property[=].valueBoolean = true
* #SecurityLabelMark ^property[+].code = #status
* #SecurityLabelMark ^property[=].valueCode = #active
* #SecurityLabelMark ^property[+].code = #internalId
* #SecurityLabelMark ^property[=].valueCode = #24046
* #SecurityLabelMark ^property[+].code = #subsumedBy
* #SecurityLabelMark ^property[=].valueCode = #PrivacyMark
* #CUIMark "CUI Mark" "An originator must mark, persist, display, and convey computable and renderable Controlled Unclassified Information (CUI) marks as required by policy. A recipient must consume, persist, display, and reconvey CUI marks on information received based on agreements with the originator..\r\n\r\n**Examples:** \r\n\r\n *  As CUI custodians, Federal Agencies and their contractors must mark, persist, display, and convey these marks.\r\n *  All CUI receivers must consume, persist, display, and reconvey CUI markings on information further disclosed\r\n\r\n*Usage Note:* \r\n\r\nIn accordance with US 32 CFR Part 2002 and US Executive Order 13556 Controlled Unclassified Information, US Federal Agencies and their contractors are charged with classifying and marking certain information they create as Controlled Unclassified Information (CUI).\r\n\r\nThe following definitions, which are provided for context, are based on terms defined by the CUI Glossary https://www.archives.gov/cui/registry/cui-glossary.html\r\n\r\n *  CUI is defined as \"information in any form that the Government creates or possesses, or that an entity creates or possesses for or on behalf of the Government, that a law, regulation, or Government-wide policy requires or permits an agency to handle using safeguarding or dissemination controls\"\r\n *  Designating CUI occurs when an authorized holder, consistent with US 32 CFR Part 2002 and the CUI Registry, determines that a specific item of information falls into a CUI category or subcategory.\r\n *  The designating agency is the executive branch agency that designates or approves the designation of a specific item of information as CUI.\r\n *  The authorized holder who designates the CUI must make recipients aware of the information's CUI status when disseminating that information.\r\n *  Disseminating occurs when authorized holders provide access, transmit, or transfer CUI to other authorized holders through any means, whether internal or external to the agency.\r\n\r\nOnce designated as CUI, US Federal Agencies and their contractors must assign CUI marks as prescribed by the National Archives and Records Administration (NARA) CUI Registry, and display marks as prescribed by the CUI Marking Handbook.\r\n\r\nCUI markings must be displayed on hard copy, on containers, electronic media, and to end users for IT systems.\r\n\r\nWhen HL7 content is designated as CUI, these computable markings can be interoperably conveyed using HL7 security label CUI tags, and may be included in HL7 text and narrative elements as human readable markings.\r\n\r\n**Impact of CUI markings:**\r\n\r\nCUI Custodians must enforce CUI security controls per applicable CUI policies. Federal agencies and their contractors must adhere to FISMA and NIST SP 800-53 security controls. Custodians, who are not Federal agencies or agency contractors, and are receivers of CUI, must adhere to NIST SP 800-171 security controls and those dictated by the Authorities indicated by the assigned CUI markings.\r\n\r\nFor most participants in US healthcare information exchange, including Federal Agencies and their contractors, additional controls are required by HIPAA Security standards for health information US 42 USC 1320d-2(d)(2) https://www.govinfo.gov/content/pkg/USCODE-2016-title42/pdf/USCODE-2016-title42-chap7-subchapXI-partC-sec1320d-2.pdf\r\n\r\nFederal Agencies and their contractors may be the CUI classifier of original CUI content; or a CUI derivative classifier, which reclassifies CUI content that has been aggregated with other CUI or Unclassified Uncontrolled Information (U) or dissembled from a larger CUI content; or declassifiers, depending on the designating agency's policies.\r\n\r\nApplicable CUI policies include the following and any future applicable updates to policies or laws related to CUI:\r\n\r\n *  Executive Order 13556 https://www.federalregister.gov/articles/2010/11/09/2010-28360/controlled-unclassified-information\r\n *  US 32 CFR Part 2002 https://www.govinfo.gov/content/pkg/CFR-2017-title32-vol6/pdf/CFR-2017-title32-vol6-part2002.pdf\r\n *  NIST SP 800-171 https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-171r1.pdf\r\n *  NIST SP 800-171A https://doi.org/10.6028/NIST.SP.800-171A\r\n *  CUI Marking Handbook https://www.archives.gov/files/cui/20161206-cui-marking-handbook-v1-1.pdf\r\n *  CUI Registry - Health Information Category https://www.archives.gov/cui/registry/category-detail/health-info\r\n *  CUI Registry: Limited Dissemination Controls https://www.archives.gov/cui/registry/limited-dissemination\r\n *  CUI Policy and Guidance https://www.archives.gov/cui/registry/policy-guidance"
* #CUIMark ^property[0].code = #status
* #CUIMark ^property[=].valueCode = #active
* #CUIMark ^property[+].code = #internalId
* #CUIMark ^property[=].valueCode = #24129
* #CUIMark ^property[+].code = #subsumedBy
* #CUIMark ^property[=].valueCode = #PRIVMARK
* #DENTPRG "dental program" "**Definition:** A public or government health program that administers and funds coverage for dental care to assist program eligible who meet financial and health status criteria."
* #DENTPRG ^property[0].code = #status
* #DENTPRG ^property[=].valueCode = #active
* #DENTPRG ^property[+].code = #internalId
* #DENTPRG ^property[=].valueCode = #22131
* #DENTPRG ^property[+].code = #subsumedBy
* #DENTPRG ^property[=].valueCode = #PUBLICPOL
* #DISEASEPRG "public health program" "**Definition:** A public or government health program that administers and funds coverage for health and social services to assist program eligible who meet financial and health status criteria related to a particular disease.\r\n\r\n**Example:** Reproductive health, sexually transmitted disease, and end renal disease programs."
* #DISEASEPRG ^property[0].code = #status
* #DISEASEPRG ^property[=].valueCode = #active
* #DISEASEPRG ^property[+].code = #internalId
* #DISEASEPRG ^property[=].valueCode = #22133
* #DISEASEPRG ^property[+].code = #subsumedBy
* #DISEASEPRG ^property[=].valueCode = #PUBLICPOL
* #MANDPOL "mandatory health program"
* #MANDPOL ^property[0].code = #status
* #MANDPOL ^property[=].valueCode = #active
* #MANDPOL ^property[+].code = #internalId
* #MANDPOL ^property[=].valueCode = #22149
* #MANDPOL ^property[+].code = #subsumedBy
* #MANDPOL ^property[=].valueCode = #PUBLICPOL
* #MENTPRG "mental health program" "**Definition:** Government administered and funded mental health program for beneficiaries meeting financial and mental health status criteria. Administration, funding levels, eligibility criteria, covered benefits, provider types, and financial participation are typically set by a regulatory process. Payer responsibilities for administering the program may be delegated to contractors.\r\n\r\n**Example:** In the U.S., states receive funding for substance use programs from the Substance Abuse Mental Health Administration (SAMHSA)."
* #MENTPRG ^property[0].code = #status
* #MENTPRG ^property[=].valueCode = #active
* #MENTPRG ^property[+].code = #internalId
* #MENTPRG ^property[=].valueCode = #22141
* #MENTPRG ^property[+].code = #subsumedBy
* #MENTPRG ^property[=].valueCode = #PUBLICPOL
* #SAFNET "safety net clinic program" "**Definition:** Government administered and funded program to support provision of care to underserved populations through safety net clinics.\r\n\r\n**Example:** In the U.S., safety net providers such as federally qualified health centers (FQHC) receive funding under PHSA Section 330 grants administered by the Health Resources and Services Administration."
* #SAFNET ^property[0].code = #status
* #SAFNET ^property[=].valueCode = #active
* #SAFNET ^property[+].code = #internalId
* #SAFNET ^property[=].valueCode = #22142
* #SAFNET ^property[+].code = #subsumedBy
* #SAFNET ^property[=].valueCode = #PUBLICPOL
* #SUBPRG "substance use program" "**Definition:** Government administered and funded substance use program for beneficiaries meeting financial, substance use behavior, and health status criteria. Beneficiaries may be required to enroll as a result of legal proceedings. Administration, funding levels, eligibility criteria, covered benefits, provider types, and financial participation are typically set by a regulatory process. Payer responsibilities for administering the program may be delegated to contractors.\r\n\r\n**Example:** In the U.S., states receive funding for substance use programs from the Substance Abuse Mental Health Administration (SAMHSA)."
* #SUBPRG ^property[0].code = #status
* #SUBPRG ^property[=].valueCode = #active
* #SUBPRG ^property[+].code = #internalId
* #SUBPRG ^property[=].valueCode = #22143
* #SUBPRG ^property[+].code = #subsumedBy
* #SUBPRG ^property[=].valueCode = #PUBLICPOL
* #SUBSIDIZ "subsidized health program" "**Definition:** A government health program that provides coverage for health services to persons meeting eligibility criteria such as income, location of residence, access to other coverages, health condition, and age, the cost of which is to some extent subsidized by public funds."
* #SUBSIDIZ ^property[0].code = #status
* #SUBSIDIZ ^property[=].valueCode = #active
* #SUBSIDIZ ^property[+].code = #internalId
* #SUBSIDIZ ^property[=].valueCode = #22137
* #SUBSIDIZ ^property[+].code = #subsumedBy
* #SUBSIDIZ ^property[=].valueCode = #PUBLICPOL
* #ALGY "Allergy Alert" "Proposed therapy may be inappropriate or contraindicated because of a recorded patient allergy to the proposed product. (Allergies are immune based reactions.)"
* #ALGY ^property[0].code = #status
* #ALGY ^property[=].valueCode = #active
* #ALGY ^property[+].code = #internalId
* #ALGY ^property[=].valueCode = #16674
* #ALGY ^property[+].code = #subsumedBy
* #ALGY ^property[=].valueCode = #REACT
* #INT "Intolerance Alert" "Proposed therapy may be inappropriate or contraindicated because of a recorded patient intolerance to the proposed product. (Intolerances are non-immune based sensitivities.)"
* #INT ^property[0].code = #status
* #INT ^property[=].valueCode = #active
* #INT ^property[+].code = #internalId
* #INT ^property[=].valueCode = #16673
* #INT ^property[+].code = #subsumedBy
* #INT ^property[=].valueCode = #REACT
* #NOAUTH "no disclosure without subject authorization" "Prohibition on disclosure without information subject's authorization."
* #NOAUTH ^property[0].code = #status
* #NOAUTH ^property[=].valueCode = #active
* #NOAUTH ^property[+].code = #internalId
* #NOAUTH ^property[=].valueCode = #23394
* #NOAUTH ^property[+].code = #subsumedBy
* #NOAUTH ^property[=].valueCode = #RefrainPolicy
* #NOCOLLECT "no collection" "Prohibition on collection or storage of the information."
* #NOCOLLECT ^property[0].code = #status
* #NOCOLLECT ^property[=].valueCode = #active
* #NOCOLLECT ^property[+].code = #internalId
* #NOCOLLECT ^property[=].valueCode = #23395
* #NOCOLLECT ^property[+].code = #subsumedBy
* #NOCOLLECT ^property[=].valueCode = #RefrainPolicy
* #NODSCLCD "no disclosure without consent directive" "Prohibition on disclosure without organizational approved patient restriction."
* #NODSCLCD ^property[0].code = #status
* #NODSCLCD ^property[=].valueCode = #active
* #NODSCLCD ^property[+].code = #internalId
* #NODSCLCD ^property[=].valueCode = #23396
* #NODSCLCD ^property[+].code = #subsumedBy
* #NODSCLCD ^property[=].valueCode = #RefrainPolicy
* #NODSCLCDS "no disclosure without information subject's consent directive" "Prohibition on disclosure without a consent directive from the information subject."
* #NODSCLCDS ^property[0].code = #status
* #NODSCLCDS ^property[=].valueCode = #active
* #NODSCLCDS ^property[+].code = #internalId
* #NODSCLCDS ^property[=].valueCode = #23629
* #NODSCLCDS ^property[+].code = #subsumedBy
* #NODSCLCDS ^property[=].valueCode = #RefrainPolicy
* #NOINTEGRATE "no integration" "Prohibition on Integration into other records."
* #NOINTEGRATE ^property[0].code = #status
* #NOINTEGRATE ^property[=].valueCode = #active
* #NOINTEGRATE ^property[+].code = #internalId
* #NOINTEGRATE ^property[=].valueCode = #23397
* #NOINTEGRATE ^property[+].code = #subsumedBy
* #NOINTEGRATE ^property[=].valueCode = #RefrainPolicy
* #NOLIST "no unlisted entity disclosure" "Prohibition on disclosure except to entities on specific access list."
* #NOLIST ^property[0].code = #status
* #NOLIST ^property[=].valueCode = #active
* #NOLIST ^property[+].code = #internalId
* #NOLIST ^property[=].valueCode = #23398
* #NOLIST ^property[+].code = #subsumedBy
* #NOLIST ^property[=].valueCode = #RefrainPolicy
* #NOMOU "no disclosure without MOU" "Prohibition on disclosure without an interagency service agreement or memorandum of understanding (MOU)."
* #NOMOU ^property[0].code = #status
* #NOMOU ^property[=].valueCode = #active
* #NOMOU ^property[+].code = #internalId
* #NOMOU ^property[=].valueCode = #23399
* #NOMOU ^property[+].code = #subsumedBy
* #NOMOU ^property[=].valueCode = #RefrainPolicy
* #NOORGPOL "no disclosure without organizational authorization" "Prohibition on disclosure without organizational authorization."
* #NOORGPOL ^property[0].code = #status
* #NOORGPOL ^property[=].valueCode = #active
* #NOORGPOL ^property[+].code = #internalId
* #NOORGPOL ^property[=].valueCode = #23400
* #NOORGPOL ^property[+].code = #subsumedBy
* #NOORGPOL ^property[=].valueCode = #RefrainPolicy
* #NOPAT "no disclosure to patient, family or caregivers without attending provider's authorization" "Prohibition on disclosing information to patient, family or caregivers without attending provider's authorization.\r\n\r\n*Usage Note:* The information may be labeled with the ActInformationSensitivity TBOO code, triggering application of this RefrainPolicy code as a handling caveat controlling access.\r\n\r\nMaps to FHIR NOPAT: Typically, this is used on an Alert resource, when the alert records information on patient abuse or non-compliance.\r\n\r\nFHIR print name is \"keep information from patient\". Maps to the French realm - code: INVISIBLE\\_PATIENT.\r\n\r\n *  displayName: Document non visible par le patient\r\n *  codingScheme: 1.2.250.1.213.1.1.4.13\r\n\r\nFrench use case: A label for documents that the author chose to hide from the patient until the content can be disclose to the patient in a face to face meeting between a healthcare professional and the patient (in French law some results like cancer diagnosis or AIDS diagnosis must be announced to the patient by a healthcare professional and should not be find out by the patient alone)."
* #NOPAT ^property[0].code = #status
* #NOPAT ^property[=].valueCode = #active
* #NOPAT ^property[+].code = #internalId
* #NOPAT ^property[=].valueCode = #23657
* #NOPAT ^property[+].code = #subsumedBy
* #NOPAT ^property[=].valueCode = #RefrainPolicy
* #NOPERSISTP "no collection beyond purpose of use" "Prohibition on collection of the information beyond time necessary to accomplish authorized purpose of use is prohibited."
* #NOPERSISTP ^property[0].code = #status
* #NOPERSISTP ^property[=].valueCode = #active
* #NOPERSISTP ^property[+].code = #internalId
* #NOPERSISTP ^property[=].valueCode = #23401
* #NOPERSISTP ^property[+].code = #subsumedBy
* #NOPERSISTP ^property[=].valueCode = #RefrainPolicy
* #NORDSCLCD "no redisclosure without consent directive" "Prohibition on redisclosure without patient consent directive."
* #NORDSCLCD ^property[0].code = #status
* #NORDSCLCD ^property[=].valueCode = #active
* #NORDSCLCD ^property[+].code = #synonymCode
* #NORDSCLCD ^property[=].valueCode = #NORDSLCD
* #NORDSCLCD ^property[+].code = #internalId
* #NORDSCLCD ^property[=].valueCode = #23402
* #NORDSCLCD ^property[+].code = #subsumedBy
* #NORDSCLCD ^property[=].valueCode = #RefrainPolicy
* #NORDSLCD "no redisclosure without consent directive" "Prohibition on redisclosure without patient consent directive."
* #NORDSLCD ^property[0].code = #status
* #NORDSLCD ^property[=].valueCode = #retired
* #NORDSLCD ^property[+].code = #synonymCode
* #NORDSLCD ^property[=].valueCode = #NORDSCLCD
* #NORDSLCD ^property[+].code = #internalId
* #NORDSLCD ^property[=].valueCode = #23402
* #NORDSLCD ^property[+].code = #subsumedBy
* #NORDSLCD ^property[=].valueCode = #RefrainPolicy
* #NORDSCLCDS "no redisclosure without information subject's consent directive" "Prohibition on redisclosure without a consent directive from the information subject."
* #NORDSCLCDS ^property[0].code = #status
* #NORDSCLCDS ^property[=].valueCode = #active
* #NORDSCLCDS ^property[+].code = #internalId
* #NORDSCLCDS ^property[=].valueCode = #23630
* #NORDSCLCDS ^property[+].code = #subsumedBy
* #NORDSCLCDS ^property[=].valueCode = #RefrainPolicy
* #NORDSCLW "no disclosure without jurisdictional authorization" "Prohibition on disclosure without authorization under jurisdictional law."
* #NORDSCLW ^property[0].code = #status
* #NORDSCLW ^property[=].valueCode = #active
* #NORDSCLW ^property[+].code = #internalId
* #NORDSCLW ^property[=].valueCode = #23403
* #NORDSCLW ^property[+].code = #subsumedBy
* #NORDSCLW ^property[=].valueCode = #RefrainPolicy
* #NORELINK "no relinking" "Prohibition on associating de-identified or pseudonymized information with other information in a manner that could or does result in disclosing information intended to be masked."
* #NORELINK ^property[0].code = #status
* #NORELINK ^property[=].valueCode = #active
* #NORELINK ^property[+].code = #internalId
* #NORELINK ^property[=].valueCode = #23404
* #NORELINK ^property[+].code = #subsumedBy
* #NORELINK ^property[=].valueCode = #RefrainPolicy
* #NOREUSE "no reuse beyond purpose of use" "Prohibition on use of the information beyond the purpose of use initially authorized."
* #NOREUSE ^property[0].code = #status
* #NOREUSE ^property[=].valueCode = #active
* #NOREUSE ^property[+].code = #internalId
* #NOREUSE ^property[=].valueCode = #23405
* #NOREUSE ^property[+].code = #subsumedBy
* #NOREUSE ^property[=].valueCode = #RefrainPolicy
* #NOVIP "no unauthorized VIP disclosure" "Prohibition on disclosure except to principals with access permission to specific VIP information."
* #NOVIP ^property[0].code = #status
* #NOVIP ^property[=].valueCode = #active
* #NOVIP ^property[+].code = #internalId
* #NOVIP ^property[=].valueCode = #23406
* #NOVIP ^property[+].code = #subsumedBy
* #NOVIP ^property[=].valueCode = #RefrainPolicy
* #ORCON "no disclosure without originator authorization" "Prohibition on disclosure except as permitted by the information originator."
* #ORCON ^property[0].code = #status
* #ORCON ^property[=].valueCode = #active
* #ORCON ^property[+].code = #internalId
* #ORCON ^property[=].valueCode = #23407
* #ORCON ^property[+].code = #subsumedBy
* #ORCON ^property[=].valueCode = #RefrainPolicy
* #WELLREMLE "wellness reminder list entry" "**Description:** A person enters a wellness or preventive care reminder for a given patient."
* #WELLREMLE ^property[0].code = #status
* #WELLREMLE ^property[=].valueCode = #active
* #WELLREMLE ^property[+].code = #internalId
* #WELLREMLE ^property[=].valueCode = #23267
* #WELLREMLE ^property[+].code = #subsumedBy
* #WELLREMLE ^property[=].valueCode = #REMLE
* #WELLREMLREV "wellness reminder list review" "**Description:** A person reviews a list of wellness or preventive care reminders for a given patient."
* #WELLREMLREV ^property[0].code = #status
* #WELLREMLREV ^property[=].valueCode = #active
* #WELLREMLREV ^property[+].code = #internalId
* #WELLREMLREV ^property[=].valueCode = #23271
* #WELLREMLREV ^property[+].code = #subsumedBy
* #WELLREMLREV ^property[=].valueCode = #REMLREV
* #MAXOCCURS "repetitions above maximum" "**Description:**The number of repeating elements is above the maximum number of repetitions allowed."
* #MAXOCCURS ^property[0].code = #status
* #MAXOCCURS ^property[=].valueCode = #active
* #MAXOCCURS ^property[+].code = #internalId
* #MAXOCCURS ^property[=].valueCode = #21664
* #MAXOCCURS ^property[+].code = #subsumedBy
* #MAXOCCURS ^property[=].valueCode = #REP_RANGE
* #MINOCCURS "repetitions below minimum" "**Description:**The number of repeating elements is below the minimum number of repetitions allowed."
* #MINOCCURS ^property[0].code = #status
* #MINOCCURS ^property[=].valueCode = #active
* #MINOCCURS ^property[+].code = #internalId
* #MINOCCURS ^property[=].valueCode = #21663
* #MINOCCURS ^property[+].code = #subsumedBy
* #MINOCCURS ^property[=].valueCode = #REP_RANGE
* #RSDID "de-identified information access" "**Definition:** Consent to have de-identified healthcare information in an electronic health record that is accessed for research purposes, but without consent to re-identify the information under any circumstance."
* #RSDID ^property[0].code = #status
* #RSDID ^property[=].valueCode = #active
* #RSDID ^property[+].code = #internalId
* #RSDID ^property[=].valueCode = #22207
* #RSDID ^property[+].code = #subsumedBy
* #RSDID ^property[=].valueCode = #RESEARCH
* #RSREID "re-identifiable information access" "**Definition:** Consent to have de-identified healthcare information in an electronic health record that is accessed for research purposes re-identified under specific circumstances outlined in the consent.\r\n\r\n**Example::** Where there is a need to inform the subject of potential health issues."
* #RSREID ^property[0].code = #status
* #RSREID ^property[=].valueCode = #active
* #RSREID ^property[+].code = #internalId
* #RSREID ^property[=].valueCode = #22208
* #RSREID ^property[+].code = #subsumedBy
* #RSREID ^property[=].valueCode = #RESEARCH
* #RFC "Refill - Complete" "A refill where the quantity supplied is equal to one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a complete fill would be for the full 90 tablets.)"
* #RFC ^property[0].code = #status
* #RFC ^property[=].valueCode = #active
* #RFC ^property[+].code = #internalId
* #RFC ^property[=].valueCode = #16216
* #RFC ^property[+].code = #subsumedBy
* #RFC ^property[=].valueCode = #RF
* #RFF "Refill (First fill this facility)" "The first fill against an order that has already been filled at least once at another facility."
* #RFF ^property[0].code = #status
* #RFF ^property[=].valueCode = #active
* #RFF ^property[+].code = #internalId
* #RFF ^property[=].valueCode = #16218
* #RFF ^property[+].code = #subsumedBy
* #RFF ^property[=].valueCode = #RF
* #RFP "Refill - Part Fill" "A refill where the quantity supplied is less than one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a partial fill might be for only 30 tablets.)"
* #RFP ^property[0].code = #status
* #RFP ^property[=].valueCode = #active
* #RFP ^property[+].code = #internalId
* #RFP ^property[=].valueCode = #16217
* #RFP ^property[+].code = #subsumedBy
* #RFP ^property[=].valueCode = #RF
* #RFS "refill partial strength" "A fill against an order that has already been filled (or partially filled) at least once and where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #RFS ^property[0].code = #status
* #RFS ^property[=].valueCode = #active
* #RFS ^property[+].code = #internalId
* #RFS ^property[=].valueCode = #21819
* #RFS ^property[+].code = #subsumedBy
* #RFS ^property[=].valueCode = #RF
* #TB "Trial Balance" "A fill where the remainder of a 'complete' fill is provided after a trial fill has been provided."
* #TB ^property[0].code = #status
* #TB ^property[=].valueCode = #active
* #TB ^property[+].code = #internalId
* #TB ^property[=].valueCode = #16213
* #TB ^property[+].code = #subsumedBy
* #TB ^property[=].valueCode = #RF
* #RFCS "refill complete partial strength" "A refill where the quantity supplied is equal to one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a complete fill would be for the full 90 tablets.) and where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #RFCS ^property[0].code = #status
* #RFCS ^property[=].valueCode = #active
* #RFCS ^property[+].code = #internalId
* #RFCS ^property[=].valueCode = #21820
* #RFCS ^property[+].code = #subsumedBy
* #RFCS ^property[=].valueCode = #RFC
* #RFFS "refill partial strength (first fill this facility)" "The first fill against an order that has already been filled at least once at another facility and where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #RFFS ^property[0].code = #status
* #RFFS ^property[=].valueCode = #active
* #RFFS ^property[+].code = #internalId
* #RFFS ^property[=].valueCode = #21821
* #RFFS ^property[+].code = #subsumedBy
* #RFFS ^property[=].valueCode = #RFF
* #RFPS "refill part fill partial strength" "A refill where the quantity supplied is less than one full repetition of the ordered amount. (e.g. If the order was 90 tablets, 3 refills, a partial fill might be for only 30 tablets.) and where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #RFPS ^property[0].code = #status
* #RFPS ^property[=].valueCode = #active
* #RFPS ^property[+].code = #internalId
* #RFPS ^property[=].valueCode = #21822
* #RFPS ^property[+].code = #subsumedBy
* #RFPS ^property[=].valueCode = #RFP
* #FALLRISK "falls risk assessment instrument task" "A person reviews a Falls Risk Assessment Instrument report of a given patient."
* #FALLRISK ^property[0].code = #status
* #FALLRISK ^property[=].valueCode = #active
* #FALLRISK ^property[+].code = #internalId
* #FALLRISK ^property[=].valueCode = #22064
* #FALLRISK ^property[+].code = #subsumedBy
* #FALLRISK ^property[=].valueCode = #RISKASSESS
* #RALG "Related Allergy Alert" "Proposed therapy may be inappropriate or contraindicated because of a recorded patient allergy to a cross-sensitivity related product. (Allergies are immune based reactions.)"
* #RALG ^property[0].code = #status
* #RALG ^property[=].valueCode = #active
* #RALG ^property[+].code = #internalId
* #RALG ^property[=].valueCode = #16678
* #RALG ^property[+].code = #subsumedBy
* #RALG ^property[=].valueCode = #RREACT
* #RAR "Related Prior Reaction Alert" "Proposed therapy may be inappropriate or contraindicated because of a recorded prior adverse reaction to a cross-sensitivity related product."
* #RAR ^property[0].code = #status
* #RAR ^property[=].valueCode = #active
* #RAR ^property[+].code = #internalId
* #RAR ^property[=].valueCode = #16679
* #RAR ^property[+].code = #subsumedBy
* #RAR ^property[=].valueCode = #RREACT
* #RINT "Related Intolerance Alert" "Proposed therapy may be inappropriate or contraindicated because of a recorded patient intolerance to a cross-sensitivity related product. (Intolerances are non-immune based sensitivities.)"
* #RINT ^property[0].code = #status
* #RINT ^property[=].valueCode = #active
* #RINT ^property[+].code = #internalId
* #RINT ^property[=].valueCode = #16677
* #RINT ^property[+].code = #subsumedBy
* #RINT ^property[=].valueCode = #RREACT
* #SECALTINTOBS "security alteration integrity observation" "Type of security metadata observation made about the alteration integrity of an IT resource (data, information object, service, or system capability), which indicates the mechanism used for authorized transformations of the resource.\r\n\r\n**Examples:** Types of security alteration integrity observation metadata, which may value the observation with a code used to indicate the mechanism used for authorized transformation of an IT resource, including:\r\n\r\n *  translation\r\n *  syntactic transformation\r\n *  semantic mapping\r\n *  redaction\r\n *  masking\r\n *  pseudonymization\r\n *  anonymization"
* #SECALTINTOBS ^property[0].code = #status
* #SECALTINTOBS ^property[=].valueCode = #active
* #SECALTINTOBS ^property[+].code = #internalId
* #SECALTINTOBS ^property[=].valueCode = #23478
* #SECALTINTOBS ^property[+].code = #subsumedBy
* #SECALTINTOBS ^property[=].valueCode = #SECINTOBS
* #SECDATINTOBS "security data integrity observation" "Type of security metadata observation made about the data integrity of an IT resource (data, information object, service, or system capability), which indicates the security mechanism used to preserve resource accuracy and consistency. Data integrity is defined by ISO 22600-23.3.21 as: \"The property that data has not been altered or destroyed in an unauthorized manner\", and by ISO/IEC 2382-8: The property of data whose accuracy and consistency are preserved regardless of changes made.\"\r\n\r\n**Examples:** Types of security data integrity observation metadata, which may value the observation, include cryptographic hash function and digital signature."
* #SECDATINTOBS ^property[0].code = #status
* #SECDATINTOBS ^property[=].valueCode = #active
* #SECDATINTOBS ^property[+].code = #internalId
* #SECDATINTOBS ^property[=].valueCode = #23479
* #SECDATINTOBS ^property[+].code = #subsumedBy
* #SECDATINTOBS ^property[=].valueCode = #SECINTOBS
* #SECINTCONOBS "security integrity confidence observation" "Type of security metadata observation made about the integrity confidence of an IT resource (data, information object, service, or system capability), which may be used to make access control decisions.\r\n\r\n**Examples:** Types of security integrity confidence observation metadata, which may value the observation, include highly reliable, uncertain reliability, and not reliable.\r\n\r\n*Usage Note:* A security integrity confidence observation on an Act may indicate that a valued Act.uncertaintycode attribute has been overridden by the entity responsible for ascribing the SecurityIntegrityConfidenceObservationValue. This supports the business requirements for increasing or decreasing the assessment of the reliability or trustworthiness of an IT resource based on parameters beyond the original assignment of an Act statement level of uncertainty."
* #SECINTCONOBS ^property[0].code = #status
* #SECINTCONOBS ^property[=].valueCode = #active
* #SECINTCONOBS ^property[+].code = #internalId
* #SECINTCONOBS ^property[=].valueCode = #23477
* #SECINTCONOBS ^property[+].code = #subsumedBy
* #SECINTCONOBS ^property[=].valueCode = #SECINTOBS
* #SECINTPRVOBS "security integrity provenance observation" "Type of security metadata observation made about the provenance integrity of an IT resource (data, information object, service, or system capability), which indicates the lifecycle completeness of an IT resource in terms of workflow status such as its creation, modification, suspension, and deletion; locations in which the resource has been collected or archived, from which it may be retrieved, and the history of its distribution and disclosure. Integrity provenance metadata about an IT resource may be used to assess its veracity, reliability, and trustworthiness.\r\n\r\n**Examples:** Types of security integrity provenance observation metadata, which may value the observation about an IT resource, include:\r\n\r\n *  completeness or workflow status, such as authentication\r\n *  the entity responsible for original authoring or informing about an IT resource\r\n *  the entity responsible for a report or assertion about an IT resource relayed \"second-hand\"\r\n *  the entity responsible for excerpting, transforming, or compiling an IT resource"
* #SECINTPRVOBS ^property[0].code = #notSelectable
* #SECINTPRVOBS ^property[=].valueBoolean = true
* #SECINTPRVOBS ^property[+].code = #status
* #SECINTPRVOBS ^property[=].valueCode = #active
* #SECINTPRVOBS ^property[+].code = #internalId
* #SECINTPRVOBS ^property[=].valueCode = #23480
* #SECINTPRVOBS ^property[+].code = #subsumedBy
* #SECINTPRVOBS ^property[=].valueCode = #SECINTOBS
* #SECINTSTOBS "security integrity status observation" "Type of security metadata observation made about the integrity status of an IT resource (data, information object, service, or system capability), which may be used to make access control decisions. Indicates the completeness of an IT resource in terms of workflow status, which may impact users that are authorized to access and use the resource.\r\n\r\n**Examples:** Types of security integrity status observation metadata, which may value the observation, include codes from the HL7 DocumentCompletion code system such as legally authenticated, in progress, and incomplete."
* #SECINTSTOBS ^property[0].code = #status
* #SECINTSTOBS ^property[=].valueCode = #active
* #SECINTSTOBS ^property[+].code = #internalId
* #SECINTSTOBS ^property[=].valueCode = #23476
* #SECINTSTOBS ^property[+].code = #subsumedBy
* #SECINTSTOBS ^property[=].valueCode = #SECINTOBS
* #SECINTPRVABOBS "security integrity provenance asserted by observation" "Type of security metadata observation made about the integrity provenance of an IT resource (data, information object, service, or system capability), which indicates the entity that made assertions about the resource. The asserting entity may not be the original informant about the resource.\r\n\r\n**Examples:** Types of security integrity provenance asserted by observation metadata, which may value the observation, including:\r\n\r\n *  assertions about an IT resource by a patient\r\n *  assertions about an IT resource by a clinician\r\n *  assertions about an IT resource by a device"
* #SECINTPRVABOBS ^property[0].code = #status
* #SECINTPRVABOBS ^property[=].valueCode = #active
* #SECINTPRVABOBS ^property[+].code = #internalId
* #SECINTPRVABOBS ^property[=].valueCode = #23482
* #SECINTPRVABOBS ^property[+].code = #subsumedBy
* #SECINTPRVABOBS ^property[=].valueCode = #SECINTPRVOBS
* #SECINTPRVRBOBS "security integrity provenance reported by observation" "Type of security metadata observation made about the integrity provenance of an IT resource (data, information object, service, or system capability), which indicates the entity that reported the existence of the resource. The reporting entity may not be the original author of the resource.\r\n\r\n**Examples:** Types of security integrity provenance reported by observation metadata, which may value the observation, include:\r\n\r\n *  reports about an IT resource by a patient\r\n *  reports about an IT resource by a clinician\r\n *  reports about an IT resource by a device"
* #SECINTPRVRBOBS ^property[0].code = #status
* #SECINTPRVRBOBS ^property[=].valueCode = #active
* #SECINTPRVRBOBS ^property[+].code = #internalId
* #SECINTPRVRBOBS ^property[=].valueCode = #23481
* #SECINTPRVRBOBS ^property[+].code = #subsumedBy
* #SECINTPRVRBOBS ^property[=].valueCode = #SECINTPRVOBS
* #SECCATOBS "security category observation" "Type of security metadata observation made about the category of an IT resource (data, information object, service, or system capability), which may be used to make access control decisions. Security category metadata is defined by ISO/IEC 2382-8:1998(E/F)/ T-REC-X.812-1995 as: \"A nonhierarchical grouping of sensitive information used to control access to data more finely than with hierarchical security classification alone.\"\r\n\r\n*Rationale:* A security category observation supports requirement to specify the type of IT resource to facilitate application of appropriate levels of information security according to a range of levels of impact or consequences that might result from the unauthorized disclosure, modification, or use of the information or information system. A resource is assigned to a specific category of information (e.g., privacy, medical, proprietary, financial, investigative, contractor sensitive, security management) defined by an organization or in some instances, by a specific law, Executive Order, directive, policy, or regulation. \\[FIPS 199\\]\r\n\r\n**Examples:** Types of security categories include:\r\n\r\n *  Compartment: A division of data into isolated blocks with separate security controls for the purpose of reducing risk. (ISO 2382-8). A security label tag that \"segments\" an IT resource by indicating that access and use is restricted to members of a defined community or project. (HL7 Healthcare Classification System)\r\n *  Sensitivity: The characteristic of an IT resource which implies its value or importance and may include its vulnerability. (ISO 7492-2) Privacy metadata for information perceived as undesirable to share. (HL7 Healthcare Classification System)"
* #SECCATOBS ^property[0].code = #status
* #SECCATOBS ^property[=].valueCode = #active
* #SECCATOBS ^property[+].code = #internalId
* #SECCATOBS ^property[=].valueCode = #23473
* #SECCATOBS ^property[+].code = #subsumedBy
* #SECCATOBS ^property[=].valueCode = #SECOBS
* #SECCLASSOBS "security classification observation" "Type of security metadata observation made about the classification of an IT resource (data, information object, service, or system capability), which may be used to make access control decisions. Security classification is defined by ISO/IEC 2382-8:1998(E/F)/ T-REC-X.812-1995 as: \"The determination of which specific degree of protection against access the data or information requires, together with a designation of that degree of protection.\" Security classification metadata is based on an analysis of applicable policies and the risk of financial, reputational, or other harm that could result from unauthorized disclosure.\r\n\r\n*Rationale:* A security classification observation may indicate that the confidentiality level indicated by an Act or Role confidentiality attribute has been overridden by the entity responsible for ascribing the SecurityClassificationObservationValue. This supports the business requirement for increasing or decreasing the level of confidentiality (classification or declassification) based on parameters beyond the original assignment of an Act or Role confidentiality.\r\n\r\n**Examples:** Types of security classification include: HL7 Confidentiality Codes such as very restricted, unrestricted, and normal. Intelligence community examples include top secret, secret, and confidential.\r\n\r\n*Usage Note:* Security classification observation type codes designate security label field types, which are valued with an applicable SecurityClassificationObservationValue code as the \"security label tag\"."
* #SECCLASSOBS ^property[0].code = #status
* #SECCLASSOBS ^property[=].valueCode = #active
* #SECCLASSOBS ^property[+].code = #internalId
* #SECCLASSOBS ^property[=].valueCode = #23472
* #SECCLASSOBS ^property[+].code = #subsumedBy
* #SECCLASSOBS ^property[=].valueCode = #SECOBS
* #SECCONOBS "security control observation" "Type of security metadata observation made about the control of an IT resource (data, information object, service, or system capability), which may be used to make access control decisions. Security control metadata convey instructions to users and receivers for secure distribution, transmission, and storage; dictate obligations or mandated actions; specify any action prohibited by refrain policy such as dissemination controls; and stipulate the permissible purpose of use of an IT resource.\r\n\r\n*Rationale:* A security control observation supports requirement to specify applicable management, operational, and technical controls (i.e., safeguards or countermeasures) prescribed for an information system to protect the confidentiality, integrity, and availability of the system and its information. \\[FIPS 199\\]\r\n\r\n**Examples:** Types of security control metadata include:\r\n\r\n *  handling caveats\r\n *  dissemination controls\r\n *  obligations\r\n *  refrain policies\r\n *  purpose of use constraints"
* #SECCONOBS ^property[0].code = #status
* #SECCONOBS ^property[=].valueCode = #active
* #SECCONOBS ^property[+].code = #internalId
* #SECCONOBS ^property[=].valueCode = #23474
* #SECCONOBS ^property[+].code = #subsumedBy
* #SECCONOBS ^property[=].valueCode = #SECOBS
* #SECINTOBS "security integrity observation" "Type of security metadata observation made about the integrity of an IT resource (data, information object, service, or system capability), which may be used to make access control decisions.\r\n\r\n*Rationale:* A security integrity observation supports the requirement to guard against improper information modification or destruction, and includes ensuring information non-repudiation and authenticity. (44 U.S.C., SEC. 3542)\r\n\r\n**Examples:** Types of security integrity metadata include:\r\n\r\n *  Integrity status, which indicates the completeness or workflow status of an IT resource (data, information object, service, or system capability)\r\n *  Integrity confidence, which indicates the reliability and trustworthiness of an IT resource\r\n *  Integrity control, which indicates pertinent handling caveats, obligations, refrain policies, and purpose of use for the resource\r\n *  Data integrity, which indicate the security mechanisms used to ensure that the accuracy and consistency are preserved regardless of changes made (ISO/IEC DIS 2382-8)\r\n *  Alteration integrity, which indicate the security mechanisms used for authorized transformations of the resource\r\n *  Integrity provenance, which indicates the entity responsible for a report or assertion relayed \"second-hand\" about an IT resource"
* #SECINTOBS ^property[0].code = #status
* #SECINTOBS ^property[=].valueCode = #active
* #SECINTOBS ^property[+].code = #internalId
* #SECINTOBS ^property[=].valueCode = #23475
* #SECINTOBS ^property[+].code = #subsumedBy
* #SECINTOBS ^property[=].valueCode = #SECOBS
* #SECTRSTOBS "SECTRSTOBS" "An observation identifying trust metadata about an IT resource (data, information object, service, or system capability), which may be used as a trust attribute to populate a computable trust policy, trust credential, trust assertion, or trust label field in a security label or trust policy, which are principally used for authentication, authorization, and access control decisions."
* #SECTRSTOBS ^property[0].code = #notSelectable
* #SECTRSTOBS ^property[=].valueBoolean = true
* #SECTRSTOBS ^property[+].code = #status
* #SECTRSTOBS ^property[=].valueCode = #active
* #SECTRSTOBS ^property[+].code = #internalId
* #SECTRSTOBS ^property[=].valueCode = #23665
* #SECTRSTOBS ^property[+].code = #subsumedBy
* #SECTRSTOBS ^property[=].valueCode = #SECOBS
* #TRSTACCRDOBS "trust accreditation observation" "Type of security metadata observation made about the formal declaration by an authority or neutral third party that validates the technical, security, trust, and business practice conformance of Trust Agents to facilitate security, interoperability, and trust among participants within a security domain or trust framework."
* #TRSTACCRDOBS ^property[0].code = #status
* #TRSTACCRDOBS ^property[=].valueCode = #active
* #TRSTACCRDOBS ^property[+].code = #internalId
* #TRSTACCRDOBS ^property[=].valueCode = #23667
* #TRSTACCRDOBS ^property[+].code = #subsumedBy
* #TRSTACCRDOBS ^property[=].valueCode = #SECTRSTOBS
* #TRSTAGREOBS "trust agreement observation" "Type of security metadata observation made about privacy and security requirements with which a security domain must comply. \\[ISO IEC 10181-1\\]"
* #TRSTAGREOBS ^property[0].code = #status
* #TRSTAGREOBS ^property[=].valueCode = #active
* #TRSTAGREOBS ^property[+].code = #internalId
* #TRSTAGREOBS ^property[=].valueCode = #23666
* #TRSTAGREOBS ^property[+].code = #subsumedBy
* #TRSTAGREOBS ^property[=].valueCode = #SECTRSTOBS
* #TRSTCERTOBS "trust certificate observation" "Type of security metadata observation made about a set of security-relevant data issued by a security authority or trusted third party, together with security information which is used to provide the integrity and data origin authentication services for an IT resource (data, information object, service, or system capability). \\[Based on ISO IEC 10181-1\\]\r\n\r\n**For example,**\r\n\r\n *  A Certificate Policy (CP), which is a named set of rules that indicates the applicability of a certificate to a particular community and/or class of application with common security requirements. For example, a particular Certificate Policy might indicate the applicability of a type of certificate to the authentication of electronic data interchange transactions for the trading of goods within a given price range. \\[Trust Service Principles and Criteria for Certification Authorities Version 2.0 March 2011 Copyright 2011 by Canadian Institute of Chartered Accountants.\r\n *  A Certificate Practice Statement (CSP), which is a statement of the practices which an Authority employs in issuing and managing certificates. \\[Trust Service Principles and Criteria for Certification Authorities Version 2.0 March 2011 Copyright 2011 by Canadian Institute of Chartered Accountants.\\]"
* #TRSTCERTOBS ^property[0].code = #status
* #TRSTCERTOBS ^property[=].valueCode = #active
* #TRSTCERTOBS ^property[+].code = #internalId
* #TRSTCERTOBS ^property[=].valueCode = #23668
* #TRSTCERTOBS ^property[+].code = #subsumedBy
* #TRSTCERTOBS ^property[=].valueCode = #SECTRSTOBS
* #TRSTFWKOBS "trust framework observation" "Type of security metadata observation made about a complete set of contracts, regulations or commitments that enable participating actors to rely on certain assertions by other actors to fulfill their information security requirements. \\[Kantara Initiative\\]"
* #TRSTFWKOBS ^property[0].code = #status
* #TRSTFWKOBS ^property[=].valueCode = #active
* #TRSTFWKOBS ^property[+].code = #internalId
* #TRSTFWKOBS ^property[=].valueCode = #23670
* #TRSTFWKOBS ^property[+].code = #subsumedBy
* #TRSTFWKOBS ^property[=].valueCode = #SECTRSTOBS
* #TRSTLOAOBS "trust assurance observation" "Type of security metadata observation made about the digital quality or reliability of a trust assertion, activity, capability, information exchange, mechanism, process, or protocol."
* #TRSTLOAOBS ^property[0].code = #status
* #TRSTLOAOBS ^property[=].valueCode = #active
* #TRSTLOAOBS ^property[+].code = #internalId
* #TRSTLOAOBS ^property[=].valueCode = #23669
* #TRSTLOAOBS ^property[+].code = #subsumedBy
* #TRSTLOAOBS ^property[=].valueCode = #SECTRSTOBS
* #TRSTMECOBS "trust mechanism observation" "Type of security metadata observation made about a security architecture system component that supports enforcement of security policies."
* #TRSTMECOBS ^property[0].code = #status
* #TRSTMECOBS ^property[=].valueCode = #active
* #TRSTMECOBS ^property[+].code = #internalId
* #TRSTMECOBS ^property[=].valueCode = #23671
* #TRSTMECOBS ^property[+].code = #subsumedBy
* #TRSTMECOBS ^property[=].valueCode = #SECTRSTOBS
* #ConfidentialMark "confidential mark" "A displayed mark rendered as \"Confidential\", which indicates to end users that the electronic or hardcopy information they are viewing must be protected at a level of protection as dictated by applicable policy.\r\n\r\nMay be used to indicate proprietary or classified information that is, for example, business, intelligence, or project related, e.g., secret ingredients in a therapeutic substance; location of disaster health facilities and providers, or the name of a manufacturer or project contractor. Example use cases include a display to alert authorized business system users that they are viewing additionally protected proprietary and business confidential information deemed proprietary under an applicable jurisdictional or organizational policy.\r\n\r\n*Usage Note:* \r\n\r\nThe ConfidentialMark (confidential mark) description is based on the HL7 Confidentiality Concept Domain: Types of privacy metadata classifying an IT resource (data, information object, service, or system capability) according to its level of sensitivity, which is based on an analysis of applicable privacy policies and the risk of financial, reputational, or other harm to an individual or entity that could result if made available or disclosed to unauthorized individuals, entities, or processes.\r\n\r\n*Usage Note:* Confidentiality codes may be used in security labels and privacy markings to classify IT resources based on sensitivity to indicate the obligation of a custodian or receiver to ensure that the protected resource is not made available or disclosed to individuals, entities, or processes (security principals) unless authorized per applicable policies. Confidentiality codes may also be used in the clearances of initiators requesting access to protected resources.\r\n\r\nMap: Definition aligns with ISO 7498-2:1989 - Confidentiality is the property that information is not made available or disclosed to unauthorized individuals, entities, or processes."
* #ConfidentialMark ^property[0].code = #status
* #ConfidentialMark ^property[=].valueCode = #active
* #ConfidentialMark ^property[+].code = #internalId
* #ConfidentialMark ^property[=].valueCode = #24048
* #ConfidentialMark ^property[+].code = #subsumedBy
* #ConfidentialMark ^property[=].valueCode = #SecurityLabelMark
* #COPYMark "copy of original mark" "A displayed mark indicating that the electronic or hardcopy information is a copy of an authoritative source for the information. The copy is not considered authoritative but is a duplicate of the authoritative content.\r\n\r\n*Usage Note:* Applicable policy will dictate how the COPY mark will be displayed. Typical renderings include the marking appearing at the top or \"banner\" of electronic or hardcopy pages, or as watermarks set diagonally across each page."
* #COPYMark ^property[0].code = #status
* #COPYMark ^property[=].valueCode = #active
* #COPYMark ^property[+].code = #internalId
* #COPYMark ^property[=].valueCode = #24051
* #COPYMark ^property[+].code = #subsumedBy
* #COPYMark ^property[=].valueCode = #SecurityLabelMark
* #DeliverToAddresseeOnlyMark "deliver only to addressee mark" "A displayed mark on an electronic transmission or physical container such as an electronic transmittal wrapper, batch file, message header, or a physical envelop or package indicating that the contents, whether electronic or hardcopy information, must only be delivered to the authorized recipient(s) named in the address.\r\n\r\n*Usage Note:* Required by US 32 CRF Part 2002 for container storing or transmitting CUI."
* #DeliverToAddresseeOnlyMark ^property[0].code = #status
* #DeliverToAddresseeOnlyMark ^property[=].valueCode = #active
* #DeliverToAddresseeOnlyMark ^property[+].code = #internalId
* #DeliverToAddresseeOnlyMark ^property[=].valueCode = #24050
* #DeliverToAddresseeOnlyMark ^property[+].code = #subsumedBy
* #DeliverToAddresseeOnlyMark ^property[=].valueCode = #SecurityLabelMark
* #RedisclosureProhibitionMark "prohibition against redisclosure mark" "A displayed mark rendered to end users as a prescribed text warning that the electronic or hardcopy information shall not be further disclosed without consent of the subject of the information. For example, in order to warn a recipient of 42 CFR Part 2 information of the redisclosure restrictions, the rule mandates that end users receive a written prohibition against redisclosure unless authorized by patient consent or otherwise permitted by Part 2. See 42 CFR §  2.32 Prohibition on re-disclosure. (a)Notice to accompany disclosure. Each disclosure made with the patient's written consent must be accompanied by one of the following written statements: (1) This information has been disclosed to you from records protected by federal confidentiality rules ( 42 CFR part 2). The federal rules prohibit you from making any further disclosure of information in this record that identifies a patient as having or having had a substance use disorder either directly, by reference to publicly available information, or through verification of such identification by another person unless further disclosure is expressly permitted by the written consent of the individual whose information is being disclosed or as otherwise permitted by 42 CFR part 2. A general authorization for the release of medical or other information is NOT sufficient for this purpose (see §  2.31). The federal rules restrict any use of the information to investigate or prosecute with regard to a crime any patient with a substance use disorder, except as provided at § §  2.12(c)(5) and 2.65; or (2) 42 CFR part 2 prohibits unauthorized disclosure of these records. https://www.law.cornell.edu/cfr/text/42/2.32\r\n\r\n*Usage Note:* Example of marking requirement from SAMHSA FAQ Response to question 13:\r\n\r\nWould a logon or splash page notification on an HIO's portal that contains the Part 2 notice prohibiting redisclosure be sufficient to meet Part 2's requirement that disclosures made with patient consent be accompanied by such a statement?\r\n\r\nNo. Part 2 requires each disclosure made with written patient consent to be accompanied by a written statement that the information disclosed is protected by federal law and that the recipient cannot make any further disclosure of it unless permitted by the regulations (42 CFR §  2.32). A logon page is the page where a user logs onto a computer system; a splash page is an introductory page to a web site. A logon or splash page notification on a HIO's portal including the statement as required by §  2.32 would not be sufficient notification regarding prohibitions on redisclosure since it would not accompany a specific disclosure. The notification must be tied to the Part 2 information being disclosed in order to ensure that the recipient of that information knows that specific information is protected by Part 2 and cannot be redisclosed except as authorized by the express written consent of the person to whom it pertains or as otherwise permitted by Part 2. https://www.samhsa.gov/about-us/who-we-are/laws-regulations/confidentiality-regulations-faqs"
* #RedisclosureProhibitionMark ^property[0].code = #status
* #RedisclosureProhibitionMark ^property[=].valueCode = #active
* #RedisclosureProhibitionMark ^property[+].code = #internalId
* #RedisclosureProhibitionMark ^property[=].valueCode = #24049
* #RedisclosureProhibitionMark ^property[+].code = #subsumedBy
* #RedisclosureProhibitionMark ^property[=].valueCode = #SecurityLabelMark
* #RestrictedConfidentialityMark "restricted confidentiality mark" "A displayed mark rendered to end users as \"Restricted Confidentiality\", which indicates that the electronic or hardcopy information they are viewing, must be protected at a restricted level of confidentiality protection as defined by HL7 Confidentiality code \"R\" (restricted). Examples: Includes information that is additionally protected such as sensitive conditions mental health, HIV, substance abuse, domestic violence, child abuse, genetic disease, and reproductive health; or sensitive demographic information such as a patient's standing as an employee or a celebrity. Use cases include a display to alert authorized EHR users that they are viewing additionally protected health information deemed sensitive by an applicable jurisdictional, organizational, or personal privacy policy.\r\n\r\n*Usage Note:* The definition is based on HL7 Confidentiality code \"R\" (restricted), which is described as:\r\n\r\nPrivacy metadata indicating highly sensitive, potentially stigmatizing information, which presents a high risk to the information subject if disclosed without authorization. May be pre-empted by jurisdictional law, e.g., for public health reporting or emergency treatment. Foundational definitions of Confidentiality: From HL7 Confidentiality Concept Domain: Types of privacy metadata classifying an IT resource (data, information object, service, or system capability) according to its level of sensitivity, which is based on an analysis of applicable privacy policies and the risk of financial, reputational, or other harm to an individual or entity that could result if made available or disclosed to unauthorized individuals, entities, or processes.\r\n\r\nUsage Note from HL7 Confidentiality code \"R\": Confidentiality codes may be used in security labels and privacy markings to classify IT resources based on sensitivity to indicate the obligation of a custodian or receiver to ensure that the protected resource is not made available or disclosed to individuals, entities, or processes (security principals) unless authorized per applicable policies. Confidentiality codes may also be used in the clearances of initiators requesting access to protected resources.\r\n\r\nThis metadata indicates that the receiver may be obligated to comply with applicable, prevailing (default) jurisdictional privacy law or disclosure authorization.\r\n\r\nMap: Definition aligns with ISO 7498-2:1989 - Confidentiality is the property that information is not made available or disclosed to unauthorized individuals, entities, or processes. Map: Partial Map to ISO 13606-4 Sensitivity Level (3) Clinical Care: Default for normal clinical care access (i.e. most clinical staff directly caring for the patient should be able to access nearly all of the EHR). Maps to normal confidentiality for treatment information but not to ancillary care, payment and operations."
* #RestrictedConfidentialityMark ^property[0].code = #status
* #RestrictedConfidentialityMark ^property[=].valueCode = #active
* #RestrictedConfidentialityMark ^property[+].code = #internalId
* #RestrictedConfidentialityMark ^property[=].valueCode = #24047
* #RestrictedConfidentialityMark ^property[+].code = #subsumedBy
* #RestrictedConfidentialityMark ^property[=].valueCode = #SecurityLabelMark
* #DRAFTMark "Draft Mark" "A displayed mark indicating that the electronic or hard-copy information is still under development and is not yet considered to be ready for normal use."
* #DRAFTMark ^property[0].code = #status
* #DRAFTMark ^property[=].valueCode = #active
* #DRAFTMark ^property[+].code = #internalId
* #DRAFTMark ^property[=].valueCode = #24150
* #DRAFTMark ^property[+].code = #subsumedBy
* #DRAFTMark ^property[=].valueCode = #SecurityLabelMark
* #AUTHPOL "authorization policy" "Authorisation policies are essentially security policies related to access-control and specify what activities a subject is permitted or forbidden to do, to a set of target objects. They are designed to protect target objects so are interpreted by access control agents or the run-time systems at the target system.\r\n\r\nA positive authorisation policy defines the actions that a subject is permitted to perform on a target. A negative authorisation policy specifies the actions that a subject is forbidden to perform on a target. Positive authorisation policies may also include filters to transform the parameters associated with their actions. (Based on PONDERS)"
* #AUTHPOL ^property[0].code = #status
* #AUTHPOL ^property[=].valueCode = #active
* #AUTHPOL ^property[+].code = #internalId
* #AUTHPOL ^property[=].valueCode = #23934
* #AUTHPOL ^property[+].code = #subsumedBy
* #AUTHPOL ^property[=].valueCode = #SecurityPolicy
* #DELEPOL "delegation policy" "Delegation policies specify which actions subjects are allowed to delegate to others. A delegation policy thus specifies an authorisation to delegate. Subjects must already possess the access rights to be delegated.\r\n\r\nDelegation policies are aimed at subjects delegating rights to servers or third parties to perform actions on their behalf and are not meant to be the means by which security administrators would assign rights to subjects. A negative delegation policy identifies what delegations are forbidden.\r\n\r\nA Delegation policy specifies the authorisation policy from which delegated rights are derived, the grantors, which are the entities which can delegate these access rights, and the grantees, which are the entities to which the access rights can be delegated. There are two types of delegation policy, positive and negative. (Based on PONDERS)"
* #DELEPOL ^property[0].code = #status
* #DELEPOL ^property[=].valueCode = #active
* #DELEPOL ^property[+].code = #internalId
* #DELEPOL ^property[=].valueCode = #23933
* #DELEPOL ^property[+].code = #subsumedBy
* #DELEPOL ^property[=].valueCode = #SecurityPolicy
* #ObligationPolicy "obligation policy" "Conveys the mandated workflow action that an information custodian, receiver, or user must perform.\r\n\r\n*Usage Notes:* Per ISO 22600-2, ObligationPolicy instances 'are event-triggered and define actions to be performed by manager agent'. Per HL7 Composite Security and Privacy Domain Analysis Model: This value set refers to the action required to receive the permission specified in the privacy rule. Per OASIS XACML, an obligation is an operation specified in a policy or policy that is performed in conjunction with the enforcement of an access control decision."
* #ObligationPolicy ^property[0].code = #status
* #ObligationPolicy ^property[=].valueCode = #active
* #ObligationPolicy ^property[+].code = #HL7usageNotes
* #ObligationPolicy ^property[=].valueString = "Per ISO 22600-2, ObligationPolicy instances 'are event-triggered and define actions to be performed by manager agent'. Per HL7 Composite Security and Privacy Domain Analysis Model:  This value set refers to the action required to receive the permission specified in the privacy rule. Per OASIS XACML, an obligation is an operation specified in a policy or policy that is performed in conjunction with the enforcement of an access control decision."
* #ObligationPolicy ^property[+].code = #internalId
* #ObligationPolicy ^property[=].valueCode = #23372
* #ObligationPolicy ^property[+].code = #subsumedBy
* #ObligationPolicy ^property[=].valueCode = #SecurityPolicy
* #PrivacyMark "privacy mark" "An abstract code for human readable marks indicating, e.g., the level of confidentiality protection, an authorized compartment, the integrity, or the handling instruction required by applicable policy. Such markings must be displayed as directed by applicable policy on electronically rendered information content and any electronic transmittal envelope or container; or on hardcopy information and any physical transmittal envelope or container.\r\n\r\nExamples of protocols for marking displays on electronic or hardcopy rendered content: Across the top or \"banner\" of each page ; as a watermark placed diagonally cross each page; at the bottom or \"footer\" of each page; and may be displayed at the beginning of any portion within the content that required markings different than other portions of the content. The banner or top of page marking typically acts as a \"high watermark\" by including all of the markings made on any marked portions within the entirety of the information content.\r\n\r\n*Usage Note:* A \"Privacy Mark\" is a Security Control Observation (SECCONOBS) named tag set as specified by the HL7 Privacy and Security Classification System (HCS). A Privacy Mark Named Tag Set is valued with a Privacy Mark leaf code \"tag\", which is a member of the Security Control Observation Value (\\_SecurityObservationValue) tag set. Related Security Control Observation named tag sets are Purpose of Use, Obligation Policy, and Refrain Policy, each with their own Security Control Observation Value tag sets.\r\n\r\nFoundational standard definitions: ISO 22600-3 Section A.3.4.3 - If present, the privacy-mark is not used for access control. The content of the privacy-mark may be defined by the security policy in force (identified by the security-policy-identifier) which may define a list of values to be used. Alternately, the value may be determined by the originator of the security-label. IEEE Security Glossary Compendium 93- CESG Memorandum No.1 Issue 1.2 Oct 1992 - Human readable word or phrase acting as an indicator of all or part of the security constraints that apply to a document so marked. NOTE: A machine readable representation of a marking.\r\n\r\n*Comment:* While policies requiring creators, processors, custodians, senders or recipients apply, enforce, and persist applicable Privacy Marks may be dictated by a jurisdiction, organization or personal privacy, security, or integrity policy, those required to comply may be governed under different policies, so compliance may need to be enforced through trust contracts. For example, information content marked with GDPR related policies may require adherence by processors or recipients outside of the European Union. For this reason, this code system is likely to evolve with the inclusion of multiple policy domains needing to communicate encoded policies in a standard, interoperable manner."
* #PrivacyMark ^property[0].code = #notSelectable
* #PrivacyMark ^property[=].valueBoolean = true
* #PrivacyMark ^property[+].code = #status
* #PrivacyMark ^property[=].valueCode = #active
* #PrivacyMark ^property[+].code = #internalId
* #PrivacyMark ^property[=].valueCode = #24045
* #PrivacyMark ^property[+].code = #subsumedBy
* #PrivacyMark ^property[=].valueCode = #SecurityPolicy
* #RefrainPolicy "refrain policy" "Conveys prohibited actions which an information custodian, receiver, or user is not permitted to perform unless otherwise authorized or permitted under specified circumstances.\r\n\r\n*Usage Notes:* ISO 22600-2 species that a Refrain Policy \"defines actions the subjects must refrain from performing\". Per HL7 Composite Security and Privacy Domain Analysis Model: May be used to indicate that a specific action is prohibited based on specific access control attributes e.g., purpose of use, information type, user role, etc."
* #RefrainPolicy ^property[0].code = #status
* #RefrainPolicy ^property[=].valueCode = #active
* #RefrainPolicy ^property[+].code = #HL7usageNotes
* #RefrainPolicy ^property[=].valueString = "ISO 22600-2 species that a Refrain Policy \"defines actions the subjects must refrain from performing\".  Per HL7 Composite Security and Privacy Domain Analysis Model:  May be used to indicate that a specific action is prohibited based on specific access control attributes e.g., purpose of use, information type, user role, etc."
* #RefrainPolicy ^property[+].code = #internalId
* #RefrainPolicy ^property[=].valueCode = #23393
* #RefrainPolicy ^property[+].code = #subsumedBy
* #RefrainPolicy ^property[=].valueCode = #SecurityPolicy
* #BH "behavioral health information sensitivity" "Policy for handling information related to behavioral and emotional disturbances affecting social adjustment and physical health, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #BH ^property[0].code = #status
* #BH ^property[=].valueCode = #active
* #BH ^property[+].code = #internalId
* #BH ^property[=].valueCode = #23894
* #BH ^property[+].code = #subsumedBy
* #BH ^property[=].valueCode = #SPI
* #MH "mental health information sensitivity" "Policy for handling information related to psychological disorders, which is afforded heightened confidentiality. Mental health information may be deemed specifically sensitive and distinct from physical health, substance use disorders, and behavioral disabilities and disorders in some jurisdictions.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #MH ^property[0].code = #status
* #MH ^property[=].valueCode = #active
* #MH ^property[+].code = #internalId
* #MH ^property[=].valueCode = #23893
* #MH ^property[+].code = #subsumedBy
* #MH ^property[=].valueCode = #SPI
* #PSY "psychiatry disorder information sensitivity" "Policy for handling psychiatry psychiatric disorder information, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #PSY ^property[0].code = #status
* #PSY ^property[=].valueCode = #active
* #PSY ^property[+].code = #internalId
* #PSY ^property[=].valueCode = #23341
* #PSY ^property[+].code = #subsumedBy
* #PSY ^property[=].valueCode = #SPI
* #PSYTHPN "psychotherapy note information sensitivity" "Policy for handling psychotherapy note information, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* In some jurisdiction, disclosure of psychotherapy notes requires patient consent.\r\n\r\nIf there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law rather than or in addition to this more generic code."
* #PSYTHPN ^property[0].code = #status
* #PSYTHPN ^property[=].valueCode = #active
* #PSYTHPN ^property[+].code = #internalId
* #PSYTHPN ^property[=].valueCode = #23932
* #PSYTHPN ^property[+].code = #subsumedBy
* #PSYTHPN ^property[=].valueCode = #SPI
* #SUD "substance use disorder information sensitivity" "Policy for handling information related to alcohol or drug use disorders and conditions caused by these disorders, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #SUD ^property[0].code = #status
* #SUD ^property[=].valueCode = #active
* #SUD ^property[+].code = #internalId
* #SUD ^property[=].valueCode = #23890
* #SUD ^property[+].code = #subsumedBy
* #SUD ^property[=].valueCode = #SPI
* #SUBSIDMC "subsidized managed care program" "**Definition:** A government health program that provides coverage through managed care contracts for health services to persons meeting eligibility criteria such as income, location of residence, access to other coverages, health condition, and age, the cost of which is to some extent subsidized by public funds.\r\n\r\n*Discussion:* The structure and business processes for underwriting and administering a subsidized managed care program is further specified by the Underwriter and Payer Role.class and Role.code."
* #SUBSIDMC ^property[0].code = #status
* #SUBSIDMC ^property[=].valueCode = #active
* #SUBSIDMC ^property[+].code = #internalId
* #SUBSIDMC ^property[=].valueCode = #22139
* #SUBSIDMC ^property[+].code = #subsumedBy
* #SUBSIDMC ^property[=].valueCode = #SUBSIDIZ
* #SUBSUPP "subsidized supplemental health program" "**Definition:** A government health program that provides coverage for health services to persons meeting eligibility criteria for a supplemental health policy or program such as income, location of residence, access to other coverages, health condition, and age, the cost of which is to some extent subsidized by public funds.\r\n\r\n**Example:** Supplemental health coverage program may cover the cost of a health program or policy financial participations, such as the copays and the premiums, and may provide coverage for services in addition to those covered under the supplemented health program or policy. In the U.S., Medicaid programs may pay the premium for a covered party who is also covered under the Medicare program or a private health policy.\r\n\r\n*Discussion:* The structure and business processes for underwriting and administering a subsidized supplemental retiree health program is further specified by the Underwriter and Payer Role.class and Role.code."
* #SUBSUPP ^property[0].code = #status
* #SUBSUPP ^property[=].valueCode = #active
* #SUBSUPP ^property[+].code = #internalId
* #SUBSUPP ^property[=].valueCode = #22140
* #SUBSUPP ^property[+].code = #subsumedBy
* #SUBSUPP ^property[=].valueCode = #SUBSIDIZ
* #ETHUD "alcohol use disorder information sensitivity" "Policy for handling information related to alcohol use disorders and conditions caused by these disorders, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #ETHUD ^property[0].code = #status
* #ETHUD ^property[=].valueCode = #active
* #ETHUD ^property[+].code = #internalId
* #ETHUD ^property[=].valueCode = #23891
* #ETHUD ^property[+].code = #subsumedBy
* #ETHUD ^property[=].valueCode = #SUD
* #OPIOIDUD "opioid use disorder information sensitivity" "Policy for handling information related to opioid use disorders and conditions caused by these disorders, which is afforded heightened confidentiality.\r\n\r\n*Usage Note:* If there is a jurisdictional mandate, then use the applicable ActPrivacyLaw code system, and specify the law in addition to this more generic code."
* #OPIOIDUD ^property[0].code = #status
* #OPIOIDUD ^property[=].valueCode = #active
* #OPIOIDUD ^property[+].code = #internalId
* #OPIOIDUD ^property[=].valueCode = #23892
* #OPIOIDUD ^property[+].code = #subsumedBy
* #OPIOIDUD ^property[=].valueCode = #SUD
* #TBS "trial balance partial strength" "A fill where the remainder of a 'complete' fill is provided after a trial fill has been provided and where the strength supplied is less than the ordered strength (e.g. 10mg for an order of 50mg where a subsequent fill will dispense 40mg tablets)."
* #TBS ^property[0].code = #status
* #TBS ^property[=].valueCode = #active
* #TBS ^property[+].code = #internalId
* #TBS ^property[=].valueCode = #21823
* #TBS ^property[+].code = #subsumedBy
* #TBS ^property[=].valueCode = #TB
* #ALRTENDLATE "end too late alert" "**Definition:**Proposed therapy may be inappropriate or ineffective because the end of administration is too close to another planned therapy."
* #ALRTENDLATE ^property[0].code = #status
* #ALRTENDLATE ^property[=].valueCode = #active
* #ALRTENDLATE ^property[+].code = #internalId
* #ALRTENDLATE ^property[=].valueCode = #22837
* #ALRTENDLATE ^property[+].code = #subsumedBy
* #ALRTENDLATE ^property[=].valueCode = #TIME
* #ALRTSTRTLATE "start too late alert" "**Definition:**Proposed therapy may be inappropriate or ineffective because the start of administration is too late after the onset of the condition."
* #ALRTSTRTLATE ^property[0].code = #status
* #ALRTSTRTLATE ^property[=].valueCode = #active
* #ALRTSTRTLATE ^property[+].code = #internalId
* #ALRTSTRTLATE ^property[=].valueCode = #22838
* #ALRTSTRTLATE ^property[+].code = #subsumedBy
* #ALRTSTRTLATE ^property[=].valueCode = #TIME
* #INTERVAL "outside requested time" "**Definition:**The therapy action is being performed outside the bounds of the time period requested"
* #INTERVAL ^property[0].code = #status
* #INTERVAL ^property[=].valueCode = #active
* #INTERVAL ^property[+].code = #internalId
* #INTERVAL ^property[=].valueCode = #22846
* #INTERVAL ^property[+].code = #subsumedBy
* #INTERVAL ^property[=].valueCode = #TIMING
* #MINFREQ "too soon within frequency based on the usage" "**Definition:**The therapy action is being performed too soon after the previous occurrence based on the requested frequency"
* #MINFREQ ^property[0].code = #status
* #MINFREQ ^property[=].valueCode = #active
* #MINFREQ ^property[+].code = #internalId
* #MINFREQ ^property[=].valueCode = #22845
* #MINFREQ ^property[+].code = #subsumedBy
* #MINFREQ ^property[=].valueCode = #TIMING
* #DRG "Drug Interaction Alert" "Proposed therapy may interact with an existing or recent drug therapy"
* #DRG ^property[0].code = #status
* #DRG ^property[=].valueCode = #active
* #DRG ^property[+].code = #internalId
* #DRG ^property[=].valueCode = #16660
* #DRG ^property[+].code = #subsumedBy
* #DRG ^property[=].valueCode = #TPROD
* #NHP "Natural Health Product Alert" "Proposed therapy may interact with existing or recent natural health product therapy"
* #NHP ^property[0].code = #status
* #NHP ^property[=].valueCode = #active
* #NHP ^property[+].code = #internalId
* #NHP ^property[=].valueCode = #16661
* #NHP ^property[+].code = #subsumedBy
* #NHP ^property[=].valueCode = #TPROD
* #NONRX "Non-Prescription Interaction Alert" "Proposed therapy may interact with a non-prescription drug (e.g. alcohol, tobacco, Aspirin)"
* #NONRX ^property[0].code = #status
* #NONRX ^property[=].valueCode = #active
* #NONRX ^property[+].code = #internalId
* #NONRX ^property[=].valueCode = #16663
* #NONRX ^property[+].code = #subsumedBy
* #NONRX ^property[=].valueCode = #TPROD
* #SALE "Sale" "Transfer of ownership for a product for financial compensation."
* #SALE ^property[0].code = #status
* #SALE ^property[=].valueCode = #active
* #SALE ^property[+].code = #internalId
* #SALE ^property[=].valueCode = #17960
* #SALE ^property[+].code = #subsumedBy
* #SALE ^property[=].valueCode = #TRANSFER
* #BUS "business constraint violation" "**Description:**A local business rule relating multiple elements has been violated."
* #BUS ^property[0].code = #status
* #BUS ^property[=].valueCode = #active
* #BUS ^property[+].code = #internalId
* #BUS ^property[=].valueCode = #21665
* #BUS ^property[+].code = #subsumedBy
* #BUS ^property[=].valueCode = #VALIDAT
* #CODE_INVAL "code is not valid" "**Description:**The specified code is not valid against the list of codes allowed for the element."
* #CODE_INVAL ^property[0].code = #status
* #CODE_INVAL ^property[=].valueCode = #active
* #CODE_INVAL ^property[+].code = #internalId
* #CODE_INVAL ^property[=].valueCode = #21659
* #CODE_INVAL ^property[+].code = #subsumedBy
* #CODE_INVAL ^property[=].valueCode = #VALIDAT
* #FORMAT "invalid format" "**Description:**The element does not follow the formatting or type rules defined for the field."
* #FORMAT ^property[0].code = #status
* #FORMAT ^property[=].valueCode = #active
* #FORMAT ^property[+].code = #internalId
* #FORMAT ^property[=].valueCode = #21655
* #FORMAT ^property[+].code = #subsumedBy
* #FORMAT ^property[=].valueCode = #VALIDAT
* #ILLEGAL "illegal" "**Description:**The request is missing elements or contains elements which cause it to not meet the legal standards for actioning."
* #ILLEGAL ^property[0].code = #status
* #ILLEGAL ^property[=].valueCode = #active
* #ILLEGAL ^property[+].code = #internalId
* #ILLEGAL ^property[=].valueCode = #21652
* #ILLEGAL ^property[+].code = #subsumedBy
* #ILLEGAL ^property[=].valueCode = #VALIDAT
* #LEN_RANGE "length out of range" "**Description:**The length of the data specified falls out of the range defined for the element."
* #LEN_RANGE ^property[0].code = #status
* #LEN_RANGE ^property[=].valueCode = #active
* #LEN_RANGE ^property[+].code = #internalId
* #LEN_RANGE ^property[=].valueCode = #21656
* #LEN_RANGE ^property[+].code = #subsumedBy
* #LEN_RANGE ^property[=].valueCode = #VALIDAT
* #MISSCOND "conditional element missing" "**Description:**The specified element must be specified with a non-null value under certain conditions. In this case, the conditions are true but the element is still missing or null."
* #MISSCOND ^property[0].code = #status
* #MISSCOND ^property[=].valueCode = #active
* #MISSCOND ^property[+].code = #internalId
* #MISSCOND ^property[=].valueCode = #21654
* #MISSCOND ^property[+].code = #subsumedBy
* #MISSCOND ^property[=].valueCode = #VALIDAT
* #MISSMAND "mandatory element missing" "**Description:**The specified element is mandatory and was not included in the instance."
* #MISSMAND ^property[0].code = #status
* #MISSMAND ^property[=].valueCode = #active
* #MISSMAND ^property[+].code = #internalId
* #MISSMAND ^property[=].valueCode = #21653
* #MISSMAND ^property[+].code = #subsumedBy
* #MISSMAND ^property[=].valueCode = #VALIDAT
* #NODUPS "duplicate values are not permitted" "**Description:**More than one element with the same value exists in the set. Duplicates not permission in this set in a set."
* #NODUPS ^property[0].code = #status
* #NODUPS ^property[=].valueCode = #active
* #NODUPS ^property[+].code = #internalId
* #NODUPS ^property[=].valueCode = #21661
* #NODUPS ^property[+].code = #subsumedBy
* #NODUPS ^property[=].valueCode = #VALIDAT
* #NOPERSIST "element will not be persisted" "**Description:** Element in submitted message will not persist in data storage based on detected issue."
* #NOPERSIST ^property[0].code = #status
* #NOPERSIST ^property[=].valueCode = #active
* #NOPERSIST ^property[+].code = #internalId
* #NOPERSIST ^property[=].valueCode = #23276
* #NOPERSIST ^property[+].code = #subsumedBy
* #NOPERSIST ^property[=].valueCode = #VALIDAT
* #REP_RANGE "repetitions out of range" "**Description:**The number of repeating elements falls outside the range of the allowed number of repetitions."
* #REP_RANGE ^property[0].code = #status
* #REP_RANGE ^property[=].valueCode = #active
* #REP_RANGE ^property[+].code = #internalId
* #REP_RANGE ^property[=].valueCode = #21662
* #REP_RANGE ^property[+].code = #subsumedBy
* #REP_RANGE ^property[=].valueCode = #VALIDAT
* #AVAILABLE "Available Volume" "The available quantity of specimen. This is the current quantity minus any planned consumption (e.g., tests that are planned)"
* #AVAILABLE ^property[0].code = #status
* #AVAILABLE ^property[=].valueCode = #active
* #AVAILABLE ^property[+].code = #internalId
* #AVAILABLE ^property[=].valueCode = #13963
* #AVAILABLE ^property[+].code = #subsumedBy
* #AVAILABLE ^property[=].valueCode = #VOLUME
* #CONSUMPTION "Consumption Volume" "The quantity of specimen that is used each time the equipment uses this substance"
* #CONSUMPTION ^property[0].code = #status
* #CONSUMPTION ^property[=].valueCode = #active
* #CONSUMPTION ^property[+].code = #internalId
* #CONSUMPTION ^property[=].valueCode = #13965
* #CONSUMPTION ^property[+].code = #subsumedBy
* #CONSUMPTION ^property[=].valueCode = #VOLUME
* #CURRENT "Current Volume" "The current quantity of the specimen, i.e., initial quantity minus what has been actually used."
* #CURRENT ^property[0].code = #status
* #CURRENT ^property[=].valueCode = #active
* #CURRENT ^property[+].code = #internalId
* #CURRENT ^property[=].valueCode = #13962
* #CURRENT ^property[+].code = #subsumedBy
* #CURRENT ^property[=].valueCode = #VOLUME
* #INITIAL "Initial Volume" "The initial quantity of the specimen in inventory"
* #INITIAL ^property[0].code = #status
* #INITIAL ^property[=].valueCode = #active
* #INITIAL ^property[+].code = #internalId
* #INITIAL ^property[=].valueCode = #13964
* #INITIAL ^property[+].code = #subsumedBy
* #INITIAL ^property[=].valueCode = #VOLUME