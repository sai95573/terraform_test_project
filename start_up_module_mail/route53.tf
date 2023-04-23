data "aws_route53_zone" "hosted_zone" {
  name = var.mail_domain_name
}

resource "aws_route53_record" "mail" {
  count = var.mail_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.mail_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.mail_server.*.public_ip
}
