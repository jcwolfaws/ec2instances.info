data "aws_route53_zone" "selected" {
  name = var.domain_name
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.static_assets.domain_name
    zone_id               = aws_cloudfront_distribution.static_assets.hosted_zone_id
    evaluate_target_health = false
  }
} 