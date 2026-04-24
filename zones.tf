resource "cloudflare_zone" "autolife_ai" {
  account = {
    id = var.cloudflare_account_id
  }
  name = "autolife.ai"
}

resource "cloudflare_zone" "autolife_dpdns_org" {
  account = {
    id = var.cloudflare_account_id
  }
  name = "autolife.dpdns.org"
}

resource "cloudflare_zone" "xiongchenyu_dpdns_org" {
  account = {
    id = var.cloudflare_account_id
  }
  name = "xiongchenyu.dpdns.org"
}

resource "cloudflare_zone" "lovai_eu_org" {
  account = {
    id = var.cloudflare_account_id
  }
  name = "lovai.eu.org"
}

resource "cloudflare_zone" "panda_qzz_io" {
  account = {
    id = var.cloudflare_account_id
  }
  name = "panda.qzz.io"
}
