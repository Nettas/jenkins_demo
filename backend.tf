terraform {
  backend "s3" {
    encrypt=true
    bucket = "ohs-dc-tf-state-406986323258-us-east-2"
    dynamodb_table = "ohs-dc-tf-state-lock"
    ##add naming convetion for tfstate (aci-sandbox-tfstate.keypath)
    key    = "aci-jenkins-demo.keypath"
    region = "us-east-2"
    ##only needed if you do not have credentials set with awscli or variables
    # access_key = "<aws_access_key>"
    # secret_key = "<aws_secret_key>"
  }
}