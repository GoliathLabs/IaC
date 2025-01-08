provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

module "cloudflare_xdfr_de" {
  source = "./terraform/dns/cloudflare/xdfr.de"
}

module "netcup" {
  source = "./terraform/dns/netcup"
}
