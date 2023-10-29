#!/bin/bash
java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/*.json -display-issues-are-warnings  -version 4.0.1 -locale ja-JP  -ig  packages_snapshot/jp-clins.tgz -ig packages_snapshot/jp-core.r4-1.1.2-dev.tgz -ig packages_snapshot/jpfhir-terminology-1.1.1.tgz -tx n/a  -language ja

java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/*Patient*.json -display-issues-are-warnings  -version 4.0.1 -locale ja-JP  -ig  packages_snapshot/jp-clins.tgz -ig packages_snapshot/jp-core.r4-1.1.2-dev.tgz -ig packages_snapshot/jpfhir-terminology-1.1.1.tgz -tx n/a  -language ja


java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/*.json -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -profile http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_MedicationRequest_eClinicalSummary -profile http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Encounter_eClinicalSummary -ig packages_snapshot/jp-core.r4-1.1.2-dev.tgz -ig packages_snapshot/jpfhir-terminology-1.1.1.tgz -ig  packages_snapshot/jp-clins.tgz -tx n/a  -language ja

java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/MedicationRequest-Example-JP-MedReq-ExtAnus-AsNeeded-Total1.json -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig packages_snapshot/jp-core.r4-1.1.2-dev.tgz -ig packages_snapshot/jpfhir-terminology-1.1.1.tgz -ig  packages_snapshot/jp-clins.tgz -tx n/a  -language ja