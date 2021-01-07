#!/bin/bash

ROOT=$1
#~/data/Dataset/results/tum_maskrcnn_error
NUM=$2

echo "evaluate keyframe for walk_rpy"
 ./ate_rpe_keyframe_evaluate.sh $ROOT/fr3_walk_rpy  fr3_walk_rpy $NUM
./average.pl $ROOT/fr3_walk_rpy/result_keyframe $NUM fr3_walk_rpy_ate ate.txt 
./average.pl $ROOT/fr3_walk_rpy/result_keyframe $NUM fr3_walk_rpy_rpe rpe.txt

echo "evaluate all frames for walk_rpy"
 ./ate_rpe_evaluate.sh $ROOT/fr3_walk_rpy  fr3_walk_rpy $NUM
./average.pl $ROOT/fr3_walk_rpy/result_frame $NUM fr3_walk_rpy_ate ate.txt 
./average.pl $ROOT/fr3_walk_rpy/result_frame $NUM fr3_walk_rpy_rpe rpe.txt

echo "evaluate keyframe for walk_static"
 ./ate_rpe_keyframe_evaluate.sh $ROOT/fr3_walk_static  fr3_walk_static $NUM
./average.pl $ROOT/fr3_walk_static/result_keyframe $NUM fr3_walk_static_ate ate.txt 
./average.pl $ROOT/fr3_walk_static/result_keyframe $NUM fr3_walk_static_rpe rpe.txt

echo "evaluate all frames for walk_static"
 ./ate_rpe_evaluate.sh $ROOT/fr3_walk_static  fr3_walk_static $NUM
./average.pl $ROOT/fr3_walk_static/result_frame $NUM fr3_walk_static_ate ate.txt 
./average.pl $ROOT/fr3_walk_static/result_frame $NUM fr3_walk_static_rpe rpe.txt


echo "evaluate keyframe for walk_xyz"
 ./ate_rpe_keyframe_evaluate.sh $ROOT/fr3_walk_xyz  fr3_walk_xyz $NUM
./average.pl $ROOT/fr3_walk_xyz/result_keyframe $NUM fr3_walk_xyz_ate ate.txt 
./average.pl $ROOT/fr3_walk_xyz/result_keyframe $NUM fr3_walk_xyz_rpe rpe.txt

echo "evaluate all frames for walk_xyz"
 ./ate_rpe_evaluate.sh $ROOT/fr3_walk_xyz  fr3_walk_xyz $NUM
./average.pl $ROOT/fr3_walk_xyz/result_frame $NUM fr3_walk_xyz_ate ate.txt 
./average.pl $ROOT/fr3_walk_xyz/result_frame $NUM fr3_walk_xyz_rpe rpe.txt

echo "evaluate keyframe for walk_half"
 ./ate_rpe_keyframe_evaluate.sh $ROOT/fr3_walk_half  fr3_walk_half $NUM
./average.pl $ROOT/fr3_walk_half/result_keyframe $NUM fr3_walk_half_ate ate.txt 
./average.pl $ROOT/fr3_walk_half/result_keyframe $NUM fr3_walk_half_rpe rpe.txt

echo "evaluate all frames for walk_half"
 ./ate_rpe_evaluate.sh $ROOT/fr3_walk_half  fr3_walk_half $NUM
./average.pl $ROOT/fr3_walk_half/result_frame $NUM fr3_walk_half_ate ate.txt 
./average.pl $ROOT/fr3_walk_half/result_frame $NUM fr3_walk_half_rpe rpe.txt

echo "evaluate keyframe for sit_static"
 ./ate_rpe_keyframe_evaluate.sh $ROOT/fr3_sit_static fr3_sit_static $NUM
./average.pl $ROOT/fr3_sit_static/result_keyframe $NUM fr3_sit_static_ate ate.txt 
./average.pl $ROOT/fr3_sit_static/result_keyframe $NUM fr3_sit_static_rpe rpe.txt

echo "evaluate all frames for sit_static"
 ./ate_rpe_evaluate.sh $ROOT/fr3_sit_static fr3_sit_static $NUM
./average.pl $ROOT/fr3_sit_static/result_frame $NUM fr3_sit_static_ate ate.txt 
./average.pl $ROOT/fr3_sit_static/result_frame $NUM fr3_sit_static_rpe rpe.txt


