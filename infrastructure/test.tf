resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo Hello from Terraform Cloud!"
  }
}
