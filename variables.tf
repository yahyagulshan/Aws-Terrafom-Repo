variable "aws_region" {
}

variable "aws_profile" { 
}

variable "create_distribution" {
    description = "Controls if CloudFront distribution should be created"
  type        = bool
  default     = true
}

variable "comment" {
    description = "Any comments you want to include about the distribution."
  type        = string
  default     = null
}

variable "default_root_object" {
    description = "The object that you want CloudFront to return (for example, index.html) when an end user requests the root URL."
  type        = string
  default     = null
}

variable "enabled" {
    description = "Whether the distribution is enabled to accept end user requests for content."
  type        = bool
  default     = true
}

variable "http_version" {
    description = "The maximum HTTP version to support on the distribution. Allowed values are http1.1 and http2. The default is http2."
  type        = string
  default     = "http2"
}

variable "is_ipv6_enabled" {
    description = "Whether the IPv6 is enabled for the distribution."
  type        = bool
  default     = null
}

variable "price_class" {
    description = "The price class for this distribution. One of PriceClass_All, PriceClass_200, PriceClass_100"
  type        = string
  default     = null
}

variable "retain_on_delete" {
    description = "Disables the distribution instead of deleting it when destroying the resource through Terraform. If this is set, the distribution needs to be deleted manually afterwards."
  type        = bool
  default     = false
}

variable "wait_for_deployment" {
    description = "If enabled, the resource will wait for the distribution status to change from InProgress to Deployed. Setting this tofalse will skip the process."
  type        = bool
  default     = true
}

variable "web_acl_id" {
    description = "If you're using AWS WAF to filter CloudFront requests, the Id of the AWS WAF web ACL that is associated with the distribution. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have waf:GetWebACL permissions assigned. If using WAFv2, provide the ARN of the web ACL."
  type        = string
  default     = null
}

variable "tags" {
    description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "logging_config" {
    description = "The logging configuration that controls how logs are written to your distribution (maximum one)."
  type        = any
  default     = {}
}

variable "aliases" {
  description = "Extra CNAMEs (alternate domain names), if any, for this distribution."
  type        = list(string)
  default     = null
}