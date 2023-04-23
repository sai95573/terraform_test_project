data "aws_route53_zone" "hosted_zone" {
  name = var.gitlab_domain_name
}

resource "aws_route53_record" "gitlab" {
  count = var.gitlab_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.gitlab_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.gitlab_server.*.public_ip
}