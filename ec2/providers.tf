# provider configuration
provider "aws" {
  profile = "default"
  region  = local.region
  default_tags {
    tags = local.general_tags
  }
}