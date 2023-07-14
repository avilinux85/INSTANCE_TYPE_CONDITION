variable "instancetype" {
  type        = string
  description = "Instancetype to be defined as t2.micro or t2.nano"

  validation {
    condition     = can(regex("t2.micro|t2.nano", var.instancetype))
    error_message = "Please Check the linstance type It should either be t2.micro or t2.nano"
  }
}