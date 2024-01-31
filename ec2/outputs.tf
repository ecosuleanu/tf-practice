
output "ec2_id" {
    value = "${element(aws_instance.ec2.*.id, 0)}"
}

    output "ec2_public_ip" {
        value = "${element(aws_instance.ec2.*.public_ip, 0)}"
}






