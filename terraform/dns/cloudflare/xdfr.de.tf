resource "cloudflare_record" "xdfr_de" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "A"
  value   = "89.58.1.127"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_ipv6" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "AAAA"
  value   = "2a03:4000:5d:e41::1"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_mx" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "MX"
  value   = "mail.friendlymail.eu"
  priority = 10
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_dmarc" {
  zone_id = var.cloudflare_zone_id
  name    = "_dmarc.xdfr.de"
  type    = "TXT"
  value   = "v=DMARC1; p=reject;"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_dkim" {
  zone_id = var.cloudflare_zone_id
  name    = "mail._domainkey.xdfr.de"
  type    = "TXT"
  value   = "v=DKIM1; h=sha256; k=rsa; p=MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAzp7llDoF7dX5KAsRAbvY377bgcBLQSMDeim6zqrhY9Q/VWpn7vi5UAFak9pyuXHbed0zPK+jrmSR3YFYwqtAc3FaI2YVN3LG0d1LIkpz9tcvmu0xECs1jrNRcSTUhMZEPpVvtRbwyRS5thVoza7lkWncx+iXbbvfxQ3YXk1W+rx6kBx9fKbW3eGcbTklFPXyTkNRuD/Q39UsVp6GV8uGzIuHNRBsazWlsNEpxXCDxCqkHEuE6/hipoRq81Nb8b9JdB0BLQucY/i6V6b6mWJNPaKHe/NG+sCkQIlSJmeFEK6okHXuyfZxb6XFvfz0taqkITa1wFM6WTI6ds/BQuw+nLhvAb5r8U1lwPkmmt+Ev2IlYBGc02ryE/dTnTG5KwJDC8F+fFbrhWSX6FAM1JMOhUr/ODmGshfzGCW2ILNXPLOLLr4v/fojMPIsFHY5EjqAjpck3zz3ENjkkwTfUIu+2VVNQvdtrZTDmpFvxwD680CtskE2LIdPabxU3EnyhEdLA5OTTp+C94CLlIjF5m9aT55nqrCdx61e++uyPFVoHLfiv5OdGlWXkXzloj/+5DoqzdHuWW+h6JOVZOBk0/OnF+L19tGjtnPTH5xzwHO/CTD+gvqBnfUfYnnfCCr/KIq8z6EDk18425YBsJwE8dfrihLPp5aE+XluGpvqr0WmTqECAwEAAQ=="
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_mta_sts" {
  zone_id = var.cloudflare_zone_id
  name    = "_mta-sts.xdfr.de"
  type    = "TXT"
  value   = "v=STSv1; id=20220223201800"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_openpgpkey" {
  zone_id = var.cloudflare_zone_id
  name    = "openpgpkey.xdfr.de"
  type    = "TXT"
  value   = "empty"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_tlsrpt" {
  zone_id = var.cloudflare_zone_id
  name    = "_smtp._tls.xdfr.de"
  type    = "TXT"
  value   = "v=TLSRPTv1; rua=mailto:tls-reports@friendlymail.eu"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_spf" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "TXT"
  value   = "v=spf1 ip4:89.58.1.127 ip6:2a03:4000:5d:e41::1 -all"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_mailconf" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "TXT"
  value   = "mailconf=https://autoconfig.friendlymail.eu/mail/config-v1.1.xml"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_google_site_verification" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "TXT"
  value   = "google-site-verification=9jlwug9ClOh1WPs7Hq0I9VDDBukaTZSGcTwcoH7U348"
  ttl     = 1
}

resource "cloudflare_record" "xdfr_de_have_i_been_pwned_verification" {
  zone_id = var.cloudflare_zone_id
  name    = "xdfr.de"
  type    = "TXT"
  value   = "have-i-been-pwned-verification=17b987a1c304e5f39abfddd3fdd74355"
  ttl     = 1
}
