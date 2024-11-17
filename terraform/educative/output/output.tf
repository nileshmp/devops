data local_file "data_file" {
  filename = "${path.module}/aFile.txt"
}

output "data_file_content" {
  value = "${data.local_file.data_file.content}"
}
