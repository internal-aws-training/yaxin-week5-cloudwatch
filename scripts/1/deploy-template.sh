#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})/..

aws cloudformation deploy \
  --stack-name cloudwatch-dojo-lambda-stack \
  --region ap-southeast-1 \
  --template-file aws/cloudformation/template.yml \
  --capabilities CAPABILITY_NAMED_IAM

#aws lambda update-function-code \
#  --function-name lambda-with-metrics \
#  --s3-bucket lambda-metrics-bucket-yaxin \
#  --s3-key cloudwatch-dojo.zip