#!/bin/bash
touch /imagenet/result.log

#test_num=2

for test_num in $@; do
  for iter in $(seq 0 0); do
    echo -e "\n\n" ------------ ResNet50 simulation, test num : $test_num, iteration : $iter----------- "\n\n" | tee -a /imagenet/result.log
    /imagenet/resnet50-linux_$test_num | tee -a /imagenet/result.log
  done
done


#echo -e "\n\n ##### ResNet50 simulation, test num : $(test_num), iteration : #####\n\n" | tee -a /imagenet/result.log
#/imagenet/resnet50-linux_$test_num | tee -a /imagenet/result.log
#
#echo -e "\n\n ##### new simulation #####\n\n" | tee -a /imagenet/result.log
#/imagenet/resnet50-linux_$test_num | tee -a /imagenet/result.log
#
#echo -e "\n\n ##### new simulation #####\n\n" | tee -a /imagenet/result.log
#/imagenet/resnet50-linux_$test_num | tee -a /imagenet/result.log

