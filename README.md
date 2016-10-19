# Push_swap_corrector

To test for about 200 times ang get an average:

rm res; for i in range {1..200} ; do ARG=`ruby -e "puts (0..499).to_a.shuffle.join(' ')"`; ./push_swap $ARG | wc -l >> res ; done; ./a.out res

To test for validity 200 times:

rm res; for i in range {1..200} ; do ARG=`ruby -e "puts (0..499).to_a.shuffle.join(' ')"`; ./push_swap $ARG | ./checker $ARG ; done
