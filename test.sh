#!/bin/bash


echo -e '\033[0mTesting validity a Hundred Times in a range from 0 to 4'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (0..4).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | ./checker $ARG`
		if [ "$RET" != "OK" ];
			then
			((ERR++))
		fi
done

if [ $ERR -eq 0 ];
	then
	echo -e '\033[0;32m Success'
else
	echo -e "\033[0;31m Fail $ERR / 100"
fi


echo -e '\033[0mTesting length a Hundred Times in a range from 0 to 4 '
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (0..4).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | wc -l`
		if [ $RET -gt 12 ];
			then
			((ERR++))
		fi
done

if [ $ERR -eq 0 ];
	then
	echo -e '\033[0;32m Success'
else
	echo -e "\033[0;31m Fail $ERR / 100"
fi


echo -e '\033[0mTesting a Hundred Times in a range from -50 to 49'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (-50..49).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | ./checker $ARG`
		if [ "$RET" != "OK" ];
			then
			((ERR++))
		fi
done

if [ $ERR -eq 0 ];
	then
	echo -e '\033[0;32m Success'
else
	echo -e "\033[0;31m Fail $ERR / 100"
fi


echo -e '\033[0mTesting a Hundred Times in a range from -99 to 0'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (-99..0).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | ./checker $ARG`
		if [ "$RET" != "OK" ];
			then
			((ERR++))
		fi
done

if [ $ERR -eq 0 ];
	then
	echo -e '\033[0;32m Success'
else
	echo -e "\033[0;31m Fail $ERR / 100"
fi

echo -e '\033[0mTesting a Hundred Times in a range from 0 to 99'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (0..99).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | ./checker $ARG`
		if [ "$RET" != "OK" ];
			then
			((ERR++))
		fi
done

if [ $ERR -eq 0 ];
	then
	echo -e '\033[0;32m Success'
else
	echo -e "\033[0;31m Fail $ERR / 100"
fi


echo -e '\033[0mTesting a Hundred Times in a range from 0 to 499'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (0..499).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | ./checker $ARG`
		if [ "$RET" != "OK" ];
			then
			((ERR++))
		fi
done

if [ $ERR -eq 0 ];
	then
	echo -e '\033[0;32m Success'
else
	echo -e "\033[0;31m Fail $ERR / 100"
fi


echo -e '\033[0mGetting an average in a range from 0 to 99'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (0..99).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | wc -l >> res`
done

./tester res
rm res
echo -e '\033[0mGetting an average in a range from 0 to 499'
ERR=0
for i in range {1..99}
	do 
		ARG=`ruby -e "puts (0..499).to_a.shuffle.join(' ')"`
		RET=`./push_swap $ARG | wc -l >> res`
done

./tester res

