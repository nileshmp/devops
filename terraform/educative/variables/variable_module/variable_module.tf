# variable filename { 
#   default = "default_filename.txt" 
# } 
# resource "local_file" "hello_local_variable" { 
#   content = "Hello terraform local variable module!" 
#   filename = var.filename 
# }

variable filename{
 default = "path_module_filename.txt"
}
variable content{
 default = "Hello terraform local variable module!"
}
resource "local_file" "hello_local_variable" {
 filename = var.filename
 content = var.content
 }