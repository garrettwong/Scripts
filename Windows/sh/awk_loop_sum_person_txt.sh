value=`cut -d , -f 4 person.txt | sed -r 's/Price\s//' | tr -d '$' | sed -r 's/ //'`
echo "$value"

sum = 0
awk 'BEGIN {i = 1; while (i < value) { print value[i]; 
	$sum += value[i]
++i } }'

echo $sum

