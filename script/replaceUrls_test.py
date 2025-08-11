import re
import sys

from urllib.parse import urlparse, parse_qs, unquote

#line = "https://simplifier.net/resolve?scope=jp-core.r4@1.1.2-clins&canonical=http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance"
line = "sdcsdcsdcsdcsdcsdcsdcJP_AllergyIntolerance"

line = unquote(parse_qs(urlparse(line).query).get("canonical", [line])[0])


print(line)