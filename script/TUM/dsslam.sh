#!/bin/bash

# repeate cout
REPEATE=1

echo "---------------Evaluate DSSLAM using Bagfile-------------------"

for TRAJECTORY_DIR in /home/yubao/data/project/DS-SLAM/data/bagfile \
    /home/yubao/data/project/DS-SLAM/data/raw
do

echo "------------------------------------------------------------------"
[ ! -d "$TRAJECTORY_DIR/fr3_sit_static/result" ] && mkdir $TRAJECTORY_DIR/fr3_sit_static/result
./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_sit_static fr3_sit_static $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_sit_static/result $REPEATE fr3_sit_static_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_sit_static/result $REPEATE fr3_sit_static_rpe rpe.txt

echo "------------------------------------------------------------------"
[ ! -d "$TRAJECTORY_DIR/fr3_walk_static/result" ] && mkdir $TRAJECTORY_DIR/fr3_walk_static/result
./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_static fr3_walk_static $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_static/result $REPEATE fr3_walk_static_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_static/result $REPEATE fr3_walk_static_rpe rpe.txt

echo "------------------------------------------------------------------"
[ ! -d "$TRAJECTORY_DIR/fr3_walk_xyz/result" ] && mkdir $TRAJECTORY_DIR/fr3_walk_xyz/result
./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_xyz fr3_walk_xyz $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_xyz/result $REPEATE fr3_walk_xyz_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_xyz/result $REPEATE fr3_walk_xyz_rpe rpe.txt

echo "------------------------------------------------------------------"
[ ! -d "$TRAJECTORY_DIR/fr3_walk_rpy/result" ] && mkdir $TRAJECTORY_DIR/fr3_walk_rpy/result
./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_rpy fr3_walk_rpy $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_rpy/result $REPEATE fr3_walk_rpy_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_rpy/result $REPEATE fr3_walk_rpy_rpe rpe.txt

echo "------------------------------------------------------------------"
[ ! -d "$TRAJECTORY_DIR/fr3_walk_half/result" ] && mkdir $TRAJECTORY_DIR/fr3_walk_half/result
./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_half fr3_walk_half $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_half/result $REPEATE fr3_walk_half_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_half/result $REPEATE fr3_walk_half_rpe rpe.txt

done
