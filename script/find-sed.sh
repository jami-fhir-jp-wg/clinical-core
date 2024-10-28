  
#!/bin_bash
find input/fsh/profiles -type f -name '*.fsh' -exec echo {} \;
find input/fsh/profiles -type f -name '*.fsh' -exec sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' {} \;
echo '---1'
find input/fsh/profiles -type f -name '*.fsh' -exec echo {} ;
find input/fsh/profiles -type f -name '*.fsh' -exec sed -i '' -e 's/x.x.x-profile/${{ env.release_version }}/g' {} ;
echo '---2'
find input/fsh/instances -type f -name '*.fsh' -exec echo {} \;
find input/fsh/instances -type f -name '*.fsh' -exec sed -i '' -e 's/x.x.x-instance/${{ env.release_version }}/g' {} \;
echo '==='
