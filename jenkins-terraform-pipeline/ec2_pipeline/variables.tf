variable "ami_id" {
  type    = string
  default = "ami-0e6329e222e662a52"
}


variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "associate_public_ip" {
  type    = bool
  default = true
}
variable "az" {
  type    = string
  default = "ap-south-1a"
}
variable "disable_api_termination" {
  type    = bool
  default = false
}
variable "instance_profile" {
  type    = string
  default = "ec2"
}
variable "key" {
  type    = string
  default = "mumbai-key"
}

variable "volume_size" {
  type    = number
  default = 10
}
variable "application" {
  type    = string
  default = "tcw"
}
variable "organization" {
  type    = string
  default = "aws_demo"
}
