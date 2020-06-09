#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})/../..

aws s3 cp ./cloudwatch-dojo2.zip s3://lambda-metrics-bucket-yaxin/
