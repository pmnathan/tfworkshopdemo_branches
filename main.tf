provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Name        = "${var.environment}-default-${var.region}"
      Environment = var.environment
      Owner       = "TFProviders"
      Project     = "Test"
      importid    = "FN20210001"
    }
  }
}

module "main" {
  source         = "./module/"
  environment    = var.environment
  instance_count = var.instance_count
  instance_type  = var.instance_type
  region         = var.region
}

