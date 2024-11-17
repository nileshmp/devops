# variable myfilename { 
#  default = "consumer_default_filename.txt" 
# } 
# locals { 
#   myfilename = "locals_filename.txt" 
# } 
# module "hello" { 
#  source = "../variable_module" 
# #  filename = var.myfilename 
#   filename = local.myfilename
# }

variable myfilename { 
 default = "consumer_default_filename.txt" 
} 
module "hello" { 
  source = "../variable_module" 
  filename = var.myfilename 
  content = "My content is the module path: ${path.module}"  
}