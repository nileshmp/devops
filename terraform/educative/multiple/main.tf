variable region {
    type = string
    default = "ap-south-1"
}

provider aws {
    region = var.region
}

resource aws_vpc aws_vpc_count {
    count = 3
    cidr_block =  format("172.%d.0.0/16", 16 + count.index)
}