# AUTO SCALING GROUP 
![autoscaling](./autoscaling.jpeg)
A terraform module to deploy resources using an autoscaling group for scalability, cloudwatch for observability, vpc and security groups for securability and load balancers for availability


## SCAFFOLDING SCRIPT 
A bash script "scaffold.sh"

Un-opinionated lightweight scaffolding of a basic terraform repo. Deliberately lightweight (& for the time being un-finished).it is used to create terraform files to deploy to different environments 

to run scaffold script 
```

./scaffold.sh "environment to scaffold to"
./scaffold.sh dev
```

* `terraform init` is to initialize the working directory and downloading plugins of the AWS provider
* `terraform plan` is to create the execution plan for our code
* `terraform apply` is to create the actual infrastructure. It will ask you to provide the Access Key and Secret Key in order to create the infrastructure. So,     instead of hardcoding the Access Key and Secret Key, it is better to apply at the run time.


After terraform apply completes you can verify the resources on the AWS console. Terraform will create the below resources.
* VPC
* Auto Scaling Group
* Launch Configurationn
* Auto Scaling Policy
* Load Balancer
* Internet Gateway
* Route Table
* Security Groups
* Subnets
* Cloud Watch Alarm