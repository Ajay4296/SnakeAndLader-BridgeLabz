#!/bin/bash
gamestart()
{
count=0
playerPossition
possition=$?
while[ $possition -le 99 ]
do
rollDice
number=$?
count=$(($count+1))
possition=$(($possition+$number))
echo "at $count roll playerpossition is $possition"
Ladder $possition
ladder1=$?
if((ladder1>=1))
then
possition=$(($possition+$ladder1))
echo "at $count roll playerpossition is $possition"
fi
Snake $possition
snake1=$?
if((snake1>=1))
then
possition=$(($possition-$snake1))
echo "at $count roll playerpossition is $possition"
fi
while(( $possition>100 ))
do
possition=$(($possition-$number))

echo "at $count roll playerpossition is $possition"
done
done
echo "player possition at $count th  roll is 100"




