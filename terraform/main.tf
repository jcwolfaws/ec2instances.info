provider "aws" {
  region = var.aws_region
  default_tags {
    tags = var.tags
  }
}

# Required for ACM certificate in us-east-1
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
} 