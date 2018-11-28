resource "null_resource" "istio_init" {
  provisioner "local-exec" {
    command = "supergloo init"
  }
}

resource "null_resource" "istio_install" {
  provisioner "local-exec" {
    command = "supergloo install -m istio -n istio-system -s"
  }

  depends_on = ["null_resource.istio_init"]
}
