#!/bin/bash
touch /imagenet/result.log


for test_num in $@; do
  for iter in $(seq 0 0); do
    echo -e "\n\n" ------- ResNet50 simulation test num : $test_num, iteration : $iter ---------- "\n\n" | tee -a /imagenet/result.log
    /imagenet/resnet50-linux_half_$test_num | tee -a /imagenet/result.log
  done
done




#echo -e "\n\n ##### ResNet50 simulation #####\n\n" | tee -a /imagenet/result.log
#/imagenet/resnet50-linux_half_$test_num | tee -a /imagenet/result.log
#
#echo -e "\n\n ##### new simulation #####\n\n" | tee -a /imagenet/result.log
#/imagenet/resnet50-linux_half_$test_num | tee -a /imagenet/result.log
#
#echo -e "\n\n ##### new simulation #####\n\n" | tee -a /imagenet/result.log
#/imagenet/resnet50-linux_half_$test_num | tee -a /imagenet/result.log

