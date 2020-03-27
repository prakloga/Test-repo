#Create S3 bucket
aws s3 mb s3://prakash-code-sam

#package cloudformation code
aws cloudformation package --s3-bucket prakash-code-sam --template-file src/template.yml --output-template-file gen/template-generated.yml
#SAM package

#deploy template
aws cloudformation deploy --template-file gen/template-generated.yml --stack-name hello-world-sam
#Failed to create the changeset: Waiter ChangeSetCreateComplete failed: Waiter encountered a terminal failure state Status: FAILED. Reason: Requires capa
#bilities : [CAPABILITY_IAM]

aws cloudformation deploy --template-file gen/template-generated.yml --stack-name hello-world-sam --capabilities CAPABILITY_IAM