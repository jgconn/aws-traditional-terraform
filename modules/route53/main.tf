resource "aws_route53_record" "www" {
  zone_id = var.route_53_zone_id
  name    = var.route_53_domain_name
  type    = "A"

  alias {
    name                   = var.cdn_domain_name
    zone_id                = var.cdn_zone_id
    evaluate_target_health = false
  }
}