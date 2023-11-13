terraform {
  backend "local" {

		path = "./state/terraform.tfstate"
	}
}

########## state file on S3 ##################
# terraform {
#   backend "s3" {
#     encrypt = true
#     key     = "terraform.tfstate"
#   }
# }

# terraform {
#   backend "local" {}
# }