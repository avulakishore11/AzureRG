

variable "address_space" {
  description = "address_space"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "subnet_address_prefixes"
  type        = list(string)
} 


variable "location" {
    default = "location of vnet"
}

variable "subscription_id" {
    description = "subscription of my azure account"
  
}
variable "tenant_id" {
  description = "tenent id of my azure"
}