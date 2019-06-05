#Terraform v0.12.1
#+ provider.aws v2.7.0

provider "aws" {
    access_key = ""
    secret_key = ""
    region     = "cn-north-1"
}

resource "aws_instance" "instance_1"{
    ami = "ami-XXXX" #Replace here by your own AMI
    instance_type = "m5.4xlarge" #This instance_type exists on Europe region but not in China (eg. cn-north-1)
    tags = {
        Name = "Hello World"
    }
    vpc_security_group_ids = ["sg-XXXX"] #Replace here by your securityGroupID
    subnet_id = "subnet-XXXX" #Replace here by your subnetID
}
