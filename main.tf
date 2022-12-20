module "ASG" {
  source = "./modules/main"

  region = var.region

  name = var.name
  image_id = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  user_data = var.user_data

  asg_min_size = var.asg_min_size
  asg_desired_capacity = var.asg_desired_capacity
  asg_max_size = var.asg_max_size
  enabled_metrics = var.enabled_metrics
  metrics_granularity = var.metrics_granularity

  vpc_cidr = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  vpc-tags = var.vpc-tags

  app_elb_cross_zone_load_balancing = var.app_elb_cross_zone_load_balancing
  app_elb_health_check_healthy_threshold = var.app_elb_health_check_healthy_threshold
  app_elb_health_check_unhealthy_threshold = var.app_elb_health_check_unhealthy_threshold
  app_elb_health_check_timeout = var.app_elb_health_check_timeout
  app_elb_health_check_interval = var.app_elb_health_check_interval
  app_elb_health_check_target = var.app_elb_health_check_target
  app_elb_listener_lb_port = var.app_elb_listener_lb_port
  app_elb_listener_lb_protocol = var.app_elb_listener_lb_protocol
  app_elb_listener_instance_port = var.app_elb_listener_instance_port
  app_elb_listener_instance_protocol = var.app_elb_listener_instance_protocol

  subnet_cidr = var.subnet_cidr
  subnet_availability_zone = var.subnet_availability_zone
  subnet1_cidr = var.subnet1_cidr
  subnet1_availability_zone = var.subnet1_availability_zone

  route_cidr_block =  var.route_cidr_block
  route_tags = var.route_tags

  policy_up_scaling_adjustment = var.policy_up_scaling_adjustment
  policy_up_ajustment_type = var.policy_up_ajustment_type
  policy_up_cooldown = var.policy_up_cooldown

  alarm_up_comparison_operator = var.alarm_up_comparison_operator
  alarm_up_evaluation_periods = var.alarm_up_evaluation_periods
  alarm_up_metric_name = var.alarm_up_metric_name
  alarm_up_namespace = var.alarm_up_namespace
  alarm_up_period = var.alarm_up_period
  alarm_up_statistic = var.alarm_up_statistic
  alarm_up_threshold = var.alarm_up_threshold

  policy_down_scaling_adjustment = var.policy_down_scaling_adjustment
  policy_down_ajustment_type = var.policy_down_ajustment_type
  policy_down_cooldown = var.policy_down_cooldown

  alarm_down_comparison_operator = var.alarm_down_comparison_operator
  alarm_down_evaluation_periods = var.alarm_down_evaluation_periods
  alarm_down_metric_name = var.alarm_down_metric_name
  alarm_down_namespace = var.alarm_down_namespace
  alarm_down_period = var.alarm_down_period
  alarm_down_statistic = var.alarm_down_statistic
  alarm_down_threshold = var.alarm_down_threshold
  
}



