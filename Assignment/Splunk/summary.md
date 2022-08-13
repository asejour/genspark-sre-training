Configure IAM user
Create Policies
For billing :
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:Get*",
        "s3:List*"
      ],
      "Resource": "arn:aws:s3:::srestore"
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Resource": "*"
    }
  ]
}

Create a second Policy for cloud trail
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sqs:GetQueueAttributes",
                "sqs:ListQueues",
                "sqs:ReceiveMessage",
                "sqs:GetQueueUrl",
                "sqs:DeleteMessage",
                "s3:Get*",
                "s3:List*",
                "s3:Delete*"
            ],
            "Resource": [
               "*"
            ]
        }
    ]
}

Configure SNS
Configure Cloudwatch
Configure Cloudtrail
Configure SQS

Add Splunk Add-on for AWS
Configure AWS on Splunk

Configure input
1- Billing
2- Cloudtrail
3- S3
