#!/bin/bash
\rm -rf ~/.fhir
cp -r ~/.fhir_sushisVersion ~/.fhir

sushi -s .
cd fsh-generated
mv resources package
cp ../forPackageRelease/package-snap.json package/package.json
mkdir -p ../ExampleJson
\rm -rf ../ExampleJson
mkdir ../ExampleJson
mv package/*Example* ../ExampleJson/
gtar czf jp-clins26.r4-1.0.0.tgz package
rm ../packages_snapshot/jp-clins26.r4*.tgz
rm ../pkgValidation/jp-clins26.r4*.tgz
cp jp-clins26.r4-1.0.0.tgz ../packages_snapshot
cp jp-clins26.r4-1.0.0.tgz ../pkgValidation
cd ..
\rm -rf ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
#rm -rf fsh-generated