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
}


variable "user_data" {
  type = string
  description = "name of user data file"
}

variable "asg_min_size" { 
  type = number 
  description = "auto scaling group minimum size"
}

variable "asg_max_size" { 
  type = number
  description = "auto scaling group maximum size" 
}

variable "asg_desired_capacity" { 
  type = number 
  description = "auto scaling group desired capacity"
}

variable "enabled_metrics" { 
  type = list(string)
  description = "autoscaling enabled metrics"
}

variable "metrics_granularity" { 
  type = string
  description = "auto scaling metrics granularity" 
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC."
}

variable "instance_tenancy" {
  type = string
  description = "The instance tenancy for the VPC."
}

variable "vpc-tags" {
  type = map(string)
  description = "The tags for the VPC."
}


# variable "app_elb_name" {
#   type = string
# }

variable "app_elb_cross_zone_load_balancing" {
  type = bool
}

variable "app_elb_health_check_healthy_threshold" {
  type = number
}

variable "app_elb_health_check_unhealthy_threshold" {
  type = number
}

variable "app_elb_health_check_timeout" {
  type = number
}

variable "app_elb_health_check_interval" {
  type = number
}

variable "app_elb_health_check_target" {
  type = string
}

variable "app_elb_listener_lb_port" {
  type = number
}

variable "app_elb_listener_lb_protocol" {
  type = string
}

variable "app_elb_listener_instance_port" {
  type = number
}

variable "app_elb_listener_instance_protocol" {
  type = string
}


variable "subnet_cidr" {
  description = "CIDR block for the first subnet."
  type        = string
}

variable "subnet_availability_zone" {
  description = "Availability zone for the first subnet."
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for the second subnet."
  type        = string
}

variable "subnet1_availability_zone" {
  description = "Availability zone for the second subnet."
  type        = string
}

variable "route_cidr_block" {
  type = string
  description = "cidr block of the route table"
}

variable "route_tags" {
  type = map(string)
  description = "A map of tags to assign to the route table"
}

variable "policy_up_scaling_adjustment" {
    type = number
    description = "aws policy up scaling adjustment" 
}

variable "policy_up_ajustment_type" { 
    type = string
    description = "aws policy up adjustment type"
}

variable "policy_up_cooldown" { 
    type = number
    description = "aws policy up cooldown"
}

# Defining alarm up configurations
variable "alarm_up_comparison_operator" {
    type = string
    description = "aws alarm up comparison operator"
}

variable "alarm_up_evaluation_periods" {
    type = string 
    description = "aws alarm up evalaution periods"    
}

variable "alarm_up_metric_name" {
    type = string
    description = "aws alarm up metric name"
}

variable "alarm_up_namespace" {
    type = string
    description = "aws alarm up namespace"
}

variable "alarm_up_period" {
    type = string 
    description = "aws alarm up period"
}

variable "alarm_up_statistic" {
    type = string
    description = "aws alarm up statistics"
}

variable "alarm_up_threshold" {
    type = string 
    description = "aws alarm up threshold"
}

# Defining policy down configurations
variable "policy_down_scaling_adjustment" { 
    type = number 
    description = "aws policy down scaling adjustment"
}

variable "policy_down_ajustment_type" {
    type = string 
    description = "aws policy down adjustment"
}

variable "policy_down_cooldown" {
    type = number 
    description = "aws policy down cooldown"
}

# Defining alarm down configurations
variable "alarm_down_comparison_operator" {
    type = string 
    description = "aws alarm down comparison operator"
}

variable "alarm_down_evaluation_periods" {
    type = string 
    description = "aws alarm down evaluation periods"
}

variable "alarm_down_metric_name" {
    type = string 
    description = "aws alarm down metric name"    
}

variable "alarm_down_namespace" {
    type = string 
    description = "aws alarm down namespace"
}

variable "alarm_down_period" {
    type = string 
    description = "aws alarm down period"
}

variable "alarm_down_statistic" {
    type = string 
    description = "aws alarm down statistics"
}

variable "alarm_down_threshold" {
    type = string 
    description = "aws alarm down threshold"
}
