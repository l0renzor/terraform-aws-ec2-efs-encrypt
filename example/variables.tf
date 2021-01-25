# variable "region" {
#   type        = "string"
#   description = "AWS region"
#   default     = "us-east-1"
# }

# variable "name" {
#   type        = "string"
#   description = "EFS Name"
#   default     = "EFS"
# }

# variable "availability_zones" {
#   type        = "list"
#   description = "Availability Zone IDs"
# }

# variable "provisioned_throughput_in_mibps" {
#   description = "The throughput, measured in MiB/s, that you want to provision for the file system. Only applicable with `throughput_mode` set to `provisioned`"
#   default     = 0
# }

# variable "security_groups" {
#   type        = "list"
#   description = "Security Group IDs to allow access to the EFS"
# }

# variable "subnets" {
#   type        = "list"
#   description = "Subnet IDs"
# }

# variable "throughput_mode" {
#   type        = "string"
#   description = "Throughput mode for the file system. Defaults to `bursting`. Valid values: `bursting`, `provisioned`. When using `provisioned`, also set `provisioned_throughput_in_mibps`"
#   default     = "bursting"
# }

# variable "vpc_id" {
#   type        = "string"
#   description = "VPC ID"
# }

# variable "zone_id" {
#   type        = "string"
#   description = "Route53 DNS zone ID"
# }
