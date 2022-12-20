# load balancer configuration
resource "aws_elb" "app_elb" {
  name = "${aws_launch_configuration.app.name}-elb"
  security_groups = [aws_security_group.appsg1.id]
  subnets = [ aws_subnet.appsubnet.id, aws_subnet.appsubnet1.id ]
  cross_zone_load_balancing = var.app_elb_cross_zone_load_balancing

  health_check {
    healthy_threshold = var.app_elb_health_check_healthy_threshold
    unhealthy_threshold = var.app_elb_health_check_unhealthy_threshold
    timeout = var.app_elb_health_check_timeout
    interval = var.app_elb_health_check_interval
    target = var.app_elb_health_check_target
  }

  listener {
    lb_port = var.app_elb_listener_lb_port
    lb_protocol = var.app_elb_listener_lb_protocol
    instance_port = var.app_elb_listener_instance_port
    instance_protocol = var.app_elb_listener_instance_protocol
  }
}
