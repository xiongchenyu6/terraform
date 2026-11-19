resource "cloudflare_email_routing_dns" "autonto" {
  zone_id = cloudflare_zone.autonto_dpdns_org.id
}

resource "cloudflare_email_routing_address" "autonto" {
  account_id = var.cloudflare_account_id
  email      = "xiongchenyu6@gmail.com"
}

resource "cloudflare_email_routing_rule" "autonto_xiongchenyu" {
  zone_id = cloudflare_email_routing_dns.autonto.zone_id
  name    = "Forward xiongchenyu mail"
  enabled = true

  actions = [{
    type  = "forward"
    value = [cloudflare_email_routing_address.autonto.email]
  }]

  matchers = [{
    type  = "literal"
    field = "to"
    value = "xiongchenyu@autonto.dpdns.org"
  }]
}
