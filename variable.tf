variable "region" {
    type = string 
    description = "aws region for resources to be deployed"
}

variable "name" { 
  type = string 
  description = "name of Ec2 instance "
}

variable "image_id" { 
  type = string 
  description = "the ami type of instance to be deployed"
}

variable "instance_type" { 
  type = string 
  description = "size of instance to be deployed"
}

variable "key_name" { 
  type = string 
  description = "name of the key pair to be used"
} 

variable "associate_public_ip_address" {
  type = bool
  description = "to set up associate public ip address"
  default = true
}

variable "user_data" {
  type = string
  description = "name of user data file"
}

variable "asg_min_size" { 
  type = number 
  description = "auto scaling group minimum size"
  default = 1
}

variable "asg_max_size" { 
  type = number
  description = "auto scaling group maximum size" 
  default = 2
}

variable "asg_desired_capacity" { 
  type = number 
  description = "auto scaling group desired capacity"
  default = 2
}

variable "enabled_metrics" { 
  type = list(string)
  description = "autoscaling enabled metrics"
  default = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]
}

variable "metrics_granularity" { 
  type = string
  description = "auto scaling metrics granularity"
  default = "1Minute"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC."
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type = string
  description = "The instance tenancy for the VPC."
  default = "default"
}

variable "vpc-tags" {
  type = map(string)
  description = "The tags for the VPC."
  default = {
    Name = "App VPC"
  }
}

variable "app_elb_cross_zone_load_balancing" {
  type = bool
  default = true
}

variable "app_elb_health_check_healthy_threshold" {
  type = number
  default = 2
}

variable "app_elb_health_check_unhealthy_threshold" {
  type = number
  default = 2
}

variable "app_elb_health_check_timeout" {
  type = number
  default = 3
}

variable "app_elb_health_check_interval" {
  type = number
  default = 30
}

variable "app_elb_health_check_target" {
  type = string
  default = "HTTP:80/"
}

variable "app_elb_listener_lb_port" {
  type = number
  default = 80 
}

variable "app_elb_listener_lb_protocol" {
  type = string
  default = "http"
}

variable "app_elb_listener_instance_port" {
  type = number
  default = 80
}

variable "app_elb_listener_instance_protocol" {
  type = string
  default = "http"
}


variable "subnet_cidr" {
  description = "CIDR block for the first subnet."
  type        = string
  default = "10.0.1.0/24"
}

variable "subnet_availability_zone" {
  description = "Availability zone for the first subnet."
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for the second subnet."
  type        = string
  default = "10.0.2.0/24"
}

variable "subnet1_availability_zone" {
  description = "Availability zone for the second subnet."
  type        = string
}

variable "route_cidr_block" {
  type = string
  description = "cidr block of the route table"
  default = "0.0.0.0/0"
}

variable "route_tags" {
  type = map(string)
  description = "A map of tags to assign to the route table"
  default = {
    Name = "Route to internet"
  }
}

variable "policy_up_scaling_adjustment" {
    type = number
    description = "aws policy up scaling adjustment" 
    default = 1
}

variable "policy_up_ajustment_type" { 
    type = string
    description = "aws policy up adjustment type"
    default = "ChangeInCapacity"
}

variable "policy_up_cooldown" { 
    type = number
    description = "aws policy up cooldown"
    default = 300
}

# Defining alarm up configurations
variable "alarm_up_comparison_operator" {
    type = string
    description = "aws alarm up comparison operator"
    default = "GreaterThanOrEqualToThreshold"
}

variable "alarm_up_evaluation_periods" {
    type = number 
    description = "aws alarm up evalaution periods" 
    default = 2  
}

variable "alarm_up_metric_name" {
    type = string
    description = "aws alarm up metric name"
    default = "CPUUtilization"
}

variable "alarm_up_namespace" {
    type = string
    description = "aws alarm up namespace"
    default = "AWS/EC2"
}

variable "alarm_up_period" {
    type = number 
    description = "aws alarm up period"
    default = 120
}

variable "alarm_up_statistic" {
    type = string
    description = "aws alarm up statistics"
    default = "Average"
}

variable "alarm_up_threshold" {
    type = number
    description = "aws alarm up threshold"
    default = 70
}

# Defining policy down configurations
variable "policy_down_scaling_adjustment" { 
    type = number 
    description = "aws policy down scaling adjustment"
    default = -1
}

variable "policy_down_ajustment_type" {
    type = string 
    description = "aws policy down adjustment"
    default = "ChangeInCapacity"
}

variable "policy_down_cooldown" {
    type = number 
    description = "aws policy down cooldown"
    default = 300
}

# Defining alarm down configurations
variable "alarm_down_comparison_operator" {
    type = string 
    description = "aws alarm down comparison operator"
    default = "LessThanOrEqualToThreshold"
}

variable "alarm_down_evaluation_periods" {
    type = number
    description = "aws alarm down evaluation periods"
    default = 2
}

variable "alarm_down_metric_name" {
    type = string 
    description = "aws alarm down metric name"  
    default = "CPUUtilization"  
}

variable "alarm_down_namespace" {
    type = string 
    description = "aws alarm down namespace"
    default = "AWS/EC2"
}

variable "alarm_down_period" {
    type = number 
    description = "aws alarm down period"
    default = 120
}

variable "alarm_down_statistic" {
    type = string 
    description = "aws alarm down statistics"
    default = "Average"
}

variable "alarm_down_threshold" {
    type = number 
    description = "aws alarm down threshold"
    default = 30
}
