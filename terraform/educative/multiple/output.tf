output cidr_block_splat {
    value = aws_vpc.aws_vpc_count[*].cidr_block
}

output cidr_block_splat_2 {
    value = [
        for vpc in aws_vpc.aws_vpc_count:
            vpc.cidr_block
    ]
}