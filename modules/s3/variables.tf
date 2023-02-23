# Input variable definitions

variable "org_prefix" {
  description = "This is the name of the Organization or Project you are utilizing. It will act as a variable/namespace prefix. Please note it directly subtract from  the available character limit for for certain resources (ie: bucket_name)"
  type        = string
  default     = "xyz"
}

variable "bucket_name" {
  description = "This is the name of the bucket you want to create. It can be between 3 and 63 characters long, and contain: lower-case characters, numbers, periods,  and dashes. Please note the org_prefix length."
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
