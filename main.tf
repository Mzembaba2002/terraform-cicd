provider "local" {}

resource "local_file" "example" {
  filename = "${path.module}/hello.txt"
  content  = "Bonjour depuis Terraform"
}
