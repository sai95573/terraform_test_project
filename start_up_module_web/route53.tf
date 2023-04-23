data "aws_route53_zone" "hosted_zone" {
  name = var.web_domain_name
}

resource "aws_route53_record" "web" {
  count = var.web_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.web_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.web_server.*.public_ip
}
