resource "cloudflare_zone" "autolife_ai" {
  account_id = var.cloudflare_account_id
  zone       = "autolife.ai"
}

resource "cloudflare_zone" "autolife_dpdns_org" {
  account_id = var.cloudflare_account_id
  zone       = "autolife.dpdns.org"
}

resource "cloudflare_zone" "xiongchenyu_dpdns_org" {
  account_id = var.cloudflare_account_id
  zone       = "xiongchenyu.dpdns.org"
}

resource "cloudflare_zone" "lovai_eu_org" {
  account_id = var.cloudflare_account_id
  zone       = "lovai.eu.org"
}

resource "cloudflare_zone" "panda_qzz_io" {
  account_id = var.cloudflare_account_id
  zone       = "panda.qzz.io"
}