variable "cdn_domain_name" {
  description = "Domain name of the CloudFront distribution"
  type = string
}

variable "cdn_zone_id" {
  description = "Zone ID of the CloudFront distribution"
  type = string
}

variable "route_53_zone_id" {
  description = "ID of the Route 53 zone"
  type = string
}

variable "route_53_domain_name" {
  description = "Name of the route 53 domain name"
  type = string
}