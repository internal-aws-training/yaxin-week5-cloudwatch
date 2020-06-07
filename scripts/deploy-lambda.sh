#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})/..

aws cloudformation deploy \
  --stack-name cloudwatch-dojo-lambda-stack \
  --region ap-southeast-1 \
  --template-file aws/cloudformation/lambda.yml \
  --capabilities CAPABILITY_NAMED_IAM
