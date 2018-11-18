resource "aws_route53_zone" "main-dns" {
  name = "assesment.com"
}
resource "aws_route53_record" "sentry-cname" {
  zone_id = "${aws_route53_zone.main-dns.zone_id}"
  name    = "sentry"
  type    = "A"
  alias {
      name = "${aws_lb.sentry-lb.dns_name}"
      zone_id = "${aws_lb.sentry-lb.zone_id}"
      evaluate_target_health = "false"
  }
}
