## CloudWatch

##### Basic

1. CloudWatch 是什么？
2. 我们为什么要使用CloudWatch？
3. CloudWatch中的metrics是什么？包括哪些种类？我们可以如何使用metrics？
4. CloudWatch Events是什么？可以应用在哪些场景？
5. 相关概念理解：metrics，periods，namespace，count，dimensions，statistics。

##### Practice

1. 创建cloudwatch event rules，每分钟自动触发Lambda（Lambda功能需要自己实现，向cloudwatch metrics里push自定义的metrics），设置alarm检测task中定义的metric，自定义并监控条件使alarm触发阈值，alarm出发SNS，SNS发告警到邮箱。
2. 创建cloudwatch event rules，每分钟自动触发Lambda（输出固定格式的log message）。为lambda log创建metric filter，匹配log message，创建新的metric，自定义并监控条件使alarm触发阈值，alarm出发SNS，SNS发告警到邮箱。


##### Output：
1. 两个cloudformation文件
2. 部署cloudformation后，功能完整，邮箱可以收到报警
  

##### Reference：
* https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html
* https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.htmlhttps://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/working_with_metrics.html
* https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html
* https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-cloudwatch.html
* https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-sns.html
* https://aws.amazon.com/cloudwatch/faqs/