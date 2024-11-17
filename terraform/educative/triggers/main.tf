variable trigger_file {
    type = string
    default = "afile.txt"
}

resource null_resource null_resource_trigger {

    triggers = {
        config_contents = filemd5(var.trigger_file)
    }

    provisioner local-exec {
        command = "cat ${var.trigger_file}"
    }
    
}