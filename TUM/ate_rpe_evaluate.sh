#!/bin/bash

echo "./sh TRAJECTORY_DIR DATASET_NAME TOTAL_NUMBER"
echo "DATASET: fr3_walk_xyz"

TRAJECTORY=$1
NAME=$2
TOTAL=$3

# save result, if not exists, please creat this directory
RESULT=$TRAJECTORY/result

count=0

while [ $count -lt $TOTAL ]
do
    python ./evaluate_ate.py ./GT/$NAME.txt $TRAJECTORY/CameraTrajectory_"$count".txt --plot "$RESULT"/"$NAME"_ate_"$count".png  --plot3D  "$RESULT"/"$NAME"_ate_3d_"$count".png --verbose > $RESULT/"$NAME"_ate_"$count".txt
    python ./evaluate_rpe.py ./GT/$NAME.txt $TRAJECTORY/CameraTrajectory_$count.txt --plot "$RESULT"/"$NAME"_rpe_"$count".png  --fixed_delta --verbose > "$RESULT"/"$NAME"_rpe_"$count".txt
    count=`expr $count + 1`
done


