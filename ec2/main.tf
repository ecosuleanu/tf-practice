
resource aws_instance "ec2" {
    ami                     = var.ami
    instance_type           = var.instance_type
    key_name = var.ami_key_pair_name
    associate_public_ip_address = true
    #subnet_id = "${element(var.subnet_id, count.index)}"
    #subnet_id              = "${element(module.vpc.public_subnets[0])}"
    count = var.instance_count
     tags = {
        "Name" = "lena.${count.index + 1}"
    }
    }



