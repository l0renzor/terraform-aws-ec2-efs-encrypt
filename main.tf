# Define composite variables for resources
locals {
  dns_name = "${join("", aws_efs_file_system.default.*.id)}.efs.${var.region}.amazonaws.com"
}

resource "aws_efs_file_system" "default" {
  tags                            = "${var.tags}"
  encrypted                       = "${var.encrypted}"
  performance_mode                = "${var.performance_mode}"
  provisioned_throughput_in_mibps = "${var.provisioned_throughput_in_mibps}"
  throughput_mode                 = "${var.throughput_mode}"
  tags                            = "${var.tags}"
}

resource "aws_efs_mount_target" "default" {
  count           = "${length(var.availability_zones) > 0 ? length(var.availability_zones) : 0}"
  file_system_id  = "${join("", aws_efs_file_system.default.*.id)}"
  ip_address      = "${var.mount_target_ip_address}"
  subnet_id       = "${element(var.subnets, count.index)}"
  security_groups = ["${var.security_groups}"]
}

# resource "aws_security_group" "default" {
#   name        = "${var.name}"
#   description = "EFS"
#   vpc_id      = "${var.vpc_id}"

#   lifecycle {
#     create_before_destroy = true
#   }

#   ingress {
#     from_port       = "2049"                     # NFS
#     to_port         = "2049"
#     protocol        = "tcp"
#     security_groups = ["${var.security_groups}"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = "${var.tags}"
# }