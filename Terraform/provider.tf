
provider "digitalocean" {
  token = "dop_v1_d879f9ebdd275d0cc884d55d9335069f31a84f2d265cb3bf2af236f6d0ad84f1"
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
  backend "s3" {
    endpoint                    = "fra1.digitaloceanspaces.com"
    key                         = "terraform.tfstate"
    region                      = "us-west-1"
    access_key                  = "DO00V9C94A6YNKT3AU4Y"
    secret_key                  = "cnSWq2Kl2mHha50S2eVLa+80SGfd7vbuU4xvxI3c2Oc"
    bucket                      = "marktobistate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}