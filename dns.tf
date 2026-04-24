# DNS Records for autolife.ai

resource "cloudflare_record" "rust-web-server" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "rust-web-server"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "mainpage" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "autolife-robotics.me"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "mngt" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "mngt"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "netbird" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "netbird"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "rust_server" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "rust-server"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "vr_sg" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "vr-sg"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "api" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "api"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "odoo" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "odoo"
  content = var.oracle_arm_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}
resource "cloudflare_record" "casdoor" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "casdoor"
  content = var.oracle_amd_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}


resource "cloudflare_record" "casibase" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "casibase"
  content = var.oracle_amd_001_ip  # oracle-arm-001
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "Hashtopolis" {

  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "hashtopolis"
  content = var.oracle_arm_002_ip
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "api_arm_002" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "api"
  content = var.oracle_arm_002_ip
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "auth_arm_002" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "auth"
  content = var.oracle_arm_002_ip
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

# DNS-only record for direct PostgreSQL access (port 5432). Cloudflare's
# proxy only tunnels HTTP/HTTPS on Free/Pro, so `quant` users connect here
# rather than the proxied `api` subdomain.
resource "cloudflare_record" "db_arm_002" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "db"
  content = var.oracle_arm_002_ip
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}

# Supabase Realtime (WebSockets) — proxied through Cloudflare, which supports
# WS on Free. Long-lived connections; origin nginx bumps proxy_read_timeout.
resource "cloudflare_record" "realtime_arm_002" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "realtime"
  content = var.oracle_arm_002_ip
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

# Wildcard for per-tenant subdomain routing (realtime's Host-based tenant
# dispatch: <external_id>.realtime.panda.qzz.io). Not available on Cloudflare
# Free, so this record stays DNS-only.
resource "cloudflare_record" "realtime_wildcard_arm_002" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "*.realtime"
  content = var.oracle_arm_002_ip
  type    = "A"
  ttl     = 1
  proxied = false

  lifecycle {
    create_before_destroy = true
  }
}


resource "cloudflare_record" "sub2api" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "sub2api"
  content = var.oracle_amd_002_ip
  type    = "A"
  ttl     = 1
  proxied = true

  lifecycle {
    create_before_destroy = true
  }
}

# Resend email setup for panda.qzz.io
resource "cloudflare_record" "panda_resend_dkim" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "resend._domainkey"
  content = "p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDKD5wgZJUU75tlqctIv+Am5nYMt1L+FiXuxa9Htb+OlzN6O8r6hv6be56V8uu4aqBm66/2PBvYxN6tic/QK4AgGKxRcSTv5DhIlxcc0sFfU3+dXHAywPIedt4ziVOx6NfKUf4PDPhlgHzRdJwmfAqlTG8CsMbOCo3YU6ueFxFxpQIDAQAB"
  type    = "TXT"
  ttl     = 1

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "panda_resend_mx" {
  zone_id  = cloudflare_zone.panda_qzz_io.id
  name     = "send"
  content  = "feedback-smtp.ap-northeast-1.amazonses.com"
  type     = "MX"
  priority = 10
  ttl      = 1

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "panda_resend_spf" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "send"
  content = "v=spf1 include:amazonses.com ~all"
  type    = "TXT"
  ttl     = 1

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "panda_dmarc" {
  zone_id = cloudflare_zone.panda_qzz_io.id
  name    = "_dmarc"
  content = "v=DMARC1; p=none;"
  type    = "TXT"
  ttl     = 1

  lifecycle {
    create_before_destroy = true
  }
}

# Lark/Feishu mail setup for alias.autolife.ai
resource "cloudflare_record" "alias_lark_verification" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "alias"
  content = "verification-code-site-App_lark=ZKksFWSiBzGrRTliptvK"
  type    = "TXT"
  ttl     = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "alias_lark_spf" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "alias"
  content = "v=spf1 +include:spf.onlarksuite.com -all"
  type    = "TXT"
  ttl     = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "alias_lark_mx1" {
  zone_id  = cloudflare_zone.autolife_ai.id
  name     = "alias"
  content  = "mx1.larksuite.com"
  type     = "MX"
  priority = 1
  ttl      = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "alias_lark_mx2" {
  zone_id  = cloudflare_zone.autolife_ai.id
  name     = "alias"
  content  = "mx2.larksuite.com"
  type     = "MX"
  priority = 5
  ttl      = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "alias_lark_mx3" {
  zone_id  = cloudflare_zone.autolife_ai.id
  name     = "alias"
  content  = "mx3.larksuite.com"
  type     = "MX"
  priority = 10
  ttl      = 600

  lifecycle {
    create_before_destroy = true
  }
}

# Feishu mail setup for autolife.ai (apex)
resource "cloudflare_record" "autolife_feishu_verification" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "@"
  content = "verification-code-site-App_feishu=rzDaOnDkZK4HUymRAE32"
  type    = "TXT"
  ttl     = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "autolife_feishu_spf" {
  zone_id = cloudflare_zone.autolife_ai.id
  name    = "@"
  content = "v=spf1 +include:_netblocks.m.feishu.cn -all"
  type    = "TXT"
  ttl     = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "autolife_feishu_mx1" {
  zone_id  = cloudflare_zone.autolife_ai.id
  name     = "@"
  content  = "mx1.feishu.cn"
  type     = "MX"
  priority = 1
  ttl      = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "autolife_feishu_mx2" {
  zone_id  = cloudflare_zone.autolife_ai.id
  name     = "@"
  content  = "mx2.feishu.cn"
  type     = "MX"
  priority = 5
  ttl      = 600

  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_record" "autolife_feishu_mx3" {
  zone_id  = cloudflare_zone.autolife_ai.id
  name     = "@"
  content  = "mx3.feishu.cn"
  type     = "MX"
  priority = 10
  ttl      = 600

  lifecycle {
    create_before_destroy = true
  }
}

