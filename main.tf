provider "aws" {
  version = "~> 1.7.1"
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  max_retries = 3
}


# ---------------------------------------------------------------------------------------------------------------------
# SETUP ACCOUNT SETTINGS
# ---------------------------------------------------------------------------------------------------------------------

module "account_settings" {
  source = "./account_settings"
}

# ---------------------------------------------------------------------------------------------------------------------
# SETUP IAM
# ---------------------------------------------------------------------------------------------------------------------

module "iam" {
  source = "./iam"
}
