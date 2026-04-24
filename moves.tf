# State migration for Cloudflare provider v4 -> v5 rename
# cloudflare_record was renamed to cloudflare_dns_record in v5.
# These blocks preserve state so existing records are not destroyed/recreated.

moved {
  from = cloudflare_record.rust-web-server
  to   = cloudflare_dns_record.rust-web-server
}

moved {
  from = cloudflare_record.mainpage
  to   = cloudflare_dns_record.mainpage
}

moved {
  from = cloudflare_record.mngt
  to   = cloudflare_dns_record.mngt
}

moved {
  from = cloudflare_record.netbird
  to   = cloudflare_dns_record.netbird
}

moved {
  from = cloudflare_record.rust_server
  to   = cloudflare_dns_record.rust_server
}

moved {
  from = cloudflare_record.vr_sg
  to   = cloudflare_dns_record.vr_sg
}

moved {
  from = cloudflare_record.api
  to   = cloudflare_dns_record.api
}

moved {
  from = cloudflare_record.odoo
  to   = cloudflare_dns_record.odoo
}

moved {
  from = cloudflare_record.casdoor
  to   = cloudflare_dns_record.casdoor
}

moved {
  from = cloudflare_record.casibase
  to   = cloudflare_dns_record.casibase
}

moved {
  from = cloudflare_record.Hashtopolis
  to   = cloudflare_dns_record.Hashtopolis
}

moved {
  from = cloudflare_record.api_arm_002
  to   = cloudflare_dns_record.api_arm_002
}

moved {
  from = cloudflare_record.auth_arm_002
  to   = cloudflare_dns_record.auth_arm_002
}

moved {
  from = cloudflare_record.db_arm_002
  to   = cloudflare_dns_record.db_arm_002
}

moved {
  from = cloudflare_record.realtime_arm_002
  to   = cloudflare_dns_record.realtime_arm_002
}

moved {
  from = cloudflare_record.realtime_wildcard_arm_002
  to   = cloudflare_dns_record.realtime_wildcard_arm_002
}

moved {
  from = cloudflare_record.sub2api
  to   = cloudflare_dns_record.sub2api
}

moved {
  from = cloudflare_record.panda_resend_dkim
  to   = cloudflare_dns_record.panda_resend_dkim
}

moved {
  from = cloudflare_record.panda_inbound_mx
  to   = cloudflare_dns_record.panda_inbound_mx
}

moved {
  from = cloudflare_record.panda_resend_mx
  to   = cloudflare_dns_record.panda_resend_mx
}

moved {
  from = cloudflare_record.panda_resend_spf
  to   = cloudflare_dns_record.panda_resend_spf
}

moved {
  from = cloudflare_record.panda_dmarc
  to   = cloudflare_dns_record.panda_dmarc
}

moved {
  from = cloudflare_record.alias_lark_verification
  to   = cloudflare_dns_record.alias_lark_verification
}

moved {
  from = cloudflare_record.alias_lark_spf
  to   = cloudflare_dns_record.alias_lark_spf
}

moved {
  from = cloudflare_record.alias_lark_mx1
  to   = cloudflare_dns_record.alias_lark_mx1
}

moved {
  from = cloudflare_record.alias_lark_mx2
  to   = cloudflare_dns_record.alias_lark_mx2
}

moved {
  from = cloudflare_record.alias_lark_mx3
  to   = cloudflare_dns_record.alias_lark_mx3
}

moved {
  from = cloudflare_record.autolife_feishu_verification
  to   = cloudflare_dns_record.autolife_feishu_verification
}

moved {
  from = cloudflare_record.autolife_feishu_spf
  to   = cloudflare_dns_record.autolife_feishu_spf
}

moved {
  from = cloudflare_record.autolife_feishu_mx1
  to   = cloudflare_dns_record.autolife_feishu_mx1
}

moved {
  from = cloudflare_record.autolife_feishu_mx2
  to   = cloudflare_dns_record.autolife_feishu_mx2
}

moved {
  from = cloudflare_record.autolife_feishu_mx3
  to   = cloudflare_dns_record.autolife_feishu_mx3
}
