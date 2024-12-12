##########################################################################
############# VPC Variables
##########################################################################

variable "vpc_cidr" {
  type = string
}

variable "env" {
  type = string
}

variable "provisioner" {
  type = string
}

##########################################################################
############# Subnets Variables
##########################################################################

variable "public_subnets" {
  type = map(object({
    cidr_block = string
    azs = string
    tags = map(string)
  }))
}

variable "map_public_ip_on_launch" {
  type = bool
  default = true
}

variable "private_subnets" {
  type = map(object({
    cidr_block = string
    azs = string
    tags = map(string)
  }))
}

variable "public_subnet_name" {
  type = string
}

##########################################################################
############# Public Security Groups Ingress and Egress rules variable
##########################################################################


variable "public_sg_ingress" {
  type = map(object({
    from_port = number
    to_port = number
    ip_protocol = string
    cidr_ipv4 = string
    description = string
  }))
}

variable "public_sg_egress" {
  type = map(object({
    # from_port = number
    # to_port = number
    ip_protocol = string
    cidr_ipv4 = string
    description = string
  }))
}

##########################################################################
############# Private Security Groups Ingress and Egress rules variable
##########################################################################

variable "private_sg_ingress" {
  type = map(object({
    referenced_security_group_id = string   
    from_port = number
    to_port = number
    ip_protocol = string
    description = string
  }))
}

variable "private_sg_egress" {
  type = map(object({
    # from_port = number
    # to_port = number
    ip_protocol = string
    cidr_ipv4 = string
    description = string
  }))
}

##########################################################################
############# Bastion Security Groups Ingress and Egress rules variable
##########################################################################

variable "bastion_sg_ingress" {
  type = map(object({
    from_port = number
    to_port = number
    ip_protocol = string
    cidr_ipv4 = string
    description = string
  }))
}

variable "bastion_sg_egress" {
  type = map(object({
    # from_port = number
    # to_port = number
    ip_protocol = string
    cidr_ipv4 = string
    description = string
  }))

#   type = map(object({
#     referenced_security_group_id = string   
#     from_port = number
#     to_port = number
#     ip_protocol = string
#     description = string
#   }))
}

##########################################################################
############# Route Table variable
##########################################################################

variable "all_ipv4_cidr" {
  type = string
}

##########################################################################
############# Autoscaling Group and Launch Template Variables
##########################################################################

variable "image_id" {
  type = string
}

variable "instance_initiated_shutdown_behavior" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_pairs_name" {
  type = string
}

# variable "iam_instance_profile" {
#   type = string
# }

variable "resource_type" {
  type = string
}

variable "user_data" {
  type = string
}

variable "desired_capacity" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}
variable "health_check_grace_period" {
  type = number
}
variable "health_check_type" {
  type = string
}

##########################################################################
############# Target Group and Loab Balancer variable
##########################################################################

variable "lb_proto_http" {
  type    = string
}

variable "lb_proto_https" {
  type    = string
}

variable "lb_port_http" {
  type    = string
}

variable "lb_port_https" {
  type    = string
}

variable "lb_ssl_policy" {
  type    = string
}

variable "load_balancer_type" {
  type = string
}

##########################################################################
############# DNS record variables
##########################################################################

variable "dns_aliases" {
  type = map(string)
}

variable "zone_id" {
  type = string
}

variable "certificate_arn" {
  type = string
}