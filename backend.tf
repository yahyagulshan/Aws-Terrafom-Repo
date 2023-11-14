terraform {
  backend "local" {

		path = "./state/terraform.tfstate"
	}
}

## for S3 backend ##
# terraform {
#   backend "s3" {
#     encrypt = true
#     key     = "terraform.tfstate"
#   }
# }

# terraform {
#   backend "local" {}
# }
