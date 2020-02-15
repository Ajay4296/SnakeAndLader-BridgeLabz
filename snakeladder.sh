
#!/bin/bash
declare -A  GameBoard[10,10]
echo "welcome to snake and ladder game"
initializeGameBoard()
{
size=100
for(( i=1;i<=10;i++ ))
do 
if((i%2!=0))
then
for(( j=1;j<=10;j++ ))
do
GameBoard[$i,$j]=$size
size=$(($size-1))
done
else
for(( j=10;j>=1;j-- ))
do
GameBoard[$i,$j]=$size
size=$(($size-1))
done
fi
done
}

printGameBoard()
{
echo ========================================
for((i=1;i<=10;i++))
do
for((j=1;j<=10;j++))
do
printf "| ${GameBoard[$i,$j]}"
done
echo "|"
echo ========================================

done
}

function InitializePlayerPossition()
{
currentpossition=0
return $currentposition
}


rollDice(){
while(( playerPossition<100 ))
do
diceNumber=$(( $(( $RANDOM%6 ))+1 ))
playerPossition=$(( $playerPossition+$diceNumber ))
done
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
echo "at $count roll playerpossition is $possition"
done
done
echo "player possition at $count th  roll is 100"


Ladder()
{
case $1 in 
2)
ladder=23
return $ladder
;;

7)
ladder=29
return $ladder
;;

22)
ladder=41
return $ladder
;;

28)
ladder=77
return $ladder
;;

30)
ladder=44
return $ladder
;;

70)
ladder=90
return $ladder
;;

87)
ladder=93
return $ladder
;;

*)
ladder=0
return $ladder
;;
}

Snake()
{
case in $?
27)
snake=7
return $snake
;;

39)
snake=3
return $snake
;;

50)
snake=34
return $snake
;;

66)
snake=24
return $snake
;;

73)
snake=12
return $snake
;;

99)
snake=26
return
72
;;
}

while [ $possition>100 ]
do
echo "at $count roll playerpossition is $possition"
done
if(($possition==100))
then
echo "it's final possition congratulation you won"
fi

