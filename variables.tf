variable "instance_type" {
  type = map(string)
  default = {
    dev  = "t3a.medium"
    prod = "t3a.2xlarge"
  }
  description = "Adjust the instance type with workspace needs"
}

variable "key_name" {
  type = string
}

variable "tag" {
  type    = string
  default = "Ubuntu-Instance"
}

variable "server-name" {
  type    = string
  default = "ubuntu"
}

variable "instance-ports" {
  type        = list(number)
  description = "ubuntu-instance-sec-gr-inbound-rules"
  default     = [22, 80, 443]
}
