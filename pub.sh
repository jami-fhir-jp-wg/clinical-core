#/bin/bash
mkdir -p ~/.fhir/packages/'jp-core.r4#1.1.2'
gtar xf packages_snapshot/jp-core.r4-1.1.2.tgz -C ~/.fhir/packages/'jp-core.r4#1.1.2'
mkdir -p ~/.fhir/packages/'jpfhir-terminology.r4#1.5.0'
gtar xf packages_snapshot/jpfhir-terminologyr4-latest.tgz  -C ~/.fhir/packages/'jpfhir-terminology.r4#1.5.0'

java -Xmx4G -Djava.awt.headless=true -jar ../work/publisher1.8.25.jar -ig ig.ini  -tx n/a