
\rm -rf ~/.fhir;cp -r ~/.fhir_sushiVersion ~/.fhir;java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/Bundle-Example-Bundle-ObservationType-001.json  -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig packages_snapshot/jp-core.r4-1.1.2.tgz -ig packages_snapshot/jpfhir-terminology.r4-1.1.1.tgz -ig  packages_snapshot/jp-clins.r4-1.0.0.tgz -tx n/a  -language ja

\rm -rf ~/.fhir;cp -r ~/.fhir_sushiVersion ~/.fhir;java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/Patient-Example-Patient-standard.json  -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig packages_snapshot/jp-core.r4-1.1.2.tgz -ig packages_snapshot/jpfhir-terminology.r4-1.1.1.tgz -ig  packages_snapshot/jp-clins.r4-1.0.0.tgz -tx n/a  -language ja
\rm -rf ~/.fhir;cp -r ~/.fhir_sushiVersion ~/.fhir;java -Xmx4G -Djava.awt.headless=true -jar ../work/validator_cli.jar ExampleJson/Observation-Example-ObsLabo-Alb.json  -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig packages_snapshot/jp-core.r4-1.1.2.tgz -ig packages_snapshot/jpfhir-terminology.r4-1.1.1.tgz -ig  packages_snapshot/jp-clins.r4-1.0.0.tgz -tx n/a  -language ja

cd ../work/forValidation-clinical-core
target=Bundle-Bundle-CLINS-PCS-Example-01.json
echo ${target}
java -Xmx4G -Djava.awt.headless=true -jar validator_cli.jar  ${target} -display-issues-are-warnings  -version 4.0.1 -locale ja-JP -ig jp-core.r4-1.1.2.tgz -ig jpfhir-terminology.r4-1.2.0.tgz -ig  jp-clins.r4-1.3.0-rc1.tgz -tx n/a  -language ja

