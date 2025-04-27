#!/bin/bash
\rm -rf ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir
pkgVersion="1.10.0"
sushi -s .
