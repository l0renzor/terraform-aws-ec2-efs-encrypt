# provider "aws" {
#   region = "${var.region}"
# }

# module "efs" {
#   source     = "../"
#   name       = "${var.name}"

#   region         = "${var.region}"
#   availability_zones = ["${var.availability_zones}"]
#   security_groups    = ["${var.security_groups}"]
#   subnets            = ["${var.subnets}"]
#   vpc_id             = "${var.vpc_id}"

#   throughput_mode                 = "${var.throughput_mode}"
#   provisioned_throughput_in_mibps = "${var.provisioned_throughput_in_mibps}"
# }