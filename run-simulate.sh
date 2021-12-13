#!/bin/bash
touch /imagenet/result.log
/imagenet/resnet50-linux | tee -a /imagenet/result.log
/imagenet/resnet50-linux | tee -a /imagenet/result.log
