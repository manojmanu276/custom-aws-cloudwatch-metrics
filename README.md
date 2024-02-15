# custom-aws-cloudwatch-metrics
Repository contains scripts to create custom cloudwatch metrics on aws cloud provider

## PRE-REQUISITES
1) aws-cli

## Installation of cloudwatch agent

1. Download the CloudWatch Agent Package:
```
wget https://s3.amazonaws.com/amazoncloudwatch-agent/redhat/amd64/latest/amazon-cloudwatch-agent.rpm
```
2. Install the Agent:
```
sudo yum install -y ./amazon-cloudwatch-agent.rpm
```
3. Configure the Agent:
```
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
```
4. Enable cloudwatch Agent:
```
systemctl enable aws-cloudwatch-agent
```
5. Start Cloudwatch Agent:
```
systemctl start aws-cloudwatch-agent
```
6. Check the status of Cloudwatch Agent:
```
systemctl status aws-cloudwatch-agent
```
