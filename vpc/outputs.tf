output "vpc_id" {
    value = aws_vpc.tf_vpc.id
}

output "public_subnet_id" {
    value = "${element(aws_subnet.public_subnets.*.id, 0)}"
}