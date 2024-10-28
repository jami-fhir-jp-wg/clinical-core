#!/bin/bash
find input/fsh/profiles -type f -name '*.fsh' -exec sed -ibak "s/x.x.x-profile/$1/g" {} \;
find input/fsh/profiles -type f -name '*.fsh' -exec grep $1 {} \;
find input/fsh/profiles -type f -name '*.fshbak' -exec grep "x.x.x-profile" {} \;
