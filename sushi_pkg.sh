#!/bin/bash
\rm -rf ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir

sushi -s .
cd fsh-generated
mv resources package
cp ../forPackageRelease/package-snap.json package/package.json
mkdir -p ../ExampleJson
\rm -rf ../ExampleJson
mkdir ../ExampleJson
mv package/*Example* ../ExampleJson/
gtar czf jp-clins.r4-1.0.0.tgz package
rm ../packages_snapshot/jp-clins.r4*.tgz
rm ../pkgValidation/jp-clins.r4*.tgz
cp jp-clins.r4-1.0.0.tgz ../packages_snapshot
cp jp-clins.r4-1.0.0.tgz ../pkgValidation
cd ..
\rm -rf ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
#rm -rf fsh-generated