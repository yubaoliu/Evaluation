#!/bin/bash

# repeate cout
REPEATE=1

echo "---------------------------------Evaluate ORB SLAM3 using Bagfile-------------------"
TRAJECTORY_DIR=/home/yubao/data/GoogleDrive/paper/IEEEaccess/data/orbslam3/bagfile

./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_sit_static fr3_sit_static $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_sit_static/result $REPEATE fr3_sit_static_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_sit_static/result $REPEATE fr3_sit_static_rpe rpe.txt


./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_static fr3_walk_static $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_static/result $REPEATE fr3_walk_static_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_static/result $REPEATE fr3_walk_static_rpe rpe.txt


./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_xyz fr3_walk_xyz $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_xyz/result $REPEATE fr3_walk_xyz_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_xyz/result $REPEATE fr3_walk_xyz_rpe rpe.txt

./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_rpy fr3_walk_rpy $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_rpy/result $REPEATE fr3_walk_rpy_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_rpy/result $REPEATE fr3_walk_rpy_rpe rpe.txt

./ate_rpe_evaluate.sh $TRAJECTORY_DIR/fr3_walk_half fr3_walk_half $REPEATE
./average.pl $TRAJECTORY_DIR/fr3_walk_half/result $REPEATE fr3_walk_half_ate ate.txt
./average.pl $TRAJECTORY_DIR/fr3_walk_half/result $REPEATE fr3_walk_half_rpe rpe.txt

