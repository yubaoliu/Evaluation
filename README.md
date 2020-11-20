# Evaluation



# TUM
## Scripts
- ate_rpe_keyframe_evaluate.sh  : evaluate keyframe in the dataset and draw trajectory
- ate_rpe_evaluate.sh   : evaluate all frames in the dataset and draw trajectory
- average.pl    : calculate average value of ATE or RPE

# Fileformat

```sh
CameraTrajectory_0.txt
```


## Parames

- DATASET_NAME

```sh
fr3_walk_xyz, fr3_walk_half, fr3_walk_rpy, fr3_walk_static, fr3_sit_static
```

## Evaluate Keyframe or all frames
- command

```sh
./sh TRAJECTORY_DIR DATASET_NAME TOTAL_NUMBER
DATASET_NAME: fr3_walk_xyz, fr3_walk_half, fr3_walk_rpy, fr3_walk_static, fr3_sit_static
```

- Generate ATE and RPE for each dataset

```sh
 ./ate_rpe_keyframe_evaluate.sh ~/data/Dataset/results/tum_maskrcnn_error/fr3_walk_half  fr3_walk_half 3
```

## Average value calculation

- command

```sh
./average.pl $root_path, $repeate, $file_prefix, $result_file_name
```


- Calculate average value for ATE results

```sh
./average.pl ~/data/Dataset/results/tum_maskrcnn_error/fr3_walk_half/result_keyframe 3 fr3_walk_half_ate ate.txt
```

- Calculate average value for RPE results

```sh
./average.pl ~/data/Dataset/results/tum_maskrcnn_error/fr3_walk_half/result_keyframe 3 fr3_walk_half_rpe rpe.txt
```

