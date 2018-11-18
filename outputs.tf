output "NAT-IP" {
    value = "${aws_eip.nat.public_ip}"
}
output "VPC-ID" {
    value = "${aws_vpc.main.id}"
}
output "VPC-CIDR" {
    value = "${aws_vpc.main.cidr_block}"
}

output "EC2_Private-IP"{
    value = "${aws_instance.sentry-app.private_ip}"
}
output "EC2_Instance-ID"{
    value = "${aws_instance.sentry-app.id}"
}
output "ELB-URL" {
    value = "${aws_lb.sentry-lb.dns_name}"
}
output "Sentry-PublicIP"{
    value = "${aws_eip.sentry-public-ip.public_ip}"
}
