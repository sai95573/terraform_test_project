data "aws_route53_zone" "hosted_zone" {
  name = var.artifactory_domain_name
}

resource "aws_route53_record" "artifactory" {
  count = var.artifactory_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.artifactory_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.artifactory_server.*.public_ip
}