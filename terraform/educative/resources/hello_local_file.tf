resource local_sensitive_file "hello_local_file" {
    content = "Hello Terraform Local!"
  filename             = "${path.module}/hello_local_file.txt"
  file_permission      = 0777
  directory_permission = 0777
}
