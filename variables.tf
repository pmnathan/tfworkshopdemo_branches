variable "environment" {
  description = "This environment for this stack"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-east-2"
}

variable "instance_type" {
  description = "Specifies the AWS instance type."
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Specifies the AWS instance count."
  default     = 1
}
