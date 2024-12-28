# Terraform setup for AWS accounts
This repo is intended to be applied to an AWS account on an IAM user with full admin permissions, meaning you have used the root account to create an IAM user and are now using the said user to apply this terraform code.

in the `_config.tf` file you will find in the provider block a profile variable set this to the name you gave to your profile when aithenticating with AWS CLI