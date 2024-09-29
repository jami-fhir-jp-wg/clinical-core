#!/bin/bash
\rm -rf ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir
pkgVersion="1.5.2"
sushi -s .
cp v3ActJSON/CodeSystem-v3-ActCode.json  fsh-generated/resources/CodeSystem-v3-ActCodeFrom.R5_5.5.0.json
cd fsh-generated
mv resources package
cp ../forPackageRelease/package-snap.json package/package.json
mkdir -p ../ExampleJson
\rm -rf ../ExampleJson
mkdir ../ExampleJson
mv package/*Example* ../ExampleJson/
gtar czf jp-clins.r4-${pkgVersion}-snap.tgz package
cp ../forPackageRelease/package-diff.json package/package.json
gtar czf jp-clins.r4-${pkgVersion}.tgz package
rm ../packages_snapshot/jp-clins.r4*.tgz
rm ../pkgValidation/jp-clins.r4*.tgz
cp jp-clins.r4-${pkgVersion}-snap.tgz ../packages_snapshot
cp jp-clins.r4-${pkgVersion}.tgz ../pkgValidation
cd ..
\rm -rf ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
#rm -rf fsh-generatedz1