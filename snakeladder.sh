while [ $possition>100 ]
do
$possition=$(($possition-$number))
echo "at $count roll playerpossition is $possition"
done
if(($possition==100))
then
echo "it's final possition congratulation you won"
fi
