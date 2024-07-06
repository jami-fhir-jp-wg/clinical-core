
//-------- 埋め込み　Encounterリソース（外来受診）受診01
Instance: Example-Contained-JP-Encounter-AMB
InstanceOf: JP_Encounter
Usage: #example
Description: "埋め込み　Encounterリソース（外来受診）データ作成例"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Encounterリソース（外来受診）データ作成例</p> </div>"

* id = "Example-Contained-JP-Encounter-AMB"
* identifier.system = $JP_ResourceInstanceIdentifier
* identifier.value = "192844"
* status = #finished

* class.system = $v3-ActCode
* class.code = #AMB
* class.display = "外来"

//-------- 埋め込み　入院01
Instance: Example-Contained-JP-Encounter-IMP
InstanceOf: JP_Encounter
Usage: #example
Description: "Encounterリソース（入院） データ作成例"


// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>Encounterリソース（入院） データ作成例</p> </div>"


* id = "Example-Contained-JP-Encounter-IMP"
* status = #finished
* class = $v3-ActCode#IMP "入院中"
* period.start = "2021-07-05"

//-------- 埋め込み　Practitionerリソース　医療者R001
Instance: Example-Contained-JP-Practitioner-minimun-R001
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み　Practitionerリソース　医療者R001  データ作成例"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Practitionerリソース　医療者R001  データ作成例</p> </div>"


* id = "Example-Contained-JP-Practitioner-minimun-R001"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "医学 一郎"

//-------- 埋め込み　Practitionerリソース　医療者D001
Instance: Example-Contained-JP-Practitioner-minimun-D001
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み　Practitionerリソース　医療者D001  データ作成例"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Practitionerリソース　医療者D001  データ作成例</p> </div>"


* id = "Example-Contained-JP-Practitioner-minimun-D001"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "医療 太郎"

//-------- 埋め込み　Practitionerリソース　医療者D002
Instance: Example-Contained-JP-Practitioner-minimun-D002
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み　Practitionerリソース　医療者D002  データ作成例"
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Practitionerリソース　医療者D002  データ作成例</p> </div>"


* id = "Example-Contained-JP-Practitioner-minimun-D002"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "田中 宏"

//-------- 埋め込み　Practitionerリソース　医療者D003
Instance: Example-Contained-JP-Practitioner-minimun-D003
InstanceOf: JP_Practitioner
Usage: #example
Description: "埋め込み　Practitionerリソース　医療者D003  データ作成例"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Practitionerリソース　医療者D003  データ作成例</p> </div>"

* id = "Example-Contained-JP-Practitioner-minimun-D003"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode = #IDE
* name.text = "診療 和子"



//----  埋め込み　Specimemリソース　検体検査材料　血清
Instance: Example-Contained-JP-Specimen-Serum
InstanceOf: JP_Specimen
Usage: #example
Description: "埋め込み　Specimemリソース　検体検査材料　血清"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Specimemリソース　検体検査材料　血清</p> </div>"

//* meta.profile[+] = $JP_Patient_eCS
* id = "Example-Contained-JP-Specimen-Serum"

* type.coding[+] = $JP_ObservationSampleMaterialCode_CS#023  "血清"
* type.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0487#SER "Serum"
* type.text = "血清"

//----  埋め込み　Specimemリソース　検体検査材料　尿（その他を含む）
Instance: Example-Contained-JP-Specimen-Urine
InstanceOf: JP_Specimen
Usage: #example
Description: "埋め込み　Specimemリソース　検体検査材料　尿(含むその他)"

// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> <p>埋め込み　Specimemリソース　検体検査材料　尿(含むその他)</p> </div>"

//* meta.profile[+] = $JP_Patient_eCS
* id = "Example-Contained-JP-Specimen-Urine"

* type.coding[+] = $JP_ObservationSampleMaterialCode_CS#001  "尿(含むその他)"
* type.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0487#UR	"Urine"
* type.text = "尿"

