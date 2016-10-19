# Push_swap_corrector

To test for about 200 times and get an average:

<code>for i in range {1..200} ; do ARG=\`ruby -e "puts (0..499).to_a.shuffle.join(' ')"\`; ./push_swap $ARG | wc -l >> res ; done; ./tester res<code>
