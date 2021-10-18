resource "null_resource" "null_resource" {
  provisioner "local-exec" {
    command = "echo hello from null module resource"
  }
}