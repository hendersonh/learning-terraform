#----------------------------------
provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 1.0.0, < 2.0.0"
}

variable "names" {
  description = "A list of names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}