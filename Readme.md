# Using this code we need to follow below instruction
* this terraform create 5 resources
` (1- aws_vpc, 2- aws_subnet.public, 3- aws_subnet.private, 4- aws_security_group, 5- aws_instance,6- aws_internet_gateway) `

* We have 6 modules in the module folder
* using this code our state form is located locally but we can change this upgrade *backend.tf* file.
* ![image](https://github.com/yahyagulshan/Aws-Terrafom-Repo/assets/59036269/443e4f11-0132-41e6-9e73-3b07702172b5)
# follow this module on our env 1st  need to change the Makefile (this change when we need our state file on S3)
we need to change the values as per our resources 
![image](https://github.com/yahyagulshan/Aws-Terrafom-Repo/assets/59036269/aa372e01-dda3-4f43-bbc1-e0d25a65628c)

 
* aws profile
* aws region
* dynamodb table
* S3 Bucket 

# Resource created using main.tf file which is placed on root directory

* We can give cidrs as per our requirement for VPC, SUBNETS
* ![image](https://github.com/yahyagulshan/Aws-Terrafom-Repo/assets/59036269/40bdecf4-70e0-41e8-bd7a-9a3fbb360b24)

* run this terraform commands are

  `make us-east-1-test-account init`

  `make us-east-1-test-account plan`

  `make us-east-1-test-account apply`

* ![image](https://github.com/yahyagulshan/Aws-Terrafom-Repo/assets/59036269/1495db2f-45f8-4076-b433-37b0b5bc4962)

  The region is also mentioned in the root directory folder called "us-east-1"

  * ![image](https://github.com/yahyagulshan/Aws-Terrafom-Repo/assets/59036269/ce1aae86-726e-480e-8d31-4b255da738c3)

after running `make us-east-1-test-account apply ` command all resources are created in the AWS cloud we can check these after login that account


  

  
