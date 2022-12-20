output "elb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_elb.app_elb.dns_name
}