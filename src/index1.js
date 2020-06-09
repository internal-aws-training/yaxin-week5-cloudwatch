var AWS = require('aws-sdk');
AWS.config.update({region: 'ap-southeast-1'});

exports.handler = async (event, context) => {
    console.log("start......");

    var cloudwatch = new AWS.CloudWatch({apiVersion: '2010-08-01'});
    var params = {
        MetricData: [
            {
                MetricName: 'MyMetric',
                Dimensions: [
                    {
                        Name: 'DimensionName',
                        Value: 'DimensionValue'
                    },
                ],
                StatisticValues: {
                    Maximum: 1,
                    Minimum: 1,
                    SampleCount: 1,
                    Sum: 1
                },
            },
        ],
        Namespace: 'MyNamespace'
    };
    const result = await cloudwatch.putMetricData(params).promise()
    console.log("end......");
    console.log("the res is ", result);
};