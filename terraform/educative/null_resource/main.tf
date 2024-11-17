resource null_resource null_resource_simple {
    
}

resource null_resource null_resource_simple_2 {
    provisioner local-exec {
        command = "echo ${path.module} ${max(5, 12, 9)}"
    }
}