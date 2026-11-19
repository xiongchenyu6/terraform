variable "autonto_email_forward_to" {
  description = "Verified destination inbox for xiongchenyu@autonto.dpdns.org."
  type        = string
  sensitive   = true
}

resource "cloudflare_email_routing_dns" "autonto" {
  zone_id = cloudflare_zone.autonto_dpdns_org.id
  name    = cloudflare_zone.autonto_dpdns_org.name
}

resource "cloudflare_email_routing_address" "autonto" {
  account_id = var.cloudflare_account_id
  email      = var.autonto_email_forward_to
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
