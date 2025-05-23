variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "Domain name for the application"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Project     = "ec2instances.info"
    ManagedBy   = "terraform"
  }
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket for static assets"
  type        = string
  default     = "ec2instances-static"
}

variable "cloudfront_price_class" {
  description = "Price class for CloudFront distribution"
  type        = string
  default     = "PriceClass_100" # Use only North America and Europe edge locations
} 