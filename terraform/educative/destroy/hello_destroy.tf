resource local_file hello_destroy_file {
  sensitive_content = "Hello Terraform Destroy!"
  filename             = "${path.module}/hello_destroy.txt"
  file_permission      = 0777
  directory_permission = 0777
}
