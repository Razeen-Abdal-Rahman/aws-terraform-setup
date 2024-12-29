# Terraform setup for AWS accounts
## You must have aws cli installed and authenticated
This repo is intended to be applied to an AWS account on an IAM user with full admin permissions, meaning you have used the root account to create an IAM user and are now using the said user to apply this terraform code.

Set the name of your aws profile and email address in the `terraform.tfvars` file. Your profile name can be found by looking in your `.aws` folder in the `credentails` file. If the file is empty or is not there run `aws configure --profile` `profilename` where `profilename` is the name of the profile you will create and follow the prompts to add your access key and secret access key.