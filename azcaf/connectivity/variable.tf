variable "subscription_id_connectivity" {
  description = "The connectivity subscription"
  default = "4b366cd2-b9cc-46ef-8ec5-ede445683eec"
}

variable "root_id" {
  description = "The name appended to landing zones"
  default = "teliacompany"
}

variable "enable_ddos_protection" {
  description = "ddos protection"
  default = false
}

variable "primary_location" {
  description = "primary hub"
  default = "westeurope"
}

variable "secondary_location" {
  description = "secondary hub"
  default = "northeurope"
}