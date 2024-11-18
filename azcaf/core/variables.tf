variable "root_id" {
  type    = string
  default = "teliacompany"
}

variable "root_name" {
  type    = string
  default = "telia company"
}

variable "primary_location" {
  default = "westeurope"
}

variable "subscription_id_identity" {
  type        = string
  description = "The identity Subscription"
  default     = "4e27d6cd-43fe-49d2-906f-dad8dcac336b"
}

