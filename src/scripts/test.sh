EXE=../bin/fremen
MAPS=$1/maps
IMAGES=$1/testing
TRAIN=$1/training
REPORTS=$1/reports

if [ ! -e $REPORTS ];
then 
	mkdir $REPORTS
fi

for order in 1 2
do

for i in $(ls $IMAGES/|grep place_*|sed s/place_//)
do
	$EXE recalculate $TRAIN/place_$i $MAPS/place_$i.red $MAPS/place_$i.map F $order 
	echo Feature visibility calculated.
done

for numFeatures in $(seq -w 5 5 50) 
do
echo ../bin/fremen test $IMAGES $MAPS $numFeatures $order $REPORTS/$numFeatures-$order.txt 
$EXE test $IMAGES $MAPS $numFeatures $order >$REPORTS/$numFeatures-$order.txt 2>/dev/null
done
done
