resource "yandex_compute_instance" "jenkins-agent01" {
  name                      = "jenkins-agent01"
  zone                      = "ru-central1-b"
  hostname                  = "jenkins-agent01.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.os_destrib}"
      name        = "root-jenkins-agent01"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default.id}"
    nat        = true
    ip_address = "192.168.101.12"
  }

  metadata = {
    ssh-keys = "centos:${file("/opt/yandex_cloud/id_rsa.pub")}"
  }
}
