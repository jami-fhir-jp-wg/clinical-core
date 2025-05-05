RuleSet:  toplevel_short_definition(note)
* . ^short = {note}
* . ^definition = {note}

RuleSet:  relative_short_definition(note)
* ^short = {note}
* ^definition = {note}

RuleSet:  eCS_InstitutionNumber_value
* extension[eCS_InstitutionNumber].valueIdentifier.value
  * ^short = "医療機関１０桁番号(都道府県コード2桁、保険医療機関区分1桁、保険医療機関番号7桁)"
  * ^definition = "医療機関１０桁番号(都道府県コード2桁、保険医療機関区分1桁、保険医療機関番号7桁)"
