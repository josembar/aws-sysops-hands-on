# provider configuration
provider "aws" {
  profile = "default"
  region  = local.region
}