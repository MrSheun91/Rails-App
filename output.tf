output "elb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = module.ASG.elb_dns_name
}