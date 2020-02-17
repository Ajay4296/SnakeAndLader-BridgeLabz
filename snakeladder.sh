declare -A  GameBoard[10,10]
initializeGameBoard()
{
size=100
for(( i=1;i<=10;i++ ))
do 
if((i%2!=0))
then
for((j=1;j<=10;j++))
do
GameBoard[i,j]=$size
size=$(($size-1))
done
else
for((j=1;j<=10;j++))
do
GameBoard[i,j]=$size
size=$(($size-1))
done
fi
done

