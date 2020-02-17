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

function InitializePlayerPosition()
{
currentpositition=0
return $currentposition
}


rollDice(){
while(( playerPossition<100 ))
do
diceNumber=$(( $(( $RANDOM%6 ))+1 ))
playerPossition=$(( $playerPossition+$diceNumber ))
done


