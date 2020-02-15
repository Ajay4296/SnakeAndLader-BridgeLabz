


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

#!/bin/bash/

rollDice(){
while(( playerPossition<100 ))
do
diceNumber=$(( $(( $RANDOM%6 ))+1 ))
playerPossition=$(( $playerPossition+$diceNumber ))
done





#!/bin/bash/
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
