
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
initializeGameBoard

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
printGameBoard

function InitializePlayerPossition()
{
currentpossition=0
return $currentposition
}


rollDice()
{
dicenumber=$(( $(( $RANDOM%6 ))+1 ))
return $dicenumber
}


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

esac
}


Snake()
{
case $? in
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

*)
snake=0
return $snake
;;

esac
}

playerOne=0
playerTwo=0
count1=0
count2=0
playGame(){
	playerChange=1
	while(( playerOne<100 ))
	do
	if(( $playerChange==1 ))
	then
		
		rollDice
		play1=$?
		count1=$(( $count1+1 ))
		echo "$count1 time roll the die to get the $play1"
		playerOne=$(( $playerOne+$play1 ))
		 Ladder
			ladder1=$?
			if(( $ladder1 >= 1 ))
			then
				echo "First player score is $playerOne"
				playerOne=$(( $playerOne+$ladder1 ))
				echo "++> with help of ladder hike $ladder1 "
			fi
		
			Snake
			snake1=$?
			if(( $snake1 >= 1 ))
			then
				echo "First player score is $playerOne"
				playerOne=$(( $playerOne-$snake1 ))
				echo "--> with help of snake minus $snake1 the total score "
			fi
		if(( $playerOne>100 ))
		then
			playerOne=$(( $playerOne-$play1 ))
			echo "First Player score is $playerOne "
		else
			echo "First player score is $playerOne "
		fi
	#CheckWinner
		if(( $playerOne == 100 ))
		then
			echo "Win the first player"
			break
		fi
	playerChange=2
	fi
	if(( $playerChange==2 ))
	then
		
		rollDice
		play2=$2
		count=$((count+1))
		echo "$count2 time roll the die to get the $play2"
		playerTwo=$(( $playerTwo+$play2 ))
		Ladder
		
		ladder1=$?
			if(( $ladder1 >= 1 ))
			then
				echo "Second player score is $playerTwo"
				playerTwo=$(( $playerTwo+$ladder1 ))
				echo "++> with help of ladder hike $ladder1 "
			fi
			Snake
			snake1=$?
			if(( $snake1 >= 1 ))
			then
				echo "Second player score is $playerTwo"
				playerTwo=$(( $playerTwo-$snake1 ))
				echo "--> with help of snake minus $snake1 the total score "
			fi
		if(( $playerTwo>100 ))
		then
			playerTwo=$(( $playerTwo-$play2 ))
			echo "Second Player score is $playerTwo "
		else
			echo "Second player score is $playerTwo "
		fi
	
		if(( $playerTwo == 100 ))
		then
			echo "Win the second player "
			break
		fi
	playerChange=1
	fi
	done
}
playGame


