variable "subscription_id_management" {
  description = "The management subscription"
  default = "a3831a55-7079-4e09-be53-26622be45a2d"
}

variable "root_id" {
  default = "teliacompany"
}

variable "log_retention_in_days" {
  type    = number
  default = "30"
}

variable "root_name" {
  default = "Telia Company"
}

variable "primary_location" {
  default = "westeurope"
}