variable cidr_block {
  type        = string
  default     = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "common_tags"{
    type = map
    default = {} # means it is optional
}
variable "vpc_tags"{
    type = map
    default = {}
}
variable "project_name"{
    type = string
}
variable "environment"{
    type = string
}
variable "igw_tags"{
    type = map
    default = {}
}