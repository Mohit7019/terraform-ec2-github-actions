output "public_ips" {
  value = {
    for k, instance in aws_instance.web :
    k => try(instance.public_ip, null)
  }
}