data "aws_route53_zone" "hosted_zone" {
  name = var.db_domain_name
}

resource "aws_route53_record" "db" {
  count = var.db_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.db_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.db_server.*.public_ip
}