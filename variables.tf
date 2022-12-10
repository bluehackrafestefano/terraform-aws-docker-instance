variable "instance_type" {
  type = map(string)
  default = {
    default = "t2.micro"
    dev     = "t3a.medium"
    prod    = "t3a.2xlarge"
  }
  description = "Adjust the instance type with workspace needs"
}

variable "key_name" {
  type        = string
  description = "Write key name without .pem"
}

variable "tag" {
  type        = string
  default     = "Ubuntu-Instance"
  description = "A tag to incicate instance os"
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

variable "network_interface_id" {
  type = string
}
