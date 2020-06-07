#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})/..

aws cloudformation deploy \
  --stack-name cloudwatch-dojo-bucket-stack \
  --region ap-southeast-1 \
  --template-file aws/cloudformation/bucket.yml

aws s3 cp ./cloudwatch-dojo.zip s3://lambda-metrics-bucket-yaxin/
