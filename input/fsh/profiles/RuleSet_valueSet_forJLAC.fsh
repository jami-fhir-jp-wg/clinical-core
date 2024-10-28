/*
RuleSet: core43LaboItemValueSet(jlacMode,itemID,itemDisplay,aliasID)
ValueSet: JP_CLINS_ValueSet_CoreLabo{jlacMode}_{itemID}_VS
Id: jp-clins-valueset-corelabo{jlacMode}-{itemID}-vs
Title: "CLINS: {itemDisplay} ValueSet"
Description: "CLINS 電子カルテ共有サービス用 {itemDisplay} {jlacMode} ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-10-28T00:00:00.000+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo{jlacMode}_{aliasID}_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-28"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_{jlacMode}_CoreLabo_CS where concept descendant-of #{itemDisplay}

RuleSet: infection43LaboItemValueSet(jlacMode,itemID,itemDisplay,aliasID)
ValueSet: JP_CLINS_ValueSet_InfectionLabo{jlacMode}_{itemID}_VS
Id: jp-clins-valueset-infectionLabo{jlacMode}-{itemID}-vs
Title: "CLINS: {itemDisplay} ValueSet"
Description: "CLINS 電子カルテ共有サービス用:感染症検査項目セット {itemDisplay} {jlacMode} ValueSet"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-10-28T00:00:00.000+09:00"
* ^url = $JP_CLINS_ValueSet_CoreLabo{jlacMode}_{aliasID}_VS
* ^version = "1.1.0a"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-28"
* ^publisher = "（一社）日本医療情報学会"
* ^copyright = "（一社）日本医療情報学会. CC BY-ND 4.0"
* include codes from system $JP_CLINS_CodeSystem_{jlacMode}_InfectionLabo_CS where concept descendant-of #{itemDisplay}


*/