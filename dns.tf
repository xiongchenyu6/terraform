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
  proxied = false

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
  proxied = false

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
  proxied = false

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
  proxied = false

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
  proxied = false

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
