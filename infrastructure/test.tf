resource "null_resource" "hello" {
  # this trigger forces recreation if you change the message
  triggers = {
    message = "Hello from Terraform Cloud at ${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo \"${self.triggers.message}\""
  }
}

output "hello_message_trigger" {
  value = null_resource.hello.triggers.message
}

