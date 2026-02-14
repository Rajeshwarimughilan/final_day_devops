variable "aws_region" {
  type    = string
  default = "eu-north-1c"
}
variable "instance_type" {
  type    = string
  default = "t3.small"
}
variable "ami_id" {
  type = string

  validation {
    condition     = length(trimspace(var.ami_id)) > 0
    error_message = "ami-0b6c6ebed2801a5cb"
  }
}
variable "existing_key_pair_name" {
  type    = string
  default = "finalkey"
}
variable "allowed_ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
