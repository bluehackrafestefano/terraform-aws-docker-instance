variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
}

variable "num_of_instance" {
  type    = number
  default = 1
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
