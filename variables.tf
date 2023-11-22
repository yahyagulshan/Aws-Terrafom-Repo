variable "aws_region" {
}

variable "aws_profile" { 
}

variable "region" {
  type        = string
  description = "AWS region"
  default = ""
}

variable "create_sns_topic" {
  description = "Flag to indicate whether an SNS topic should be created for notifications."
  type        = bool
  default     = false
}

# variable "s3_bucket_name" {

  
# }
